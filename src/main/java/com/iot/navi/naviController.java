package com.iot.navi;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class naviController {
	@RequestMapping("/navi.do")
	public String navi() {
		return "navi";
	}
}
