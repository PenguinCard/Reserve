package com.shop.yes24.member.DAO;

import org.springframework.dao.DataAccessException;

import com.shop.yes24.member.DTO.MemberDTO;

public interface LoginDAO {

	public MemberDTO selectid(MemberDTO dto) throws DataAccessException;
	public MemberDTO selectid_pw(MemberDTO dto) throws DataAccessException;
	
	
}
