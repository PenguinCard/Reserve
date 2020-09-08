package com.shop.yes24.myticket.Service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.shop.yes24.myticket.DTO.MyticketDTO;

public interface MyticketService {

	public void insertmyticket(MyticketDTO dto) throws Exception;
	public List<MyticketDTO> selectmyticket(MyticketDTO dto) throws Exception;
}
