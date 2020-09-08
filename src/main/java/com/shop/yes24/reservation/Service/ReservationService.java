package com.shop.yes24.reservation.Service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.shop.yes24.reservation.DTO.ReservationDTO;

public interface ReservationService {

	public int countSeat(String grade) throws Exception;
	public ReservationDTO searchSeatInfo(ReservationDTO dto) throws Exception;
	public String seatPrice(String grade) throws Exception;
	public List<ReservationDTO> chkBooked() throws Exception;
	public void updateBooked(ReservationDTO dto) throws Exception;
}
