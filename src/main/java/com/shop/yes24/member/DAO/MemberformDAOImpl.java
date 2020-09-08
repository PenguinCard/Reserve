package com.shop.yes24.member.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.shop.yes24.member.DTO.MemberDTO;

@Repository
public class MemberformDAOImpl implements MemberformDAO {

	@Autowired
	private SqlSession sess;
	
	@Override
	public int selectMaxId() throws DataAccessException {
		// TODO Auto-generated method stub
		return sess.selectOne("mappers.MemberList.selectMaxId");
	}

	@Override
	public void insertMember(MemberDTO dto) throws DataAccessException {
		// TODO Auto-generated method stub
		sess.insert("mappers.MemberList.insertMember", dto);
	}
	

	// 2020.08 19 아이디 중복검사
	@Override
	public String selectMemberId(String id) throws DataAccessException {
		// TODO Auto-generated method stub
		return sess.selectOne("mappers.MemberList.selectId", id);
	}

}
