package com.example.gogo.index.service;

import com.example.gogo.index.vo.AreaVO;
import com.example.gogo.index.vo.FestivalListVO;
import com.example.gogo.index.vo.FormDataVO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Map;

public interface HomeService {
    List<AreaVO> getAllArea(String sido);
    Page<FestivalListVO> getList(FormDataVO formDataVo, Pageable pageable);
}
