package com.shop.yes24.concert.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.shop.yes24.concert.DTO.ConcertDetailDTO;

@Repository
@Transactional(propagation=Propagation.REQUIRED) 
public class ConcertDetailDAOImpl implements ConcertDetailDAO {

	@Autowired
	SqlSession session;
	
//	@Override
//	public String selectsubject(ConcertDetailDTO dto) throws DataAccessException {
//		return session.selectOne("mappers.ConcertDetail.selectsubject", dto);
//	}  //속성 1개 검색 시 
//	
	
	
	@Override
	public ConcertDetailDTO selectall(ConcertDetailDTO dto) throws DataAccessException {
		return session.selectOne("mappers.ConcertDetail.selectall", dto);
	} //속성 전체 검색
	
	@Override
	public ConcertDetailDTO selectimagemain(ConcertDetailDTO dto) throws DataAccessException {
		return session.selectOne("mappers.ConcertDetail.selectimagemain", dto);
	}
	
	
	@Override
	public List<ConcertDetailDTO> selectimageinfo(ConcertDetailDTO dto) throws DataAccessException {
		return session.selectList("mappers.ConcertDetail.selectimageinfo", dto);
	}
	
	@Override
	public ConcertDetailDTO selectgenre(ConcertDetailDTO dto) throws DataAccessException {
		return session.selectOne("mappers.ConcertDetail.selectgenre", dto);
	}
	
	
	

}
