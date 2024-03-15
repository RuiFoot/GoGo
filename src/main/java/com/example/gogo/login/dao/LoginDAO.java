package com.example.gogo.login.dao;

import com.example.gogo.login.vo.LoginVO;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface LoginDAO {
    List<LoginVO> findByEmailAndPassword(@Param("member_email") String member_email , @Param("member_pw") String member_pw);
}
