package com.example.gogo.index.dao;

import com.example.gogo.index.vo.AreaVO;
import com.example.gogo.index.vo.FestivalListVO;
import com.example.gogo.index.vo.FormDataVO;
import com.example.gogo.index.vo.Paging;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;


import java.util.List;

@Mapper
public interface HomeDAO {
    List<AreaVO> getAllArea(@Param("sido") String sido);

    List<FestivalListVO> getList(Paging<?> paging);

    int getListCount(@Param("formData") FormDataVO formDataVO);

}
