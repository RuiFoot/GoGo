package com.example.gogo.login.dao;

import com.example.gogo.login.vo.LoginVO;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface LoginDAO {
    List<LoginVO> getAllMember(@Param("member_email") String member_email);
}
