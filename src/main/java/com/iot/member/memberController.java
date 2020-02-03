package com.iot.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class memberController {
	@Autowired
	memberService service;
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String loginPage() {
		return "login";
	}

	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(memberVO loginUserInfo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		memberVO user = service.login(loginUserInfo);
		System.out.println("로그인정보:"+user);
		String viewName = "";
		if(user!=null) {
			System.out.println("sessiont 생성");
			HttpSession ses = request.getSession();
			ses.setAttribute("user", user);
			viewName = "main";
		}else {
			viewName = "login";
		}
		mav.setViewName(viewName);
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
	
	@RequestMapping(value="/signUpSucc.do", method=RequestMethod.POST)
	public String signUpSucc(memberVO user) {
		int result = service.insert(user);
		System.out.println("insert result?:"+result);
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
