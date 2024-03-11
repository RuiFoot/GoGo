package com.example.gogo.login.service;

import com.example.gogo.login.dao.LoginDAO;
import com.example.gogo.login.vo.LoginVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public class LoginServiceImpl implements LoginService{

    private final LoginDAO loginDAO;
    @Autowired
    public LoginServiceImpl(LoginDAO LoginDAO) {
    	this.loginDAO = LoginDAO;
    }

    @Override
    public List<LoginVO> getAllMember(String member_email){
        List<LoginVO> areaList = loginDAO.getAllMember(member_email);
        return areaList;
    }
}

