package com.example.gogo.signup.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.gogo.signup.dao.SignUpDAO;
import com.example.gogo.signup.vo.SignUpVO;

@Service
public class SignUpServiceImpl implements SignUpService {

    private final SignUpDAO signUpDAO;

    @Autowired
    public SignUpServiceImpl(SignUpDAO signUpDAO) {
        this.signUpDAO = signUpDAO;
    }

    @Override
    public boolean signUp(SignUpVO signUpVO) {
        // 이메일 중복 확인
        int checkByEmail = signUpDAO.checkByEmail(signUpVO.getMember_email());
        
        // 닉네임 중복 확인
        int checkByNickname = signUpDAO.checkByNickname(signUpVO.getMember_nickname());
        
        // 이메일 또는 닉네임이 중복되지 않으면 회원 가입 처리
        if (checkByEmail == 0 && checkByNickname == 0) {
            signUpDAO.signUp(signUpVO);
            return true; // 회원 가입 성공
        } else {
            return false; // 회원 가입 실패 (이메일 또는 닉네임 중복)
        }
    }

    @Override
    public int checkByEmail(String member_email) {
        // 이메일 중복 확인
        return signUpDAO.checkByEmail(member_email);
    }
    @Override
    public int checkByNickname(String member_nickname) {
        // 이메일 중복 확인
        return signUpDAO.checkByNickname(member_nickname);
    }
}
