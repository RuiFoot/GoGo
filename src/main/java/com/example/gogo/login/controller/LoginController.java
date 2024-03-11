package com.example.gogo.login.controller;


import com.example.gogo.login.service.LoginService;
import com.example.gogo.login.vo.LoginVO;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
public class LoginController {
    private final LoginService loginService;

    @Autowired
    public LoginController(LoginService loginService) {
        this.loginService = loginService;
    }

    @GetMapping("/login")
    public String showLoginForm() {
        System.out.println("로그인 페이지 실행");
        return "login";
    }

    @PostMapping("/login")
    public String doLogin(@RequestParam("member_email") String member_email,
                          @RequestParam("member_pw") String member_pw,
                          RedirectAttributes redirectAttributes,
                          HttpSession session) {

        List<LoginVO> result = loginService.getAllMember(member_email);

        if (result.isEmpty()) {
            System.out.println("로그인이 안됨");
            redirectAttributes.addFlashAttribute("error", true);
            return "redirect:/login";
        } else {
            System.out.println(result.toString());
            // 로그인 성공 시 세션에 사용자 정보 저장
            session.setAttribute("member_email", member_email);

            return "redirect:/";
        }
    }

}
