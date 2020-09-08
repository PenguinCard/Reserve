package com.shop.yes24.concert.DAO;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.shop.yes24.concert.DTO.ConcertDetailDTO;

public interface ConcertDetailDAO {

	//public String selectsubject(ConcertDetailDTO dto) throws DataAccessException; // 속성 1 개 검색 시
	public ConcertDetailDTO selectall(ConcertDetailDTO dto) throws DataAccessException;
	//public ConcertDetailDTO selectimages(ConcertDetailDTO dto) throws DataAccessException;
	List<ConcertDetailDTO> selectimageinfo(ConcertDetailDTO dto) throws DataAccessException;
	public ConcertDetailDTO selectimagemain(ConcertDetailDTO dto) throws DataAccessException;
	public ConcertDetailDTO selectgenre(ConcertDetailDTO dto) throws DataAccessException; 

	
}
