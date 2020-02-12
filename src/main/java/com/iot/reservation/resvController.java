package com.iot.reservation;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.iot.member.memberVO;
import com.iot.point.pointService;

@Controller
public class resvController {
	@Autowired
	resvService service;
	@Autowired
	pointService pservice;
	
	@RequestMapping("/myResvList.do")
	public ModelAndView myResvList(HttpSession session) {
		/*System.out.println("myResvList");*/
		ModelAndView mav = new ModelAndView();
		memberVO user = (memberVO)session.getAttribute("user");
		List<resvVO> list = service.select(user.getUser_id());
		/*System.out.println(list);*/
		mav.addObject("resvlist", list);
		mav.setViewName("myResv");
		return mav;
	}
	
	@RequestMapping(value="/resvMake.do", method=RequestMethod.GET)
	public ModelAndView viewResvMaker(String parking_code, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("resvMake");
		mav.addObject("mypoint", pservice.selectMyPoint((String)session.getAttribute("user_id")));
		mav.addObject("parking_code", parking_code);
		/*System.out.println("reservation maker view");*/
		/*pointVO point = (pointVO)request.getAttribute("mypoint");*/
		return mav;
	}
	
	@RequestMapping(value="/resvInsert.do", method=RequestMethod.POST)
	public ModelAndView resvMaker(resvVO resv) {
		/*System.out.println("reservation:"+resv);*/
		service.insert(resv);
		ModelAndView mav = new ModelAndView();
		mav.addObject("mypoint", pservice.selectMyPoint(resv.getUser_id()));
		mav.setViewName("payMake");
		return mav;
	}
}
