package com.iot.freeboard;

import java.util.Date;

public class freeboardVO {
	//첨부파일 관련 생성자 필요(강사님 질문)
	//게시판 관련
	String free_brd_type_num;
	String free_brd_num;
	String title;
	String content;
	Date update_date;
	String user_id;
	//
	String search;

	
	public freeboardVO() {
		
	}


	public freeboardVO(String free_brd_type_num, String free_brd_num, String title, String content, Date update_date,
			String user_id, String search) {
		super();
		this.free_brd_type_num = free_brd_type_num;
		this.free_brd_num = free_brd_num;
		this.title = title;
		this.content = content;
		this.update_date = update_date;
		this.user_id = user_id;
		this.search = search;
	}


	public String getFree_brd_type_num() {
		return free_brd_type_num;
	}


	public void setFree_brd_type_num(String free_brd_type_num) {
		this.free_brd_type_num = free_brd_type_num;
	}


	public String getFree_brd_num() {
		return free_brd_num;
	}


	public void setFree_brd_num(String free_brd_num) {
		this.free_brd_num = free_brd_num;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public Date getUpdate_date() {
		return update_date;
	}


	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getSearch() {
		return search;
	}


	public void setSearch(String search) {
		this.search = search;
	}


	@Override
	public String toString() {
		return "freeboardVO [free_brd_type_num=" + free_brd_type_num + ", free_brd_num=" + free_brd_num + ", title="
				+ title + ", content=" + content + ", update_date=" + update_date + ", user_id=" + user_id + ", search="
				+ search + "]";
	}

	
}

