package com.example.gogo.detail.service;

import com.example.gogo.detail.dao.DetailDAO;
import com.example.gogo.index.vo.FestivalListVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DetailServiceImpl implements DetailService {

    private final DetailDAO detailDAO;

    @Autowired
    public DetailServiceImpl(DetailDAO detailDAO) {
        this.detailDAO = detailDAO;
    }

    @Override
    public FestivalListVO getDetail(String event_no) {

        System.out.println("상세페이지 행사 리스트 가져오는 서비스 실행");

        FestivalListVO festivalList = detailDAO.getDetail(event_no);

        // festivalList에 https://가 포함되어 있는지 확인하여 isHttps 변수에 저장
        boolean isHttps = festivalList.getWebAddress() != null && (festivalList.getWebAddress().contains("https://") ||
                festivalList.getWebAddress().contains("http://"));

        // https://가 포함되어 있지 않은 경우 앞에 https://를 추가하여 webAddress 변수에 저장
        if (!isHttps) {
            String webAddressWithHttps = "https://" + festivalList.getWebAddress();
            festivalList.setWebAddress(webAddressWithHttps);
        }
        if (festivalList.getWebAddress().contains("정보 없음")) {
            festivalList.setWebAddress("#");
        }
        return festivalList;
    }

    @Override
    public List<FestivalListVO> getRecommend(FestivalListVO festivalList) {

        String number = festivalList.getNumberAddress();
        String road = festivalList.getRoadAddress();
        System.out.println(number);
        System.out.println(road);

        String target = festivalList.getNumberAddress();

        if (!road.contains("정보 없음")) {
            target = road;
        } else {
            if (!number.contains("정보 없음")) {
                target = number;
            }
        }
        System.out.println(target);

        String[] words = target.split(" ");
        String firstWord = words[0];
        System.out.println(firstWord);

        return detailDAO.getRecommend(firstWord);
    }
}
