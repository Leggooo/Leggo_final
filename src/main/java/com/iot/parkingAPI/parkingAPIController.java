package com.iot.parkingAPI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class parkingAPIController {
	@Autowired
	parkingAPIService service;
	
	@RequestMapping(value="/getPInfo.do",method=RequestMethod.GET, produces="application/json;charset=utf-8")
	public @ResponseBody parkingjsonVO select(String parking_code) {
		parkingjsonVO pVO = null;
		if(parking_code==null) {
			System.out.println("parking_code NULL!");
		}else {
			pVO = (parkingjsonVO)service.getParkingJSON(parking_code);
			System.out.println("ajax_pVO:"+pVO);
		}
		return pVO;
	}
	
	@RequestMapping(value="/inputPCode.do", method=RequestMethod.GET)
	public String insertPCode(String parking_code) {
		return "parkingInfo";
	}
	
	@RequestMapping(value="/parking/update.do",method=RequestMethod.POST)
	public String updateParkingSeats(parkingjsonVO pinfoVO) {
		service.updateParkingSeats(pinfoVO.getParking_code());
		return "redirect:/myResvList.do";
	}
}
