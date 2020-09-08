package com.shop.yes24.sub.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.shop.yes24.sub.DTO.SubImageDTO;
import com.shop.yes24.sub.DTO.SubSlideImageDTO;

@Repository
public class SubImageDAOImpl implements SubImageDAO {
	
	@Autowired
	private SqlSession sess;

	@Override
	public List<SubSlideImageDTO> selectSubSlideImage(String genre) throws DataAccessException {
		// TODO Auto-generated method stub
		return sess.selectList("mappers.subImageList.selectSlideImage", genre);
	}

	@Override
	public List<SubImageDTO> selectWeeklyImage(String genre) throws DataAccessException {
		// TODO Auto-generated method stub
		return sess.selectList("mappers.subImageList.selectWeeklyImage", genre);
	}
	
	@Override
	public List<SubImageDTO> selectLocalImage(String genre) throws DataAccessException {
		// TODO Auto-generated method stub
		return sess.selectList("mappers.subImageList.selectLocalImage", genre);
	}
	
	@Override
	public List<SubImageDTO> selectPickImage(String genre) throws DataAccessException {
		// TODO Auto-generated method stub
		return sess.selectList("mappers.subImageList.selectPickImage", genre);
	}
	
	@Override
	public List<SubImageDTO> selectBannerImage(String genre) throws DataAccessException {
		// TODO Auto-generated method stub
		return sess.selectList("mappers.subImageList.selectBannerImage", genre);
	}
}
