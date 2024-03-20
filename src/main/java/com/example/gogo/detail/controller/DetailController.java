package com.example.gogo.detail.controller;


import com.example.gogo.detail.service.DetailServiceImpl;
import com.example.gogo.detail.vo.FestivalReviewVO;
import com.example.gogo.detail.vo.ReviewdataVO;
import com.example.gogo.index.vo.FestivalListVO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Collections;

@Controller
public class DetailController {
    private final DetailServiceImpl detailServiceImpl;

    @Autowired
    public DetailController(DetailServiceImpl detailServiceImpl) {
        this.detailServiceImpl = detailServiceImpl;
    }

    @GetMapping(value = "/detail")
    public ModelAndView doDetail(@RequestParam("event_id") String eventId) {
        System.out.println("상세페이지 실행");
        System.out.println("행사 id = " + eventId);

        FestivalListVO festivalList = detailServiceImpl.getDetail(eventId);


        List<FestivalReviewVO> reviewList = detailServiceImpl.getReview(eventId);


        List<FestivalListVO> recommendList = detailServiceImpl.getRecommend(festivalList);

        List<FestivalListVO> shuffledList = recommendList;
        Collections.shuffle(shuffledList);
        int numToExtract = 10;
        List<FestivalListVO> randomExtractedList = shuffledList.subList(0, Math.min(numToExtract, shuffledList.size()));

        System.out.println(festivalList);

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        ModelAndView modelAndView = new ModelAndView("detail");

        modelAndView.addObject("startDay", dateFormat.format(festivalList.getStartDay()));
        modelAndView.addObject("endDay", dateFormat.format(festivalList.getEndDay()));
        modelAndView.addObject("festivalList", festivalList);
        modelAndView.addObject("recommendList", randomExtractedList);
        modelAndView.addObject("reviewList",reviewList);

        return modelAndView;
    }

    @PostMapping("/detail/insertReview")
    public String reviewAdd(ReviewdataVO reviewVO, RedirectAttributes redirectAttributes) {

        boolean isSuccess = detailServiceImpl.reviewAdd(reviewVO);
        if (isSuccess) {

            return "redirect:/detail?event_id=" + reviewVO.getEvent_no();
        } else {

            redirectAttributes.addFlashAttribute("error", true);
            return "redirect:/detail";
        }
    }

    @PostMapping("/addVisitedPage")
    public ResponseEntity<String> addVisitedPageToSession(@RequestBody FestivalListVO visitedPage, HttpServletRequest request) {
        try {
            // Get the current session
            HttpSession session = request.getSession();

            // Get the visitedPagesList from session
            List<FestivalListVO> visitedPagesList = (List<FestivalListVO>) session.getAttribute("visitedPagesList");

            // If the visitedPagesList doesn't exist in the session, create a new one
            if (visitedPagesList == null) {
                visitedPagesList = new ArrayList<>();
            }

            // Add the current visitedPage to the list
            visitedPagesList.add(visitedPage);
//            이구문 추가하면 최근 5개라는데 왜안됨 야발..
//            if (visitedPagesList.size() > 5) {
//                visitedPagesList = visitedPagesList.subList(visitedPagesList.size() - 5, visitedPagesList.size());
//            }

            // Update the visitedPagesList in session
            session.setAttribute("visitedPagesList", visitedPagesList);

            return new ResponseEntity<>("Visited page added to session successfully", HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>("Error occurred while adding visited page to session", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
