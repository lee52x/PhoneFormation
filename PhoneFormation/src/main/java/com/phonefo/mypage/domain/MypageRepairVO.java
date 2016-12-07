package com.phonefo.mypage.domain;

import java.util.Date;

public class MypageRepairVO {


	private int no;
	private String userid;
	private String username;
	private String tel;
	private int repair_price;
	private String request_message;
	private String bank_name;
	private String account_number;
	private Date rdate;
	private int state;
	private String machine;
	private String machineState;
	
	private int repairNum;

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public int getRepair_price() {
		return repair_price;
	}

	public void setRepair_price(int repair_price) {
		this.repair_price = repair_price;
	}

	public String getRequest_message() {
		return request_message;
	}

	public void setRequest_message(String request_message) {
		this.request_message = request_message;
	}

	public String getBank_name() {
		return bank_name;
	}

	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
	}

	public String getAccount_number() {
		return account_number;
	}

	public void setAccount_number(String account_number) {
		this.account_number = account_number;
	}

	public Date getRdate() {
		return rdate;
	}

	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getMachine() {
		return machine;
	}

	public void setMachine(String machine) {
		this.machine = machine;
	}

	public String getMachineState() {
		return machineState;
	}

	public void setMachineState(String machineState) {
		this.machineState = machineState;
	}

	public int getRepairNum() {
		return repairNum;
	}

	public void setRepairNum(int repairNum) {
		this.repairNum = repairNum;
	}

	
	
	
}
