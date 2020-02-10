package com.iot.navi;

public class LocationVO {
	//클래스 멤버변수 선언
	private String X;
	private String Y;
	private String name;
	//기본생성자 생성
	public LocationVO() {
		System.out.println("기본생성자");
	}
	//setter,getter 생성
	public String getX() {
		return X;
	}
	public void setX(String x) {
		X = x;
	}
	public String getY() {
		return Y;
	}
	public void setY(String y) {
		Y = y;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}	
	
}
