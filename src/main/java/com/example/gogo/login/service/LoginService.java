package com.example.gogo.login.service;

import com.example.gogo.login.vo.LoginVO;

import java.util.List;

public interface LoginService {
    public List<LoginVO> getAllMember(String member_email);
}
