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
            String category = festivalListVO.getCategory();
            String path;
            if (category.contains("전시회")){
                path = "resources/img/list/fair.png";
            } else if (category.contains("영화") || category.contains("영상")) {
                path = "resources/img/list/movie.jpg";
            } else if (category.contains("뮤지컬") || category.contains("연극") || category.contains("공연")) {
                path = "resources/img/list/play.jpg";
            } else if (category.contains("경기")) {
                path = "resources/img/list/sport.jpg";
            } else if (category.contains("음악") || category.contains("가요")) {
                path = "resources/img/list/music.jpg";
            }
            else {
                path = "resources/img/list/festival.png";
            }
            festivalListVO.setInstitution(path);
            System.out.println(festivalListVO.getInstitution());
        }

        int total = homeDAO.getListCount(formDataVo);
        System.out.println("total : " + total);

        System.out.println(pageable.toString());

        return new PageImpl<>(festivalList, pageable, total);
    }
}
