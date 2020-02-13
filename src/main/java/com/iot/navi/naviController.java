package com.iot.navi;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class naviController {
	
	
	@RequestMapping("/navi.do")
	public String navi() {
		return "navi";
	}
	
	@RequestMapping(value="/findmap.do", method=RequestMethod.POST)
	public ModelAndView findmap(String input_start_lat, String input_start_lng, String input_end_lat, String input_end_lng) {
		ModelAndView mav = new ModelAndView();
		System.out.println(input_start_lat);
		System.out.println(input_start_lng);
		System.out.println(input_end_lat);
		System.out.println(input_end_lng);
		
		String url = "https://map.kakao.com/?eX="+input_end_lat+"&eY="+input_end_lng+"&eName=아가방빌딩&sX="+input_start_lat+"&sY="+input_start_lng+"&sName=멀티캠퍼스 역삼";
		mav.addObject("findmap", url);
		mav.setViewName("navi_findRoad");
		return mav;
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
	
/*	@RequestMapping(value="/findRoad/findmap.do",
			method=RequestMethod.GET,
			produces="application/text;charset=utf-8")
	public @ResponseBody String findmap(String slati,String slongi,String elati, String elongi) {
		String allval= slati+slongi+elati+elongi;
		System.out.println("!!!!"+slati+"!!!!"+slongi+"!!!!"+elati+"!!!!"+elongi);
		
		return "success";
		
	}*/	
	
	//=== _SH ==================================================================================================

	@RequestMapping("/findRoad/endFromLastmile.do")
	public ModelAndView endFromLastmile(String lati, String longi, String lastmileName) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("endLati", lati);
		mav.addObject("endLongi", longi);
		mav.addObject("endName", lastmileName);
		mav.setViewName("navi");
		
		return mav;
	}
	//=== SH_ ==================================================================================================
	
}
