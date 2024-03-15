package com.example.gogo.mypage.service;

import com.example.gogo.mypage.vo.MyPageVO;
import com.example.gogo.mypage.vo.ReViewVO;


import java.util.List;

public interface MyPageService {
    public List<MyPageVO> GetMemberInfo(int member_no);
    public List<ReViewVO> GetReviewInfo(int member_no);
    boolean updateUserInfo(MyPageVO userInfo);
}
