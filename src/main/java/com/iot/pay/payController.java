package com.iot.pay;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.iot.parkingAPI.parkingAPIService;
import com.iot.parkingAPI.parkingInfoVO;
import com.iot.parkingAPI.parkingjsonVO;
import com.iot.reservation.resvService;
import com.iot.reservation.resvVO;

@Controller
public class payController {
	@Autowired
	payService service;
	@Autowired
	resvService rservice;
	@Autowired
	parkingAPIService paservice;
	
	@RequestMapping(value="/pay.do", method=RequestMethod.GET)
	public String payView(payVO pay) {
		return "payMake";
	}
	
	@RequestMapping(value="/pay.do", method=RequestMethod.POST)
	public String payInsert(payVO pay) {
		System.out.println("들어오나 마!"+pay);
		int result = service.insert(pay);
		System.out.println("나갔디나?"+result);
		return "redirect:/paylist.do?user_id="+pay.getUser_id();
	}
	
	@RequestMapping(value="/payChange.do", method=RequestMethod.POST)
	public String payUpdate(payVO pay) {
		service.update(pay);
		return "payMake";
	}
	
	@RequestMapping(value="/payCancel.do", method=RequestMethod.POST)
	public String payDelete(payVO pay) {
		service.delete(pay);
		return "payMake";
	}
	@RequestMapping(value="/paylist.do", method=RequestMethod.GET)
	public ModelAndView paySelect(String user_id,String pm_method_code) {
		ModelAndView mav  = new ModelAndView();
		List<payVO> paylist = service.select(user_id);
	/*	List<parkingInfoVO> pinfolist = new ArrayList<parkingInfoVO>();
		parkingInfoVO pInfoVO;
		for(int i = 0;i<paylist.size();i++) {
			pInfoVO = paservice.getNameAddr(paylist.get(i).getPm_method_code());
			pinfolist.add(pInfoVO);
		}
		
		mav.addObject("pinfolist", pinfolist);*/
		mav.addObject("paylist", paylist);
		return mav;
	}	
	
	@RequestMapping(value="/paylist.do", method=RequestMethod.POST)
	public ModelAndView paySelect(payVO pay/*,*/) {
		ModelAndView mav = new ModelAndView();
		/*mav.addObject("parklist",park);*/
		/*mav.addObject("paylist", service.select(pay));
		mav.setViewName("paylist");*/
		return mav;
	}
}
