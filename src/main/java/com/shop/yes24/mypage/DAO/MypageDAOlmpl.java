package com.shop.yes24.mypage.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.shop.yes24.member.DTO.MemberDTO;

@Repository
public class MypageDAOlmpl implements MypageDAO {
	
	@Autowired
	private SqlSession sess; //sql�� ����

	@Override
	public void updateMyInfo(MemberDTO dto) throws DataAccessException {
		// TODO Auto-generated method stub
		sess.update("mybatis.mappers.mypage.updateMyInfo",dto);

	}

}
