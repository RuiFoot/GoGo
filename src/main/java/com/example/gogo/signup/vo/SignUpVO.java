package com.example.gogo.signup.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SignUpVO {
	private String member_no;
	private String member_pw;
	private String member_name;
	private String member_email;
	private String member_nickname;
	private String member_gender;
	private String member_birth;

}
