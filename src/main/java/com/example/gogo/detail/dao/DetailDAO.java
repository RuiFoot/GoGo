package com.example.gogo.detail.dao;

import com.example.gogo.detail.vo.FestivalReviewVO;
import com.example.gogo.detail.vo.ReviewdataVO;
import com.example.gogo.index.vo.FestivalListVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface DetailDAO {

    FestivalListVO getDetail(@Param("event_no") String event_no);

    List<FestivalReviewVO> getReview(@Param("event_no") String event_no);

    void reviewAdd(ReviewdataVO reviewVO);
    List<FestivalListVO> getRecommend(@Param("sido") String sido);

}
