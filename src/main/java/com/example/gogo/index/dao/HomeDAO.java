package com.example.gogo.index.dao;

import com.example.gogo.index.vo.AreaVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;


import java.util.List;

@Mapper
public interface HomeDAO {
    List<AreaVO> getAllArea(@Param("sido") String sido);
}
