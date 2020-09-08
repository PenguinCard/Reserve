package com.shop.yes24.myticket.DTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class MyticketDTO {

	private String name;
	private String bookdate;
	private int bookno;
	private String title;
	private String showdate;
	private int cnt;
	private String state;
	
	
}
