package com.iot.navi;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class naviController {
	
	
	@RequestMapping("/navi.do")
	public String navi() {
		return "navi";
	}
	
	@RequestMapping("/roadmap.do")
	public String roadmap() {
		return "roadmap";
	}
	
	@RequestMapping(value="/findRoad/start.do",
			method=RequestMethod.GET,
			produces="application/text;charset=utf-8")
	public @ResponseBody String start(String lati,String longi) {
		System.out.println("!!!!"+lati+"!!!!"+longi);
		return "success";
	}
	
	
	@RequestMapping(value="/findRoad/end.do",
			method=RequestMethod.GET,
			produces="application/text;charset=utf-8")
	public @ResponseBody String end(String lati,String longi) {
		System.out.println("!!!!"+lati+"!!!!"+longi);
		return "success";
	}
}
