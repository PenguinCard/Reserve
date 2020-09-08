package com.shop.yes24.myticket.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.yes24.myticket.DAO.MyticketDAO;
import com.shop.yes24.myticket.DTO.MyticketDTO;

@Service
@Transactional
public class MyticketServiceImpl implements MyticketService{
 
	@Autowired
	MyticketDAO dao;
	
	
	@Override
   public void insertmyticket(MyticketDTO dto) throws Exception {
	dao.insertmyticket(dto);
	
   }
	
	@Override
	public List<MyticketDTO> selectmyticket(MyticketDTO dto) throws Exception {
		
		return dao.selectmyticket(dto);
	}
}
