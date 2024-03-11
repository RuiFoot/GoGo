package com.example.gogo.index.controller;

import com.example.gogo.index.service.HomeServiceImpl;
import com.example.gogo.index.vo.AreaVO;
import com.example.gogo.index.vo.FormDataVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
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
        System.out.println("getArea 신호 수신");
        return homeServiceImpl.getAllArea(sido);
    }

    @GetMapping(value = "/getList", produces = "application/json")
    @ResponseBody
    public ResponseEntity<?> getList(@ModelAttribute FormDataVO formDataVo, @PageableDefault(size = 10)Pageable pageable) {
        // 받은 데이터를 처리하는 로직을 작성합니다.
        // 받은 데이터를 토대로 서비스 계층에서 비즈니스 로직을 수행하고,
        // 결과를 JSON 또는 다른 형식으로 반환할 수 있습니다.

        System.out.println(formDataVo.toString());

        return ResponseEntity.ok(homeServiceImpl.getList(formDataVo, pageable));

    }
}
