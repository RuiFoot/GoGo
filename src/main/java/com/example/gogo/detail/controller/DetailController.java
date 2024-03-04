package com.example.gogo.detail.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DetailController {
    @RequestMapping(value = "/detail")
    public String doDetail(Model model){
        System.out.println("상세페이지 실행");
        return "detail";
    }
}
