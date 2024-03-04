package com.example.gogo.signup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignUpController {
    @RequestMapping(value = "/signup")
    public String doSignup(){
        System.out.println("회원가입 페이지 실행");
        return "signup";
    }
}
