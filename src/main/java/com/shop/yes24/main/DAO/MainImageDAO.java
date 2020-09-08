package com.shop.yes24.main.DAO;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.shop.yes24.main.DTO.MainImageDTO;

public interface MainImageDAO {
	
	public List<MainImageDTO> selectSlide() throws DataAccessException;
	public List<MainImageDTO> selectThumb() throws DataAccessException;
	public List<MainImageDTO> selectHots1() throws DataAccessException;
	public List<MainImageDTO> selectHots2() throws DataAccessException;
	public List<MainImageDTO> selectRank() throws DataAccessException;
	public List<MainImageDTO> selectRank2() throws DataAccessException;
	public List<MainImageDTO> selectRank3() throws DataAccessException;
	public List<MainImageDTO> selectRank4() throws DataAccessException;
	public List<MainImageDTO> selectRank5() throws DataAccessException;
	public List<MainImageDTO> selectMusicPlay() throws DataAccessException;
	public List<MainImageDTO> selectConcertClassic() throws DataAccessException;
	
}
