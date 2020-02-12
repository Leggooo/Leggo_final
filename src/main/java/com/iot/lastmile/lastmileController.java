package com.iot.lastmile;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class lastmileController {
	@Autowired
	LastmileService lastmileService;
	
	@RequestMapping("/lastmile.do")
	public String lastmile() {
		return "lastmile";
	}
	
	@RequestMapping("/lastmileList.do")
	public String printLastmileList() {
		return "lastmileList";
	}
	
	//공공자전거 API 데이터 받아오기
	@RequestMapping(value = "/getLastmileAPI.do",
				method = RequestMethod.GET,
				produces = "application/json;charset=UTF-8")
	public @ResponseBody List<LastmileVO> getLastmileAPI() {
		List<LastmileVO> lastmileList = lastmileService.getLastmileAPI();
		return lastmileList;
	}
	
	//즐겨찾기(Favorite table) 불러오기
	@RequestMapping(value="/lastmile/favorite.do")
	public ModelAndView favoriteList(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String user_id = (String) session.getAttribute("user_id");
		List<FavoriteVO> favoriteList = lastmileService.getFavoriteList(user_id);
		
		mav.addObject("favoriteList", favoriteList);
		mav.setViewName("lastmile/favorite");
		return mav;
	}
	
	//최근 방문(Recent table) 불러오기
	@RequestMapping(value="/lastmile/recent.do")
	public ModelAndView RecentList(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String user_id = (String) session.getAttribute("user_id");
		List<RecentVO> recentList = lastmileService.getRecentList(user_id);
		
		mav.addObject("recentList", recentList);
		mav.setViewName("lastmile/recent");
		return mav;
	}
	
	/*//즐겨찾기(Favorite table) 불러오기
	@RequestMapping(value = "/lastmile/getFavoriteList.do",
				method = RequestMethod.POST,
				produces = "application/json;charset=UTF-8")
	public @ResponseBody List<FavoriteVO> getFavoriteList(String user_id) {
		List<FavoriteVO> favoriteList = lastmileService.getFavoriteList(user_id);
		return favoriteList;
	}
	
	//즐겨찾기(Favorite table) 불러오기
	@RequestMapping(value = "/lastmile/getFavoriteList.do",
				method = RequestMethod.POST,
				produces = "application/json;charset=UTF-8")
	public @ResponseBody List<FavoriteVO> getFavoriteList(String user_id) {
		List<FavoriteVO> favoriteList = lastmileService.getFavoriteList(user_id);
		return favoriteList;
	}
	
	//최근 방문(Recent table) 불러오기
	@RequestMapping(value = "/lastmile/getRecentList.do",
				method = RequestMethod.POST,
				produces = "application/json;charset=UTF-8")
	public @ResponseBody List<RecentVO> getRecentList(String user_id) {
		List<RecentVO> recentList = lastmileService.getRecentList(user_id);
		return recentList;
	}*/
}
