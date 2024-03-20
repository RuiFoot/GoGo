package com.example.gogo.detail.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReviewdataVO {
    private String review_no;
    private String event_no;
    private Integer member_no;
    private String review_field;
    private String create_date;
    private Integer review_grade;
}
