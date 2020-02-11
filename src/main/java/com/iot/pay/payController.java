package com.iot.pay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class payController {
	@Autowired
	payService service;
	
	@RequestMapping(value="/pay.do", method=RequestMethod.GET)
	public String payView(payVO pay) {
		return "payMake";
	}
	
	@RequestMapping(value="/pay.do", method=RequestMethod.POST)
	public String payInsert(payVO pay) {
		service.insert(pay);
		return "redirect:/payList.do";
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
	@RequestMapping(value="/payList.do", method=RequestMethod.GET)
	public String paySelect() {
		return "paylist";
	}	
	
	@RequestMapping(value="/payList.do", method=RequestMethod.POST)
	public ModelAndView paySelect(payVO pay) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("paylist", service.select(pay));
		mav.setViewName("paylist");
		return mav;
	}
}
