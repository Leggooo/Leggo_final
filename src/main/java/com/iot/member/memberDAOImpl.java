package com.iot.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("memberDao")
public class memberDAOImpl implements memberDAO {
	@Autowired
	SqlSession sqlSession;
	@Override
	public int insert(memberVO user) {
		return sqlSession.insert("com.iot.member.signUp", user);
	}

	@Override
	public int delete(memberVO user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(memberVO user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public memberVO login(memberVO loginUser) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("com.iot.member.login", loginUser);
	}

}
