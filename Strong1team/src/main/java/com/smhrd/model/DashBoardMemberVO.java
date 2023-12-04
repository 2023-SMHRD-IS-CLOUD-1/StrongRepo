package com.smhrd.model;

// 회원 데이터를 저장할 수 있도록 나만의 자료형
//사용자 사용자
public class DashBoardMemberVO {



	    // 마약류 마약류
	    private String c_narcotics;

	    // 년도 년도
	    private Integer c_year;

	    // 건수 건수
	    private Integer c_num;

	    public String getCNarcotics() {
	        return c_narcotics;
	    }

	    public void setCNarcotics(String cNarcotics) {
	        this.c_narcotics = c_narcotics;
	    }

	    public Integer getCYear() {
	        return c_year;
	    }

	    public void setCYear(Integer cYear) {
	        this.c_year = c_year;
	    }


	    public Integer getCNum() {
	        return c_num;
	    }

	    public void setCNum(Integer cNum) {
	        this.c_num = c_num;
	    }
	    
	
	    // 지역별 지역별
	    private String r_region_group;

	    // 년도 년도
	    private Integer r_year;


	    // 건수 건수
	    private Integer r_num;

	    public String getr_region_group() {
	        return r_region_group;
	    }

	    public void setr_region_group(String r_region_group) {
	        this.r_region_group = r_region_group;
	    }

	    public Integer getr_year() {
	        return r_year;
	    }

	    public void setr_year(Integer r_year) {
	        this.r_year = r_year;
	    }


	    public Integer getr_num() {
	        return r_num;
	    }

	    public void setr_num(Integer r_num) {
	        this.r_num = r_num;
	    }

	    @Override
	    public String toString() {
	    	return "{c_year='" + c_year + '\'' +
	    			", c_num='" + c_num + '\'' +
	    			'}';
	    }
	    public String toString2() {
	    	return "{r_region_group='" + r_region_group + '\'' +
	    			", r_num='" + r_num + '\'' +
	    			'}';
	    }
}