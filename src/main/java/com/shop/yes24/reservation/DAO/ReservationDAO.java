package com.shop.yes24.reservation.DAO;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.shop.yes24.reservation.DTO.ReservationDTO;

public interface ReservationDAO {

	public int countSeat(String grade) throws DataAccessException;
	public ReservationDTO searchSeatInfo(ReservationDTO dto) throws DataAccessException;
	public String seatPrice(String grade) throws DataAccessException;
	public List<ReservationDTO> chkBooked() throws DataAccessException;
	public void updateBooked(ReservationDTO dto) throws DataAccessException;
}
