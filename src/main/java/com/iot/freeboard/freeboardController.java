package com.iot.freeboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class freeboardController {
	@Autowired
	FreeBoardService service;
	@RequestMapping("/freeboardmain.do")
	public ModelAndView freeboardmain() {
		return "freeboard_main";
	}
	@RequestMapping("/freeboardread.do")
	public String freeboardread() {
		return "freeboard_read";
	}
	@RequestMapping("/freeboardwrite.do")
	public String freeboardwrite() {
		return "freeboard_write";
	}
}
