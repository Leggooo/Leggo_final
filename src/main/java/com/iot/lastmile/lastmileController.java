package com.iot.lastmile;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class lastmileController {
	@Autowired
	BikeService bikeService;
	
	@RequestMapping("/lastmile.do")
	public String lastmile() {
		return "lastmile";
	}
	
	@RequestMapping("/lastmile/bikeList.do")
	public String bikeList() {
		return "lastmile";
	}
	
	//test
	@RequestMapping("/kakaomap.do")
	public String findRoadTest() {
		return "lastmile_findRoad";
	}
	
	//자전거 목록
	@RequestMapping(value="/lastmile/getBikeAPI.do",
			method=RequestMethod.GET,
			produces="application/json;charset=UTF-8")
	public @ResponseBody List<BikeVO> getBikeAPI() {
		List<BikeVO> bikeList = bikeService.bikeList();
		
		return bikeList;
	}
}
