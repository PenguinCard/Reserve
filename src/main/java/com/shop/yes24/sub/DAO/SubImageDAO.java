package com.shop.yes24.sub.DAO;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.shop.yes24.sub.DTO.SubImageDTO;
import com.shop.yes24.sub.DTO.SubSlideImageDTO;

public interface SubImageDAO {
	public List<SubSlideImageDTO> selectSubSlideImage(String genre) throws DataAccessException;
	public List<SubImageDTO> selectWeeklyImage(String genre) throws DataAccessException;
	public List<SubImageDTO> selectLocalImage(String genre) throws DataAccessException;
	public List<SubImageDTO> selectPickImage(String genre) throws DataAccessException;
	public List<SubImageDTO> selectBannerImage(String genre) throws DataAccessException;
}
