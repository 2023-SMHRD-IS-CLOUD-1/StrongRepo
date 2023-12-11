package com.smhrd.model;

public class UserBoardMemberVO {
	// 게시판 제목
	private String B_TITLE;
	
	// Email
	private String EMAIL;
	
	// 게시판 내용
	private String B_CONTENT;
	
	// 게시판 번호
	private Integer B_NUM;
	
	// 게시판 작성일자
	private String CREATED_AT;
	
	private String CATEGORY;
	private int B_VIEWS;
	
	
	
	public int getB_VIEWS() {
		return B_VIEWS;
	}

	public void setB_VIEWS(int b_VIEWS) {
		B_VIEWS = b_VIEWS;
	}

	public String getB_TITLE() {
		return B_TITLE;
	}
	
	public String getCREATED_AT() {
		return CREATED_AT;
	}

	public void setCREATED_AT(String CREATED_AT) {
		this.CREATED_AT = CREATED_AT;
	}

	public void setTitle(String B_TITLE) {
		this.B_TITLE = B_TITLE;
	}
	
	public String getB_CONTENT() {
		return B_CONTENT;
	}
	
	public void setContent(String B_CONTENT) {
		this.B_CONTENT = B_CONTENT;
	}
	

	public void setCategory(String CATEGORY) {
		this.CATEGORY = CATEGORY;
	}
	
	public String getCATEGORY() {
	    return CATEGORY;
	}
	
	public void setB_NUM(Integer B_NUM) {
		this.B_NUM = B_NUM;
	}
	
	public Integer getB_NUM() {
	    return B_NUM;
	}

	public void setEMAIL(String EMAIL) {
		this.EMAIL = EMAIL;
	}
	
	public String getEMAIL() {
	    return EMAIL;
	}
	



}
