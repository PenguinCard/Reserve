package com.shop.yes24.qna.DTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class QnaDTO {

	private int level;
	private int articleno;
	private int parentno;
	private String title;
	private String content;
	private String imagefilename;
	private String writedate;
	private String writer_id;
	
	
	
}
