package com.example.gogo.detail.service;

import com.example.gogo.detail.dao.DetailDAO;
import com.example.gogo.detail.vo.FestivalReviewVO;
import com.example.gogo.detail.vo.ReviewdataVO;
import com.example.gogo.index.vo.FestivalListVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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
        String category = festivalList.getCategory();
        String path;
        if (category.contains("전시회")){
            path = "resources/img/list/fair.png";
        } else if (category.contains("영화") || category.contains("영상")) {
            path = "resources/img/list/movie.jpg";
        } else if (category.contains("뮤지컬") || category.contains("연극") || category.contains("공연")) {
            path = "resources/img/list/play.jpg";
        } else if (category.contains("경기")) {
            path = "resources/img/list/sport.jpg";
        } else if (category.contains("음악") || category.contains("가요")) {
            path = "resources/img/list/music.jpg";
        }
        else {
            path = "resources/img/list/festival.png";
        }
            festivalList.setInstitution(path);


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
    public List<FestivalReviewVO> getReview(String event_no) {
        List<FestivalReviewVO> data = detailDAO.getReview(event_no);
        List<FestivalReviewVO> ndata = new ArrayList<>();
        System.out.println(data);
        for (int i=0; i<data.size();i++){
            if (i>=5){
                break;
            }
            ndata.add(data.get(i));
        }
        System.out.println(ndata);
        return ndata;
    }
    @Override
    public boolean reviewAdd(ReviewdataVO reviewVO) {
        System.out.println(reviewVO);
        detailDAO.reviewAdd(reviewVO);

        return true;

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
        List<FestivalListVO> data = detailDAO.getRecommend(firstWord);

        for (FestivalListVO festivalListVO : data) {
            String category = festivalListVO.getCategory();
            String path;
            if (category.contains("전시회")){
                path = "resources/img/list/fair.png";
            } else if (category.contains("영화") || category.contains("영상")) {
                path = "resources/img/list/movie.jpg";
            } else if (category.contains("뮤지컬") || category.contains("연극") || category.contains("공연")) {
                path = "resources/img/list/play.jpg";
            } else if (category.contains("경기")) {
                path = "resources/img/list/sport.jpg";
            } else if (category.contains("음악") || category.contains("가요")) {
                path = "resources/img/list/music.jpg";
            }
            else {
                path = "resources/img/list/festival.png";
            }
            festivalListVO.setInstitution(path);
        }

        return data;
    }
}
