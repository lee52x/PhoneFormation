package com.phonefo.mypage.domain;

import java.util.Date;

public class MypageMemberVO {

	private int memberno;
	private String userid;
	private String userpwd;
	private String username;
	private String email;
	private Date rdate;
	private String tel;
	private String birth;
	private String gender;
	private int root;
	
	
	private String businessNum;
	private String companyName;
	private String leaderName;
	private String address;
	
	private String tel1;
	private String tel2;
	private String tel3;


	public String getTel1() {
		return tel1;
	}

	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}

	public String getTel2() {
		return tel2;
	}

	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}

	public String getTel3() {
		return tel3;
	}

	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}

	public int getMemberno() {
		return memberno;
	}

	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getRdate() {
		return rdate;
	}

	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getRoot() {
		return root;
	}

	public void setRoot(int root) {
		this.root = root;
	}

	public String getBusinessNum() {
		return businessNum;
	}

	public void setBusinessNum(String businessNum) {
		this.businessNum = businessNum;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getLeaderName() {
		return leaderName;
	}

	public void setLeaderName(String leaderName) {
		this.leaderName = leaderName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "MypageMemberVO [memberno=" + memberno + ", userid=" + userid + ", userpwd=" + userpwd + ", username="
				+ username + ", email=" + email + ", rdate=" + rdate + ", tel=" + tel + ", birth=" + birth + ", gender="
				+ gender + ", root=" + root + ", businessNum=" + businessNum + ", companyName=" + companyName
				+ ", leaderName=" + leaderName + ", address=" + address + ", tel1=" + tel1 + ", tel2=" + tel2
				+ ", tel3=" + tel3 + "]";
	}
	
}
