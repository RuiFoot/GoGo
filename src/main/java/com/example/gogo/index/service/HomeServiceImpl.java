package com.example.gogo.index.service;


import com.example.gogo.index.dao.HomeDAO;
import com.example.gogo.index.vo.AreaVO;
import com.example.gogo.index.vo.FestivalListVO;
import com.example.gogo.index.vo.FormDataVO;
import com.example.gogo.index.vo.Paging;
import lombok.RequiredArgsConstructor;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;


import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class HomeServiceImpl implements HomeService {

    private final HomeDAO homeDAO;

    @Override
    public List<AreaVO> getAllArea(String sido) {
        System.out.println("getAllArea 서비스 실행");
        return homeDAO.getAllArea(sido);
    }

    @Override
    public Page<FestivalListVO> getList(FormDataVO formDataVo, Pageable pageable) {

        System.out.println("getList 서비스 실행");

        Paging<?> requestList = Paging.builder().data(formDataVo).pageable(pageable).build();

        System.out.println(requestList.toString());

        List<FestivalListVO> festivalList = homeDAO.getList(requestList);
        System.out.println("List 접근 완료");
        for (FestivalListVO festivalListVO : festivalList) {
            System.out.println(festivalListVO.toString());
        }

        int total = homeDAO.getListCount(formDataVo);
        System.out.println("total : " + total);

        System.out.println(pageable.toString());

        return new PageImpl<>(festivalList, pageable, total);
    }
}
