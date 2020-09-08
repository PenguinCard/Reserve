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
public class SubImageDTO {
	private String genre;
	private String sector;
	private String imgname;
	private String title;
	private String t_date;
	private String place;
	private String content;
}
