package com.iot.lastmile;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Service;


//"row":[{"rackTotCnt":"5",
//"stationName":"101. (구)합정동 주민센터",
//"parkingBikeTotCnt":"2",
//"shared":"40",
//"stationLatitude":"37.54956055",
//"stationLongitude":"126.90575409",
//"stationId":"ST-3"}
@Service
public class JSONParser {
	public List<BikeVO> parsingJSON() {
		List<BikeVO> bikeList = new ArrayList<BikeVO>();
		org.json.simple.parser.JSONParser parser = new org.json.simple.parser.JSONParser();
		JSONObject object;
		try {
			object = (JSONObject)parser.parse(readUrl());
			JSONObject json = (JSONObject)object.get("rentBikeStatus");
			JSONArray array = (JSONArray)json.get("row");
			for(int i=0;i<array.size();i++) {
				JSONObject row = (JSONObject)array.get(i);
				int rackTotCnt = Integer.parseInt((String) row.get("rackTotCnt"));
				String stationName = (String)row.get("stationName");
				int parkingBikeTotCnt = Integer.parseInt((String) row.get("parkingBikeTotCnt"));
				int shared = Integer.parseInt((String) row.get("shared"));
				double stationLatitude = Double.parseDouble((String) row.get("stationLatitude"));
				double stationLongitude = Double.parseDouble((String) row.get("stationLongitude"));
				String stationId = (String)row.get("stationId");
				
				BikeVO bike = new BikeVO(rackTotCnt, stationName, parkingBikeTotCnt, 
											shared, stationLatitude, stationLongitude, stationId);
				bikeList.add(bike);
			}
		} catch (ParseException e) {
			System.out.println("JSON Parsing ERROR : " + e.getMessage());
		}
		
		return bikeList;
	}
	
	public String readUrl() {
		String key = "4f644f707579797935346a766e424c";
		String result = "";
		BufferedReader br = null;
		
		try {
			String strUrl = "http://openapi.seoul.go.kr:8088/" + key + "/json/bikeList/1/5/";
			URL url = new URL(strUrl);
			HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
			urlConnection.setRequestMethod("GET");
			br = new BufferedReader(new InputStreamReader(urlConnection.getInputStream(), "UTF-8"));
			
			String line;
			while((line = br.readLine()) != null) {
				result = result + line + "\n";
			}
			
		} catch(Exception e) {
			System.out.println("get API ERROR : " + e.getMessage());
		}
		
		return result;
	}
}
