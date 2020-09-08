package com.shop.yes24.myticket.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.shop.yes24.myticket.DTO.MyticketDTO;

@Repository
public class MyticketDAOImpl implements MyticketDAO{


	@Autowired
	SqlSession session;
	
	
  @Override
  public void insertmyticket(MyticketDTO dto) throws DataAccessException {
	session.insert("mappers.Myticket.insertmyticket", dto);
  }
  
  @Override
	public List<MyticketDTO> selectmyticket(MyticketDTO dto) throws DataAccessException {
		
		return session.selectList("mappers.Myticket.selectmyticket", dto);
	}
  
}
