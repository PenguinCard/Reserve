package com.shop.yes24.sub.DTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class SubSlideImageDTO {
	private int sub_main_id;
	private String sector;
	private String name;
	private String imgName;
	private String title;
	private String place;
}
