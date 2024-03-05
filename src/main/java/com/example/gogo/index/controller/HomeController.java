package com.example.gogo.index.controller;

import com.example.gogo.index.service.HomeServiceImpl;
import com.example.gogo.index.vo.AreaVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@Controller
public class HomeController {

    private final HomeServiceImpl homeServiceImpl;
    @Autowired
    public HomeController(HomeServiceImpl homeServiceImpl) {
        this.homeServiceImpl = homeServiceImpl;
    }

    @RequestMapping (value = "/")
    public String doHome(){
        System.out.println("실행 성공");

        return "index";
    }

    @GetMapping(value = "/getArea", produces = "application/json")
    @ResponseBody
    public List<AreaVO> getAllArea(@RequestParam String sido) {
        System.out.println("DB접근시작");
        return homeServiceImpl.getAllArea(sido);
    }
}
