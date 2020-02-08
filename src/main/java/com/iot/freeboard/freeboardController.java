package com.iot.freeboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.iot.comment.cmtService;
import com.iot.comment.cmtVO;
import com.iot.member.memberService;
import com.iot.member.memberVO;

@Controller
public class freeboardController {
	@Autowired
	freeboardService service;
	cmtService cmtservice;
	//자유게시판 메인화면
	@RequestMapping(value="/freeboardmain.do")
	public ModelAndView freeboardmain(String boardlist){
		List<freeboardVO> list = service.boardList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("boardlist",list);
		mav.setViewName("freeboard_main");
		return mav;
		}
	
	//글쓰기 페이지 보여주기
	@RequestMapping(value="/freeboardwrite.do", method=RequestMethod.GET)
		public String insertView(String id) {
		return "freeboard_write";
		}
		
	//입력한글 실제 db에 저장하는 메소드
	@RequestMapping(value="/freeboardwrite.do", method=RequestMethod.POST)
	public String insert(freeboardVO freeboard) {
		System.out.println(freeboard);
		int result = service.insert(freeboard);
		System.out.println("result");
		return "redirect:/freeboardmain.do";
		}
	
	//글읽기 보여주기
	@RequestMapping(value="/freeboardread.do", method=RequestMethod.GET)
		public ModelAndView readview(String brd_num) {
			System.out.println("게시글 번호"+brd_num);
			ModelAndView mav = new ModelAndView();
			if(brd_num!=null) {
				System.out.println("11111111111");
				freeboardVO result = service.read(brd_num);
				List<cmtVO> cmt = cmtservice.readcmt(brd_num);
				System.out.println("22222222222");
			mav.addObject("readpage", result);
			mav.addObject("readcmt", cmt);
			mav.setViewName("freeboard_read");
			}
			return mav;
		}


}
