package com.example.gogo.detail.controller;

import com.example.gogo.detail.service.DetailService;
import com.example.gogo.detail.service.DetailServiceImpl;
import com.example.gogo.index.vo.FestivalListVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.List;

@Controller
public class DetailController {
    private final DetailServiceImpl detailServiceImpl;
    @Autowired
    public DetailController(DetailServiceImpl detailServiceImpl) {
        this.detailServiceImpl = detailServiceImpl;
    }


    @GetMapping(value = "/detail")
    public ModelAndView doDetail(@RequestParam("event_id") String eventId){
        System.out.println("상세페이지 실행");
        System.out.println("행사 id = " + eventId );

        FestivalListVO festivalList = detailServiceImpl.getDetail(eventId);

        System.out.println(festivalList.toString());

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        ModelAndView modelAndView = new ModelAndView("detail");

        modelAndView.addObject("startDay", dateFormat.format(festivalList.getStartDay()));
        modelAndView.addObject("endDay", dateFormat.format(festivalList.getEndDay()));
        modelAndView.addObject("festivalList",festivalList);
        return modelAndView;
    }

}
