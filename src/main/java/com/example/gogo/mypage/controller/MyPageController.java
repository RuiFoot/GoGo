package com.example.gogo.mypage.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController {
    @RequestMapping(value = "/mypage")
    public String doMypage(Model model){
        System.out.println("마이페이지 실행");
        return "mypage";
    }
}
