package com.iot.parkingAPI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class parkingAPIController {
	@Autowired
	parkingAPIService service;
	@RequestMapping(value="/getPInfo.do",method=RequestMethod.GET)
	public ModelAndView select(String parking_code) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("pinfo", service.getParkingJSON(parking_code));
		mav.setViewName("getPInfo");
		return mav;
	}
}
