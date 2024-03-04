package com.example.gogo.index.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    @RequestMapping(value = "/")
    public String doHome(Model model){
        System.out.println("실행 성공");
        model.addAttribute("message","Welcome!!");
        return "index";
    }
}
