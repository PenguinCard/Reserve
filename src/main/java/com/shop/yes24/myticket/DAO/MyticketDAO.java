package com.shop.yes24.myticket.DAO;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.shop.yes24.myticket.DTO.MyticketDTO;

public interface MyticketDAO {

	public void insertmyticket(MyticketDTO dto) throws DataAccessException;
	public List<MyticketDTO> selectmyticket(MyticketDTO dto) throws DataAccessException;
	
}
