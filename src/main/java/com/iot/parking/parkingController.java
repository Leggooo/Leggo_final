package com.iot.parking;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class parkingController {
	@Autowired
	parkingService service;
	
   @RequestMapping("/parking.do")
   public ModelAndView parking() { 
	   //ModelAndView라는 객체를 생성했고. null.
	   ModelAndView mav = new ModelAndView();
	  //DB에서 읽어온 data
	   List<parkingVO> ploc = service.select();
	   //mav안에 읽어온 data ploc를 넣고
	   mav.addObject("parkingInfo", ploc);
	   //이거를 어떤 화면에 뿌릴지 설정 => parking tiles에 설정한 definition name
	   mav.setViewName("parking");
	   
	   System.out.println("parkingController에 있는 ploc 호출: "+ploc);
      return mav;
   }
   
   
   
   
   
   
   
   
   
   
   @RequestMapping("/parking/kakaomap.do")
   public String findRoadTest() {
      return "parking_findRoad";
   }
}