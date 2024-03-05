package com.example.gogo.index.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
    @RequestMapping(value = "/")
    public ModelAndView doHome(){
        System.out.println("실행 성공");
        ModelAndView modelAndView = new ModelAndView("index");
        modelAndView.addObject("message","Welcome!!");
        return modelAndView;
    }
}
