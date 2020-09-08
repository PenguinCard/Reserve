package com.shop.yes24.concert.DTO;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Component
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ConcertDetailDTO {

	//상세페이지 텍스트
	private int con_detail_id;
	private String con_detail_name;
	private String con_detail_subject;
	private String con_detail_host;
	private String con_detail_call;
	private String con_detail_cast;
	private String con_detail_grade;
	private String con_detail_time;
	private String con_detail_place;
	private String con_detail_time_info;
	private String con_detail_delivery;
	private String con_detail_price;
	private String con_detail_period;
	private String genre;
	
	//상세페이지 이미지
	private int con_detail_imagelist_id;
	private String con_detail_imagelist_section;
	private String con_detail_imagelist_name;
	private String con_detail_title;
	
	
	
	
	
}
