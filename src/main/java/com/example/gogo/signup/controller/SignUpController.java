package com.example.gogo.signup.controller;

import com.example.gogo.signup.service.SignUpService;
import com.example.gogo.signup.vo.SignUpVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class SignUpController {

    private final SignUpService signUpService;

    @Autowired
    public SignUpController(SignUpService signUpService) {
        this.signUpService = signUpService;
    }
    @RequestMapping(value = "/signup")
    public String doSignup(){
        System.out.println("회원가입 페이지 실행");
        return "signup";
    }
    @PostMapping("/signup/addmember")
    public String signUp(SignUpVO signUpVO, RedirectAttributes redirectAttributes) {
        // 회원가입 서비스 호출
        boolean isSuccess = signUpService.signUp(signUpVO);
        if (isSuccess) {
            // 회원가입 성공 시 로그인 페이지로 이동
            return "redirect:/login";
        } else {
            // 회원가입 실패 시 에러 메시지 전달하고 회원가입 페이지로 다시 이동
            redirectAttributes.addFlashAttribute("error", true);
            return "redirect:/signup";
        }
    }

    @PostMapping("/signup/checkemail")
    @ResponseBody
    public int checkByEmail(@RequestParam String member_email) {
        return signUpService.checkByEmail(member_email);
    }
    @PostMapping("/signup/checkNickname")
    @ResponseBody
    public int checkNickname(@RequestParam String member_nickname) {
        // 닉네임 중복 확인을 위한 서비스 메서드 호출
        return signUpService.checkByNickname(member_nickname);
    }
}
