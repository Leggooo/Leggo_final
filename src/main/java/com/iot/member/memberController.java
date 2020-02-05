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
	public String loginPage(HttpSession session) {
		memberVO user = (memberVO)session.getAttribute("user");
		if(user!=null) {
			return "redirect:/menu.do";
		}else {
		return "login";
		}
	}

	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public ModelAndView login(memberVO loginUserInfo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		memberVO user = service.login(loginUserInfo);
		/*System.out.println("로그인정보:"+user);*/
		String viewName = "";
		if(user!=null) {
			/*System.out.println("session 생성");*/
			HttpSession ses = request.getSession();
			ses.setAttribute("user", user);
			viewName = "mainmenu";
		}else {
			viewName = "login";
		}
		mav.setViewName(viewName);
		return mav;
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
		/*System.out.println("insert result?:"+result);*/
		return "signUpSucc";
	}
	
	@RequestMapping("/myInfo.do")
	public String myInfo() {
		return "myInfo";
	}
	
	@RequestMapping(value="/modifyMyInfo.do", method=RequestMethod.POST)
	public String modifyMyInfo(memberVO user, HttpSession session) {
		memberVO loginInfo = (memberVO)session.getAttribute("user");
		user.setUser_id(loginInfo.getUser_id());
		user.setPass(loginInfo.getPass());
		memberVO modifiedUser = service.modifyMyInfo(user);
		if(modifiedUser!=null) {
			session.setAttribute("user", modifiedUser);
			return "redirect:/myInfo.do";
		}else {
			return "myInfo";
		}
	}
	
	@RequestMapping("/withdrawal.do")
	public String withdrawal(HttpSession session) {
		memberVO user = (memberVO)session.getAttribute("user");
		int result = service.delete(user);
		/*System.out.println("탈퇴 결과:"+result);*/
		if(result==1) {
			session.invalidate();
		}
		//탈퇴 후 로그인 페이지로 이동
		return "redirect:/login.do";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login.do";
	}
}
