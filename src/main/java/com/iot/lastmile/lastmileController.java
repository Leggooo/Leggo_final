package com.iot.lastmile;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class lastmileController {
	@RequestMapping("/lastmile.do")
	public String lastmile() {
		return "lastmile";
	}
	
	@RequestMapping("/kakaomap.do")
	public String findRoadTest() {
		return "lastmile_findRoad";
	}
}
