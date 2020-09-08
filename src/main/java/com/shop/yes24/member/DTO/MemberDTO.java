package com.shop.yes24.member.DTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class MemberDTO {

	private int member_id;
	private String mem_id;
	private String mem_pw;
	private String mem_name; 
	private int mem_birth_year; 
	private int mem_birth_month; 
	private int mem_birth_day;
	private String mem_phone1; 
	private String mem_phone2;
	private String mem_phone3; 
	private String mem_tel1; 
	private String mem_tel2; 
	private String mem_tel3; 
	private String mem_joindate; 
	private String mem_address1; 
	private String mem_address2; 
	private String mem_address3; 
	private String mem_email1; 
	private String mem_email2;
}

