package com.iot.parkingAPI;

public interface parkingAPIService {
	public String readURL(String parking_code);
	public parkingjsonVO getParkingJSON(String parking_code);
}
