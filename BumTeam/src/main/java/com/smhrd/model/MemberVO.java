package com.smhrd.model;

// 회원 데이터를 저장할 수 있도록 나만의 자료형
//사용자 사용자
public class MemberVO {

	// 사용자 이메일 사용자 이메일
	private String email;

	// 사용자 비밀번호 사용자 비밀번호
	private String pw;

	// 사용자 이름 사용자 이름
	private String name;

	// 사용자 닉네임 사용자 닉네임
	private String nick;

	// 사용자 생년월일 사용자 생년월일
	private String birthdate;

	// 사용자 성별 사용자 성별
	private String gender;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
}
