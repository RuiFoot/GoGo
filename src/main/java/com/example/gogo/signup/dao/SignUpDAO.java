package com.example.gogo.signup.dao;

import com.example.gogo.signup.vo.SignUpVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SignUpDAO {
	 void signUp(SignUpVO signUpVO);
	 int checkByEmail(String email);
	 int checkByNickname(String nickname);
}
