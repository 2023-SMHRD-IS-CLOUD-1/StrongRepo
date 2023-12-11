package com.smhrd.model;

public class DashBoardMemberVO {

	// 마약류 마약류
	private String c_narcotics;

	// 년도 년도
	private Integer c_year;

	// 건수 건수
	private Integer c_num;

	// 지역별 지역별
	private String r_region_group;

	// 건수 건수
	private Integer r_num;

	// 직업별 직업별
	private String j_job_group;

	// 년도 년도
	private Integer j_year;

	// 건수 건수
	private Integer j_num;

	// 나이
	private String a_age_group;

	// 년도 년도
	private Integer a_year;

	// 건수 건수
	private Integer a_num;

	public String getr_region_group() {
		return r_region_group;
	}

	public String getCNarcotics() {
		return c_narcotics;
	}

	public void setCNarcotics(String c_narcotics) {
		this.c_narcotics = c_narcotics;
	}

	public Integer getCYear() {
		return c_year;
	}

	public void setCYear(Integer c_year) {
		this.c_year = c_year;
	}

	public Integer getCNum() {
		return c_num;
	}

	public void setCNum(Integer c_num) {
		this.c_num = c_num;
	}

	public void setr_region_group(String r_region_group) {
		this.r_region_group = r_region_group;
	}

	public Integer getr_num() {
		return r_num;
	}

	public void setr_num(Integer r_num) {
		this.r_num = r_num;
	}

	public String getJ_job_group() {
		return j_job_group;
	}

	public void setJ_job_group(String j_job_group) {
		this.j_job_group = j_job_group;
	}

	public Integer getJ_year() {
		return j_year;
	}

	public void setJ_year(Integer j_year) {
		this.j_year = j_year;
	}

	public Integer getJ_num() {
		return j_num;
	}

	public void setJ_num(Integer j_num) {
		this.j_num = j_num;
	}

	public String geta_age_group() {
		return a_age_group;
	}

	public void seta_age_group(String a_age_group) {
		this.a_age_group = a_age_group;
	}

	public Integer getA_year() {
		return a_year;
	}

	public void setA_year(Integer a_year) {
		this.a_year = a_year;
	}

	public Integer getA_num() {
		return a_num;
	}

	public void seta_num(Integer a_num) {
		this.a_num = a_num;
	}

	@Override
	public String toString() {
		if (c_year != null && c_num != null) {
			return "{c_year='" + c_year + '\'' + ", c_num='" + c_num + '\'' + '}';

		} else if (r_region_group != null && r_num != null) {
			return "{r_region_group='" + r_region_group + '\'' + ", r_num='" + r_num + '\'' + '}';

		} else if (j_job_group != null && j_num != null) {
			return "{j_job_group='" + j_job_group + '\'' + ", j_num='" + j_num + '\'' + '}';

		} else if (a_age_group != null && a_num != null) {
			return "{a_age_group='" + a_age_group + '\'' + ", a_num='" + a_num + '\'' + '}';

		} else {
			return "No valid data to display";
		}
	}
}