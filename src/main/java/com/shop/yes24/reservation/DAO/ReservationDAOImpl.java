package com.shop.yes24.reservation.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.shop.yes24.reservation.DTO.ReservationDTO;

@Repository
public class ReservationDAOImpl implements ReservationDAO{
	
	@Autowired
	private SqlSession sess;

	@Override
	public int countSeat(String grade) throws DataAccessException {
		// TODO Auto-generated method stub
		return sess.selectOne("mappers.Reservation.countSeat", grade);
	}
@Override
public void updateBooked(ReservationDTO dto) throws DataAccessException {
	sess.update("mappers.Reservation.updateBooked", dto);
	
}
	@Override
	public ReservationDTO searchSeatInfo(ReservationDTO dto) throws DataAccessException {
		// TODO Auto-generated method stub
		return sess.selectOne("mappers.Reservation.searchSeatInfo", dto);
	}

	@Override
	public String seatPrice(String grade) throws DataAccessException {
		// TODO Auto-generated method stub
		return sess.selectOne("mappers.Reservation.seatPrice", grade);
	}

	@Override
	public List<ReservationDTO> chkBooked() throws DataAccessException {
		// TODO Auto-generated method stub
		return sess.selectList("mappers.Reservation.chkBooked");
	}

}
