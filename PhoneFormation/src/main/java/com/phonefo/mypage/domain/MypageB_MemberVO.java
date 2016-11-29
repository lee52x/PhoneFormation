package com.phonefo.mypage.domain;

import java.util.Date;

public class MypageB_MemberVO {

	private String userid;
	private String userpwd;
	private String tel;
	private String email;
	private String businessNum;
	private String companyName;
	private String leader;
	private String address;
	private Date rdate;
	private int root;
	
	public MypageB_MemberVO() {
		
	}
	public MypageB_MemberVO(String userid, String userpwd, String tel, String email, String businessNum,
			String companyName, String leader, String address, Date rdate, int root) {
		super();
		this.userid = userid;
		this.userpwd = userpwd;
		this.tel = tel;
		this.email = email;
		this.businessNum = businessNum;
		this.companyName = companyName;
		this.leader = leader;
		this.address = address;
		this.rdate = rdate;
		this.root = root;
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
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public String getLeader() {
		return leader;
	}
	public void setLeader(String leader) {
		this.leader = leader;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	public int getRoot() {
		return root;
	}
	public void setRoot(int root) {
		this.root = root;
	}
	
	
}
