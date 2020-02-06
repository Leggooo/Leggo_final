package com.iot.lastmile;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BikeServiceImpl implements BikeService {
	@Autowired
	GetBikeAPI getBikeAPI;

	@Override
	public List<BikeVO> getBikeAPI() {
		List<BikeVO> bikeList = getBikeAPI.getBikeJSON();
		return bikeList;
	}

}
