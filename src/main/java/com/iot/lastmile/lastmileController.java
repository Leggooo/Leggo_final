package com.iot.lastmile;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class lastmileController {
	@Autowired
	BikeService bikeService;
	
	@RequestMapping("/lastmile.do")
	public String lastmile() {
		return "lastmile";
	}
	
	@RequestMapping("/bikeList.do")
	public String printBikeList() {
		return "bikeList";
	}
	
	@RequestMapping(value = "/getBikeAPI.do",
				method = RequestMethod.GET,
				produces = "application/json;charset=UTF-8")
	public @ResponseBody List<BikeVO> getBikeAPI() {
		List<BikeVO> bikeList = bikeService.getBikeAPI();
		
		System.out.println("SIZE : " + bikeList.size());
		
		return bikeList;
	}
}
