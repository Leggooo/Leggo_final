package com.iot.navi;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping(value="/start.do" )
	public String start() {	
		return "start";
	}

	@RequestMapping(value="/end.do" )
	public String end() {
		return "end";
	}
}
