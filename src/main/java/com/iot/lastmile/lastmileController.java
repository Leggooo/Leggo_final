package com.iot.lastmile;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.member.memberVO;

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
	@RequestMapping(value = "/lastmile/getFavoriteList.do",
				method = RequestMethod.POST,
				produces = "application/json;charset=UTF-8")
	public @ResponseBody List<FavoriteVO> getFavoriteList(String user_id) {
		List<FavoriteVO> favoriteList = lastmileService.getFavoriteList(user_id);
		System.out.println("????5555555" + favoriteList.size());
		return favoriteList;
	}
	
	//최근 방문(Recent table) 불러오기
	@RequestMapping(value = "/lastmile/getRecentList.do",
				method = RequestMethod.POST,
				produces = "application/json;charset=UTF-8")
	public @ResponseBody List<RecentVO> getRecentList(String user_id) {
		System.out.println("rrrrrrrrrrrrrrr " + user_id);
		List<RecentVO> recentList = lastmileService.getRecentList(user_id);
		System.out.println("RRRRRRRRRRR " + recentList.size());
		return recentList;
	}
}
