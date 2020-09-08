package com.shop.yes24.main.DTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter @Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class MainImageDTO {
	private int main_textlist_id;
	private String main_textlist_title;
	private String main_textlist_date;
	private String main_textlist_place;
	private String main_textlist_contents;
	private int sub_main_id; 
	private String sub_main_subject; 
	private String sub_main_genre; 
	private String sub_main_name;
	private String sub_main_sector;
	private String sub_main_imagename;
}
