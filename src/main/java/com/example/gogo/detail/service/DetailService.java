package com.example.gogo.detail.service;

import com.example.gogo.detail.vo.FestivalReviewVO;
import com.example.gogo.detail.vo.ReviewdataVO;
import com.example.gogo.index.vo.FestivalListVO;

import java.util.List;

public interface DetailService {
    FestivalListVO getDetail(String event_no);

    List<FestivalReviewVO> getReview(String event_no);

    boolean reviewAdd(ReviewdataVO reviewVO);
    List<FestivalListVO> getRecommend(FestivalListVO festivalList);

}
