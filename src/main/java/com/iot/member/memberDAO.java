package com.iot.member;

public interface memberDAO {
	int insert(memberVO user);
	int delete(memberVO user);
	int update(memberVO user);
	memberVO login(memberVO loginUser);
}
