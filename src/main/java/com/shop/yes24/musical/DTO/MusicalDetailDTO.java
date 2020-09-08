package com.shop.yes24.musical.DTO;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Component
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MusicalDetailDTO {

	//뮤지컬속성
	private int musical_detail_id;
	private String musical_detail_name;
	private String musical_detail_subject;
	private String musical_detail_host;
	private String musical_detail_call;
	private String musical_detail_cast;
	private String musical_detail_grade;
	private String musical_detail_time;
	private String musical_detail_place;
	private String musical_detail_time_info;
	private String musical_detail_delivery;
	private String musical_detail_price;
	private String musical_detail_period;
	private String genre;
	
    //뮤지컬상세페이지이미지리스트
	private int musical_detail_image_id;
	private String musical_detail_image_section;
	private String musical_detail_image_name;
	private String musical_detail_title;
	
	
	
	
	
	
}
