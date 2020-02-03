package com.iot.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class memberController {
	@RequestMapping("/login.do")
	public String main() {
		return "login";
	}

	@RequestMapping("/signUp.do")
	public String signUp() {
		return "signUp";
	}
	
	@RequestMapping("/signUpTerms.do")
	public String signUpTerms() {
		return "signUpTerms";
	}
	
	@RequestMapping("/resetPwd.do")
	public String resetPwd() {
		return "resetPwd";
	}
	
	@RequestMapping("/signUpSucc.do")
	public String signUpSucc() {
		return "signUpSucc";
	}
	
	@RequestMapping("/myInfo.do")
	public String myInfo() {
		return "myInfo";
	}
	
	@RequestMapping("/modifyMyInfo.do")
	public String modifyMyInfo() {
		return "modifyMyInfo";
	}
	
}
