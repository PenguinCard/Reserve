package com.shop.yes24.member.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.shop.yes24.member.DTO.MemberDTO;

@Repository
public class LoginDAOImpl implements LoginDAO {

	@Autowired
	private SqlSession session;
	
	@Override
	public MemberDTO selectid(MemberDTO dto) throws DataAccessException {
		return session.selectOne("mybatis.mappers.Login.selectid", dto );
	}

	@Override
	public MemberDTO selectid_pw(MemberDTO dto) throws DataAccessException {
		// TODO Auto-generated method stub
		return session.selectOne("mybatis.mappers.Login.selectid_pw", dto);
	}
}
