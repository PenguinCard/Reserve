package com.shop.yes24.musical.DAO;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.shop.yes24.concert.DTO.ConcertDetailDTO;
import com.shop.yes24.musical.DTO.MusicalDetailDTO;

public interface MusicalDetailDAO {
		
	public MusicalDetailDTO selectall(MusicalDetailDTO dto) throws DataAccessException;
	public MusicalDetailDTO selectmainimg(MusicalDetailDTO dto) throws DataAccessException;
	public List<MusicalDetailDTO> selectnoticeimg(MusicalDetailDTO dto) throws DataAccessException;
	public List<MusicalDetailDTO> selectdiscountimg(MusicalDetailDTO dto) throws DataAccessException;
	public List<MusicalDetailDTO> selectinfoimg(MusicalDetailDTO dto) throws DataAccessException;
	public List<MusicalDetailDTO> selectcastimg(MusicalDetailDTO dto) throws DataAccessException;
	public MusicalDetailDTO selectgenre(MusicalDetailDTO dto) throws DataAccessException;
}
