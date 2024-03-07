package com.example.gogo.index.service;


import com.example.gogo.index.dao.HomeDAO;
import com.example.gogo.index.vo.AreaVO;
import lombok.RequiredArgsConstructor;

import org.springframework.stereotype.Service;


import java.util.List;

@Service
@RequiredArgsConstructor
public class HomeServiceImpl implements HomeService{

    private final HomeDAO homeDAO;

    @Override
    public List<AreaVO> getAllArea(String sido){
        List<AreaVO> areaList = homeDAO.getAllArea(sido);
        return areaList;
    }
}
