package com.shop.yes24.reservation.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.shop.yes24.reservation.DAO.ReservationDAO;
import com.shop.yes24.reservation.DTO.ReservationDTO;

@Service
@Transactional(propagation = Propagation.REQUIRED)//트랜잭션 원자성의 법칙 
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	ReservationDAO dao;
	
	@Override
	public int countSeat(String grade) throws Exception {
		// TODO Auto-generated method stub
		return dao.countSeat(grade);
	}
@Override
public void updateBooked(ReservationDTO dto) throws Exception {
	dao.updateBooked(dto);
	
}
	@Override
	public ReservationDTO searchSeatInfo(ReservationDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.searchSeatInfo(dto);
	}

	@Override
	public String seatPrice(String grade) throws Exception {
		// TODO Auto-generated method stub
		return dao.seatPrice(grade);
	}

	@Override
	public List<ReservationDTO> chkBooked() throws Exception {
		// TODO Auto-generated method stub
		return dao.chkBooked();
	}

}
