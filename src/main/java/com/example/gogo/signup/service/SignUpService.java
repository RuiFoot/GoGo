package com.example.gogo.signup.service;

import com.example.gogo.signup.vo.SignUpVO;

public interface SignUpService {
    boolean signUp(SignUpVO signUpVO);
    int checkByEmail(String member_email);
    int checkByNickname(String member_nickname);
}
