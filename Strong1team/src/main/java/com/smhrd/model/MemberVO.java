package com.smhrd.model;

// 회원 데이터를 저장할 수 있도록 나만의 자료형
//사용자 사용자
public class MemberVO {

	// 사용자 이메일 사용자 이메일
	private String EMAIL;

	// 사용자 비밀번호 사용자 비밀번호
	private String PW;

	// 사용자 이름 사용자 이름
	private String NAME;

	// 사용자 닉네임 사용자 닉네임
	private String NICK;

	// 사용자 생년월일 사용자 생년월일
	private String BIRTHDATE;

	// 사용자 성별 사용자 성별
	private String GENDER;
	
	private String B_TITLE;
	
	// 게시판 내용
	private String B_CONTENT;
	
	// 게시판 작성일자
	private String CREATED_AT;
	
	private String CATEGORY;

	
	

	private String JOINED_AT;
	
	private String ROLE;

	
	public String getJoined_at() {
		return JOINED_AT;
	}

	public void setJoined_at(String joined_at) {
		this.JOINED_AT = joined_at;
	}

	public String getRole() {
		return ROLE;
	}

	public void setRole(String role) {
		this.ROLE = role;
	}

	public String getEmail() {
		return EMAIL;
	}

	public void setEmail(String email) {
		this.EMAIL = email;
	}

	public String getPw() {
		return PW;
	}

	public void setPw(String pw) {
		this.PW = pw;
	}
	
	

	public String getName() {
		return NAME;
	}

	public void setName(String name) {
		this.NAME = name;
	}

	public String getNick() {
		return NICK;
	}

	public void setNick(String nick) {
		this.NICK = nick;
	}

	public String getBirthdate() {
		return BIRTHDATE;
	}

	public void setBirthdate(String birthdate) {
		this.BIRTHDATE = birthdate;
	}

	public String getGender() {
		return GENDER;
	}

	public void setGender(String gender) {
		this.GENDER = gender;
	}
	

	public String getTitle() {
		return B_TITLE;
	}
	
	public void setTitle(String title) {
		this.B_TITLE = title;
	}
	
	public String getContent() {
		return B_CONTENT;
	}
	
	public void setContent(String content) {
		this.B_CONTENT = content;
	}
	

	public void setCategory(String category) {
		this.CATEGORY = category;
	}
	
	public String getCategory() {
	    return CATEGORY;
	}

	
	

	
}
