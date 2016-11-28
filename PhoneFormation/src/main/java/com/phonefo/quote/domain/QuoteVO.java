package com.phonefo.quote.domain;

import java.util.Date;

public class QuoteVO {
	private int no;
	private String userid;//아이디
	private int release_price;//출고가격
	private int quote_price; //견적가격
	private String request_message;//요청사항
	private String bank_name;//은행명
	private String account_number;//계좌번호
	private Date rdate;
	private String power;
	private String glass;
	private String equipment;
	private int state;
	private String manufacture;
	private String machine;
	private String capacity;

	
	public QuoteVO() {
		// TODO Auto-generated constructor stub
	}

	public int getNo() {
		return no;
	}






	public String getManufacture() {
		return manufacture;
	}

	public void setManufacture(String manufacture) {
		this.manufacture = manufacture;
	}

	public String getMachine() {
		return machine;
	}

	public void setMachine(String machine) {
		this.machine = machine;
	}

	public String getCapacity() {
		return capacity;
	}

	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getPower() {
		return power;
	}

	public void setPower(String power) {
		this.power = power;
	}

	public String getGlass() {
		return glass;
	}

	public void setGlass(String glass) {
		this.glass = glass;
	}

	public String getEquipment() {
		return equipment;
	}

	public void setEquipment(String equipment) {
		this.equipment = equipment;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public void setNo(int no) {
		this.no = no;
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




	public int getRelease_price() {
		return release_price;
	}
	public void setRelease_price(int release_price) {
		this.release_price = release_price;
	}
	public int getQuote_price() {
		return quote_price;
	}
	public void setQuote_price(int quote_price) {
		this.quote_price = quote_price;
	}

	public Date getRdate() {
		return rdate;
	}

	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	
	
	
}
