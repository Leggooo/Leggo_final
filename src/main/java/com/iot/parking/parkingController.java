package com.iot.parking;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class parkingController {
   @RequestMapping("/parking.do")
   public String lastmile() {
      return "parking";
   }
   
   @RequestMapping("/parking/kakaomap.do")
   public String findRoadTest() {
      return "parking_findRoad";
   }
}