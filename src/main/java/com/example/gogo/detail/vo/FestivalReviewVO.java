package com.example.gogo.detail.vo;

import lombok.Data;

@Data
public class FestivalReviewVO {
    private String review_no;
    private String event_no;
    private Integer member_no;
    private String member_name;
    private String review_field;
    private String create_date;
    private Integer review_grade;
}
