package com.shop.yes24.qna.Service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.shop.yes24.qna.DTO.QnaDTO;

public interface QnaService {

	public List<QnaDTO> selectlist() throws DataAccessException;
	public void insertarticle(QnaDTO dto) throws DataAccessException;
	public int selectnvl() throws DataAccessException;
	public void updatearticle(QnaDTO dto) throws DataAccessException;
	public void deletearticle(int articleno) throws DataAccessException;
	public QnaDTO selectdetail(int articleno) throws DataAccessException;


}
