package com.example.gogo.mypage.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReViewVO {
	private int member_no;
	private String event_no;
	private String review_field;
	private String review_grade;
	private String create_date;
	private String 행사명;
}
