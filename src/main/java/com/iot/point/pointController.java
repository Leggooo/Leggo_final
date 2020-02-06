package com.iot.point;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class pointController {
	@Autowired
	pointService service;
	@RequestMapping("/point/insert.do")
	public String insert(pointVO point) {
		service.insert(point);
		return "point/insert";
	}
	@RequestMapping("/point/delete.do")
	public String delete(pointVO point) {
		service.delete(point);
		return "point/delete";
	}
	@RequestMapping("/point/update.do")
	public String update(pointVO point) {
		service.update(point);
		return "point/update";
	}
	@RequestMapping("/point/select.do")
	public ModelAndView select(String user_id) {
		ModelAndView mav = new ModelAndView();
		List<pointVO> pointlist = service.select(user_id);
		System.out.println(pointlist);
		return mav;
	}
}
