package com.iot.point;

import java.sql.Date;

public class pointVO {
	private String user_id;
	private int pointAvail;
	private int pointChange;
	private Date pointDate;
	private Date pointExpDate;
	private String userGrade;
	
	public pointVO() {
		super();
	}

	public pointVO(String user_id, int pointAvail, int pointChange, Date pointDate, Date pointExpDate,
			String userGrade) {
		super();
		this.user_id = user_id;
		this.pointAvail = pointAvail;
		this.pointChange = pointChange;
		this.pointDate = pointDate;
		this.pointExpDate = pointExpDate;
		this.userGrade = userGrade;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getPointAvail() {
		return pointAvail;
	}

	public void setPointAvail(int pointAvail) {
		this.pointAvail = pointAvail;
	}

	public int getPointChange() {
		return pointChange;
	}

	public void setPointChange(int pointChange) {
		this.pointChange = pointChange;
	}

	public Date getPointDate() {
		return pointDate;
	}

	public void setPointDate(Date pointDate) {
		this.pointDate = pointDate;
	}

	public Date getPointExpDate() {
		return pointExpDate;
	}

	public void setPointExpDate(Date pointExpDate) {
		this.pointExpDate = pointExpDate;
	}

	public String getUserGrade() {
		return userGrade;
	}

	public void setUserGrade(String userGrade) {
		this.userGrade = userGrade;
	}

	@Override
	public String toString() {
		return "pointVO [user_id=" + user_id + ", pointAvail=" + pointAvail + ", pointChange=" + pointChange
				+ ", pointDate=" + pointDate + ", pointExpDate=" + pointExpDate + ", userGrade=" + userGrade + "]";
	}
	
}
