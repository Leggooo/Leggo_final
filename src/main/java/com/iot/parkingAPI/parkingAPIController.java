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
		if(parking_code==null) {
			System.out.println("asd");
			mav.setViewName("parkingInfo");
		}else {
			System.out.println("API가지러 간다!");
			mav.addObject("pinfo", service.getParkingJSON(parking_code));
			System.out.println("가지고 왔다!");
			System.out.println(service.getParkingJSON(parking_code));
			mav.setViewName("getPInfo");
		}
		return mav;
	}
}
