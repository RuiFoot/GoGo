package com.example.gogo.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import com.example.gogo.mypage.service.MyPageService;
import com.example.gogo.mypage.vo.MyPageVO;
import com.example.gogo.mypage.vo.ReViewVO;

import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class MyPageController {

    @Autowired
    private MyPageService mypageService;
    
    @GetMapping("/mypage")
    public String showMyPageForm() {
        System.out.println("마이 페이지 실행");
        return "mypage";
    }

    @PostMapping("/mypage")
    public ModelAndView showMyPage(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession();
        Integer memberNo = (Integer) session.getAttribute("member_no");
        System.out.println("가져온 번호는 : "+memberNo+" 입니다");

        if (memberNo != null) {
            // 세션에 사용자 번호가 존재할 경우
            List<MyPageVO> memberInfoList = mypageService.GetMemberInfo(memberNo);
            List<ReViewVO> reviewInfoList = mypageService.GetReviewInfo(memberNo);
            if (memberInfoList != null) {
                // 사용자 정보가 정상적으로 조회될 경우
            	int endIndex = Math.min(reviewInfoList.size(), 5); //5개보다 작으면 그사이즈로
            	List<ReViewVO> firstFiveReviews = reviewInfoList.subList(0, endIndex);
            	MyPageVO memberInfo = memberInfoList.get(0); // 리스트에서 첫 번째 항목 추출
            	System.out.println("맴버인포는 : " + memberInfo );
            	System.out.println("리뷰인포는 : " + reviewInfoList );
                modelAndView.addObject("memberInfo", memberInfo);
                modelAndView.addObject("reviewInfoList", firstFiveReviews);
                modelAndView.setViewName("mypage");
            } else {
                // 사용자 정보 조회 실패 시
                modelAndView.setViewName("error");
                // 다른 처리를 수행할 수도 있습니다.
            }
        } else {
            // 세션에 사용자 번호가 없을 경우
            modelAndView.setViewName("redirect:/login");
            // 로그인 페이지로 리다이렉트할 수 있습니다.
        }
        return modelAndView;
    }
    @PostMapping("/updateUserInfo")
    @ResponseBody
    public String updateUserInfo(@RequestBody MyPageVO userInfo) {
    	System.out.println(userInfo);
        // 받은 userInfo를 사용하여 DB에 업데이트 작업 수행
    	boolean updateSuccessful = mypageService.updateUserInfo(userInfo);
        
        // 업데이트 성공 여부에 따라 적절한 응답 반환
        if (updateSuccessful) {
            return "success";
        } else {
            return "error";
        }
    }    
}
