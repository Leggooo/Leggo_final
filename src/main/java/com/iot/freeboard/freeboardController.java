package com.iot.freeboard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class freeboardController {
	@RequestMapping("/freeboard.do")
	public String freeboard() {
		return "freeboard";
	}
}
