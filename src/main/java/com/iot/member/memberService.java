package com.iot.member;

import javax.servlet.http.HttpSession;

public interface memberService {
	int insert(memberVO user);
	int delete(memberVO user, HttpSession session);
	int modifyMyInfo(memberVO user);
	memberVO login(memberVO loginUser);
}
