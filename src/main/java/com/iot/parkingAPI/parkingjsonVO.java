package com.iot.parkingAPI;

public class parkingjsonVO {
	private String QUE_STATUS;	//주차현황 정보 제공여부
	private String QUE_STATUS_NM;	//주차현황 정보 제공여부명
	private int CAPACITY;	//주차 면(주차 가능 차량 수)
	private int CUR_PARKING;	//현재 주차중인 대수
	private String CUR_PARKING_TIME;	//현재 주차 차량 업데이트 시간
	private String parking_code;
	
	public parkingjsonVO() {
		
	}

	public parkingjsonVO(String qUE_STATUS, String qUE_STATUS_NM, int cAPACITY, int cUR_PARKING,
			String cUR_PARKING_TIME, String Parking_code) {
		super();
		QUE_STATUS = qUE_STATUS;
		QUE_STATUS_NM = qUE_STATUS_NM;
		CAPACITY = cAPACITY;
		CUR_PARKING = cUR_PARKING;
		CUR_PARKING_TIME = cUR_PARKING_TIME;
		parking_code = Parking_code;
	}

	public String getQUE_STATUS() {
		return QUE_STATUS;
	}

	public void setQUE_STATUS(String qUE_STATUS) {
		QUE_STATUS = qUE_STATUS;
	}

	public String getQUE_STATUS_NM() {
		return QUE_STATUS_NM;
	}

	public void setQUE_STATUS_NM(String qUE_STATUS_NM) {
		QUE_STATUS_NM = qUE_STATUS_NM;
	}

	public int getCAPACITY() {
		return CAPACITY;
	}

	public void setCAPACITY(int cAPACITY) {
		CAPACITY = cAPACITY;
	}

	public int getCUR_PARKING() {
		return CUR_PARKING;
	}

	public void setCUR_PARKING(int cUR_PARKING) {
		CUR_PARKING = cUR_PARKING;
	}

	public String getCUR_PARKING_TIME() {
		return CUR_PARKING_TIME;
	}

	public void setCUR_PARKING_TIME(String cUR_PARKING_TIME) {
		CUR_PARKING_TIME = cUR_PARKING_TIME;
	}
	
	public String getParking_code() {
		return parking_code;
	}

	public void setParking_code(String parking_code) {
		this.parking_code = parking_code;
	}

	@Override
	public String toString() {
		return "parkingjsonVO [QUE_STATUS=" + QUE_STATUS + ", QUE_STATUS_NM=" + QUE_STATUS_NM + ", CAPACITY=" + CAPACITY
				+ ", CUR_PARKING=" + CUR_PARKING + ", CUR_PARKING_TIME=" + CUR_PARKING_TIME + ", parking_code="
				+ parking_code + "]";
	}
}
