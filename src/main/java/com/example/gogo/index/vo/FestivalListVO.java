package com.example.gogo.index.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FestivalListVO {
    private String id; // EVENT_NO
    private String name; // 행사 명
    private String place; // 장소
    private String category; // 행사 내용
    private Date startDay; // 행사 시작 일
    private Date endDay; // 행사 종료 일
    private String startTime; // 행사 시작 시간
    private String endTime; // 행사 종료 시간
    private String payInfo; //요금 정보
    private String organizationInstitution; //주관기관 명
    private String hostInstitution; // 주최기관 명
    private String tel; // 전화번호
    private String supportingInstitution; // 후원기관 명
    private Integer seat; // 객석 수
    private String pay; //관람 요금
    private String age; // 입장 연령
    private String discountInfo; // 할인 정보
    private String precautions; // 유의사항
    private String webAddress; // 웹사이트 주소
    private String reservation; // 예매 정보
    private String car; // 주차 정보
    private String roadAddress; //도로명주소
    private String numberAddress; //지번주소
    private String lat; // 위도
    private String lng; // 경도
    private Date dataUpdate; // 데이터 기준 일자
    private Integer institutionCode; // 제공 기관 코드
    private String institution; // 제공 기관

}
