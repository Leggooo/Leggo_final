package com.iot.member;

public interface memberService {
	int insert(memberVO user);
	int delete(memberVO user);
	int update(memberVO user);
	memberVO login(memberVO loginUser);
}
