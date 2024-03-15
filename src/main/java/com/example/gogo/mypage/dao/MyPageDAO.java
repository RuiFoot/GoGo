package com.example.gogo.mypage.dao;

import com.example.gogo.mypage.vo.MyPageVO;
import com.example.gogo.mypage.vo.ReViewVO;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface MyPageDAO {
    List<MyPageVO> GetMemberInfo(@Param("member_no") int member_no);
    List<ReViewVO> GetReViewInfo(@Param("member_no") int member_no);
    int updateUserInfo(MyPageVO myPageVO);
}
