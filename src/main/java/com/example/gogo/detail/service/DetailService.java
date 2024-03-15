package com.example.gogo.detail.service;

import com.example.gogo.index.vo.FestivalListVO;

import java.util.List;

public interface DetailService {
    FestivalListVO getDetail(String event_no);
    List<FestivalListVO> getRecommend(FestivalListVO festivalList);

}
