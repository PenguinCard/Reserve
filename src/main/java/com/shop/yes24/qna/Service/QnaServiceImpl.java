package com.shop.yes24.qna.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.shop.yes24.qna.DAO.QnaDAO;
import com.shop.yes24.qna.DTO.QnaDTO;

@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	QnaDAO qnadao;
	
	@Override
	public List<QnaDTO> selectlist() throws DataAccessException {
		// TODO Auto-generated method stub
		return qnadao.selectlist();
	}
	
	@Override
	public void insertarticle(QnaDTO dto) throws DataAccessException{
		qnadao.insertarticle(dto);
	}
	
	@Override
	public int selectnvl() throws DataAccessException {
		
		return qnadao.selectnvl();
	}
	
	@Override
	public void updatearticle(QnaDTO dto) throws DataAccessException {
		qnadao.updatearticle(dto);
		
	}
	
	@Override
	public void deletearticle(int articleno) throws DataAccessException {
		qnadao.deletearticle(articleno);
		
	}
	
	@Override
	public QnaDTO selectdetail(int articleno) throws DataAccessException {
		return qnadao.selectdetail(articleno);
	}

}
