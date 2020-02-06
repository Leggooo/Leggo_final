package com.iot.freeboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class freeboardController {
	@Autowired
	freeboardService service;
	//자유게시판 메인화면
	@RequestMapping("/freeboardmain.do")
	public ModelAndView freeboardmain(String boardlist) {
		System.out.println("메인화면 리스트 =>"+boardlist);
		ModelAndView mav = new ModelAndView();
		List<freeboardVO> list = service.boardList();
		System.out.println(list);
		mav.addObject("boardlist",list);
		mav.setViewName("freeboard_main");
		return mav;
	}
	//입력한글 실제 db에 저장하는 메소드
	@RequestMapping(value="/freeboardwrite.do",method=RequestMethod.POST)
	public String insert(freeboardVO freeboard) {
		System.out.println(freeboard);
		return "redirect:/freeboardmain.do";
	}
	//게시글 작성하기 위한 뷰를 response할 메소드
	@RequestMapping(value="/freeboardwrite.do",method=RequestMethod.GET)
	public String freeboardwrite() {
		return "freeboard_write";
	}
}
