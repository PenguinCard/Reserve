package com.shop.yes24.main.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.shop.yes24.main.DTO.MainImageDTO;

@Repository
public class MainImageDAOImpl implements MainImageDAO {

	@Autowired
	private SqlSession sess;
	
	@Override
	public List<MainImageDTO> selectSlide() throws DataAccessException {
		// TODO Auto-generated method stub
		return sess.selectList("mappers.mainImageList.selectSlide");
	}

	@Override
	public List<MainImageDTO> selectThumb() throws DataAccessException {
		// TODO Auto-generated method stub
		return sess.selectList("mappers.mainImageList.selectThumb");
	}

	@Override
	public List<MainImageDTO> selectHots1() throws DataAccessException {
		// TODO Auto-generated method stub
		return sess.selectList("mappers.mainImageList.selectHots1");
	}
	
	@Override
	public List<MainImageDTO> selectHots2() throws DataAccessException {
		// TODO Auto-generated method stub
		return sess.selectList("mappers.mainImageList.selectHots2");
	}
	
	@Override
	public List<MainImageDTO> selectRank() throws DataAccessException {
		return sess.selectList("mappers.mainImageList.selectRank");
	}
	@Override
	public List<MainImageDTO> selectRank2() throws DataAccessException {
		return sess.selectList("mappers.mainImageList.selectRank2");
	}
	@Override
	public List<MainImageDTO> selectRank3() throws DataAccessException {
		return sess.selectList("mappers.mainImageList.selectRank3");
	}
	@Override
	public List<MainImageDTO> selectRank4() throws DataAccessException {
		return sess.selectList("mappers.mainImageList.selectRank4");
	}
	@Override
	public List<MainImageDTO> selectRank5() throws DataAccessException {
		return sess.selectList("mappers.mainImageList.selectRank5");
	}

	

	@Override
	public List<MainImageDTO> selectMusicPlay() throws DataAccessException {
		// TODO Auto-generated method stub
		return sess.selectList("mappers.mainImageList.selectMusicPlay");
	}

	@Override
	public List<MainImageDTO> selectConcertClassic() throws DataAccessException {
		// TODO Auto-generated method stub
		return sess.selectList("mappers.mainImageList.selectConcertClassic");
	}
}
