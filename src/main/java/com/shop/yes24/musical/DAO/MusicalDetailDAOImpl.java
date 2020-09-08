package com.shop.yes24.musical.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.shop.yes24.musical.DTO.MusicalDetailDTO;

@Repository
@Transactional(propagation=Propagation.REQUIRED) 
public class MusicalDetailDAOImpl implements MusicalDetailDAO {

	@Autowired
	SqlSession session;
	
	@Override
	public MusicalDetailDTO selectall(MusicalDetailDTO dto) throws DataAccessException {
		return session.selectOne("mappers.MusicalDetail.selectall", dto);
	}
	
	@Override
	public MusicalDetailDTO selectmainimg(MusicalDetailDTO dto) throws DataAccessException {
		return session.selectOne("mappers.MusicalDetail.selectmainimg", dto);
	}
	
	@Override
	public List<MusicalDetailDTO> selectnoticeimg(MusicalDetailDTO dto) throws DataAccessException {
			return session.selectList("mappers.MusicalDetail.selectnoticeimg", dto);
		
	}
	
	@Override
	public List<MusicalDetailDTO> selectdiscountimg(MusicalDetailDTO dto) throws DataAccessException{
		return session.selectList("mappers.MusicalDetail.selectdiscountimg", dto);
	}
	
	@Override
	public List<MusicalDetailDTO> selectinfoimg(MusicalDetailDTO dto) throws DataAccessException {
		return session.selectList("mappers.MusicalDetail.selectinfoimg", dto);
	}
	
	@Override
	public List<MusicalDetailDTO> selectcastimg(MusicalDetailDTO dto) throws DataAccessException {
		return session.selectList("mappers.MusicalDetail.selectcastimg", dto);
	}
	
	@Override
	public MusicalDetailDTO selectgenre(MusicalDetailDTO dto) throws DataAccessException {
		return session.selectOne("mappers.MusicalDetail.selectgenre", dto);
	}
	
}
