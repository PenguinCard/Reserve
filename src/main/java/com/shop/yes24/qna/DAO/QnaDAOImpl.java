package com.shop.yes24.qna.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.shop.yes24.qna.DTO.QnaDTO;

@Repository
public class QnaDAOImpl implements QnaDAO {

	@Autowired
	SqlSession session;
	
	@Override
	public List<QnaDTO> selectlist() throws DataAccessException {
		
		return session.selectList("mappers.Qna.selectlist");
	}
	
	@Override
	public void insertarticle(QnaDTO dto) throws DataAccessException {
		
		 session.insert("mappers.Qna.insertarticle", dto);
	}
	
	@Override
	public void updatearticle(QnaDTO dto) throws DataAccessException {
		session.update("mappers.Qna.updatearticle", dto);
		
	}
	
	@Override
	public int selectnvl() throws DataAccessException {
		
		return session.selectOne("mappers.Qna.selectnvl");
	}
	
	@Override
	public void deletearticle(int articleno) throws DataAccessException {
		
		session.delete("mappers.Qna.deletearticle", articleno);
		
	}
	
	@Override
	public QnaDTO selectdetail(int articleno) throws DataAccessException {
		
		return session.selectOne("mappers.Qna.selectdetail", articleno);
	}
}






