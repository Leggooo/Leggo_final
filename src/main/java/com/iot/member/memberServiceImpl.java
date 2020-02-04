package com.iot.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class memberServiceImpl implements memberService {
	@Autowired
	@Qualifier("memberDao")
	memberDAO dao;
	@Override
	public int insert(memberVO user) {
		return dao.insert(user);
	}

	@Override
	public int delete(memberVO user, HttpSession session) {
		int result = dao.delete(user, session);
		System.out.println("delete결과:"+result);
		return result;
	}

	@Override
	public int modifyMyInfo(memberVO user) {
		return dao.modifyMyInfo(user);
	}

	@Override
	public memberVO login(memberVO loginUser) {
		memberVO user = dao.login(loginUser);
		return user;
	}

}
