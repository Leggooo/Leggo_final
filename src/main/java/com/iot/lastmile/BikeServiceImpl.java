package com.iot.lastmile;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BikeServiceImpl implements BikeService {
	@Autowired
	JSONParser parser;

	@Override
	public List<BikeVO> bikeList() {
		List<BikeVO> bikeList = parser.parsingJSON();
		return bikeList;
	}

}
