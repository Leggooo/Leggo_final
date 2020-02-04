package com.iot.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class indexController {
	@RequestMapping("index.do")
	public String main() {
		return "index/index";
	}
}
