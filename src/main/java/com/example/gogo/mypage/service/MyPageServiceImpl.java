package com.example.gogo.mypage.service;

import com.example.gogo.mypage.dao.MyPageDAO;
import com.example.gogo.mypage.vo.MyPageVO;
import com.example.gogo.mypage.vo.ReViewVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class MyPageServiceImpl implements MyPageService{

    private final MyPageDAO mypageDAO;
    @Autowired
    public MyPageServiceImpl(MyPageDAO MyPageDAO) {
    	this.mypageDAO = MyPageDAO;
    }
	@Override
	public List<MyPageVO> GetMemberInfo(int member_no) {
		List<MyPageVO> areaList = mypageDAO.GetMemberInfo(member_no);
		return areaList;
	}
	@Override
	public List<ReViewVO> GetReviewInfo(int member_no) {
		List<ReViewVO> areaList = mypageDAO.GetReViewInfo(member_no);
		return areaList;
	}
	
	@Override
    @Transactional
    public boolean updateUserInfo(MyPageVO userInfo) {
        int rowsAffected = mypageDAO.updateUserInfo(userInfo);
        return rowsAffected > 0;
    }
}
