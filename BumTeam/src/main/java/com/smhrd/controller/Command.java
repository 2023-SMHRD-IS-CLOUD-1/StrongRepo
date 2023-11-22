package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {

	// 메소드의 구현내용ㄴ은 자신 클래스가 전부 담당
	// >> 메소드의 {}body가 필요없네? >> 추상 메소드를 가지고 있어야함
	// >> abstract키워드 생략가능함 interface 부모 클래스 만들기

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException;

}
