package com.iot.member;

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
		System.out.println("serviceImpl insert:"+user);
		return dao.insert(user);
	}

	@Override
	public int delete(memberVO user) {
		return dao.delete(user);
	}

	@Override
	public int update(memberVO user) {
		return dao.update(user);
	}

	@Override
	public memberVO login(memberVO loginUser) {
		memberVO user = dao.login(loginUser);
		System.out.println("loginInfo:"+user);
		return user;
	}

}
