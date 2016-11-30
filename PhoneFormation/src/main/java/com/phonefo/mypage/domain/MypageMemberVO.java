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
	
	public MypageMemberVO() {
		// TODO Auto-generated constructor stub
	}

	public MypageMemberVO(int memberno, String userid, String userpwd, String username, String email, Date rdate,
			String tel, String birth, String gender, int root, String businessNum, String companyName,
			String leaderName, String address) {
		super();
		this.memberno = memberno;
		this.userid = userid;
		this.userpwd = userpwd;
		this.username = username;
		this.email = email;
		this.rdate = rdate;
		this.tel = tel;
		this.birth = birth;
		this.gender = gender;
		this.root = root;
		this.businessNum = businessNum;
		this.companyName = companyName;
		this.leaderName = leaderName;
		this.address = address;
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
	
	
	
}
