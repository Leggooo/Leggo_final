package com.iot.lastmile;

//공공자전거 API 데이터
public class BikeVO {
	private int rackTotCnt;				//거치대 개수			ex)5
	private String stationName;			//대여소 이름			ex)101. (구)합정동 주민센터
	private int parkingBikeTotCnt;		//자전거 주차 총 건수		ex)2
	private int shared;					//거치율				ex)40
	private double stationLatitude;		//위도				ex)37.54956055
	private double stationLongitude;	//경도				ex)126.90575409
	private String stationId;			//대여소 ID			ex)ST-3
	
	public BikeVO() {
		
	}
	
	public BikeVO(int rackTotCnt, String stationName, int parkingBikeTotCnt, int shared, 
			double stationLatitude, double stationLongitude, String stationId) {
		super();
		this.rackTotCnt = rackTotCnt;
		this.stationName = stationName;
		this.parkingBikeTotCnt = parkingBikeTotCnt;
		this.shared = shared;
		this.stationLatitude = stationLatitude;
		this.stationLongitude = stationLongitude;
		this.stationId = stationId;
	}

	public int getRackTotCnt() {
		return rackTotCnt;
	}

	public void setRackTotCnt(int rackTotCnt) {
		this.rackTotCnt = rackTotCnt;
	}

	public String getStationName() {
		return stationName;
	}

	public void setStationName(String stationName) {
		this.stationName = stationName;
	}

	public int getParkingBikeTotCnt() {
		return parkingBikeTotCnt;
	}

	public void setParkingBikeTotCnt(int parkingBikeTotCnt) {
		this.parkingBikeTotCnt = parkingBikeTotCnt;
	}

	public int getShared() {
		return shared;
	}

	public void setShared(int shared) {
		this.shared = shared;
	}

	public double getStationLatitude() {
		return stationLatitude;
	}

	public void setStationLatitude(double stationLatitude) {
		this.stationLatitude = stationLatitude;
	}

	public double getStationLongitude() {
		return stationLongitude;
	}

	public void setStationLongitude(double stationLongitude) {
		this.stationLongitude = stationLongitude;
	}

	public String getStationId() {
		return stationId;
	}

	public void setStationId(String stationId) {
		this.stationId = stationId;
	}
}
