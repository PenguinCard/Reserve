package com.shop.yes24.reservation.DTO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter
@ToString
public class ReservationDTO {
	private int seatid;
	private String r_days;
	private int r_count;
	private String grade;
	private String rowno;
	private String booked;
}
