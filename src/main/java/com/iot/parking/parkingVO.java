package com.iot.parking;

public class parkingVO {
	private double lat;
	private double lng;
	
	//기본생성자
	public parkingVO() {
		super();
		System.out.println("기본생성자 호출됌");
		
	}
	//2개 매개변수 받는 생성자
	public parkingVO(double lat, double lng) {
		super();
		System.out.println("기본생성자 매개변수2개짜리 호출됌");
	}
	//getter and setter
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLng() {
		return lng;
	}
	public void setLng(double lng) {
		this.lng = lng;
	}
	//toString
	@Override
	public String toString() {
		return "parkingVO [lat=" + lat + ", lng=" + lng + "]";
	}
	
}
