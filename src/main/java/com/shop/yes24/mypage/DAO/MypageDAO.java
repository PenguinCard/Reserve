package com.shop.yes24.mypage.DAO;

import org.springframework.dao.DataAccessException;

import com.shop.yes24.member.DTO.MemberDTO;

public interface MypageDAO {
	public void updateMyInfo(MemberDTO dto) throws DataAccessException;

}
