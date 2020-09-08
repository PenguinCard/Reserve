package com.shop.yes24.member.DAO;

import org.springframework.dao.DataAccessException;

import com.shop.yes24.member.DTO.MemberDTO;

public interface MemberformDAO {
	public int selectMaxId() throws DataAccessException;
	public void insertMember(MemberDTO dto) throws DataAccessException;
	// 2020.08 19 아이디 중복검사
	public String selectMemberId(String id) throws DataAccessException;
}
