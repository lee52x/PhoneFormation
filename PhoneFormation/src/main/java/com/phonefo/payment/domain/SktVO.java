package com.phonefo.payment.domain;

public class SktVO {
	// 요금제
	private String payment;
	private String	data;
	private String	extra_data;
	private String call;
	private String	sms;
	private int		fixed_month;
	private int		fixed_month_dis;
	private int		fares_month;
	private int		fares_24month;
	private int		discount;
	
	// band YT 추가 혜택
	private String data_option1;
	private String data_option2;
	private String data_option3;
	private String contents_sale;
	private String partnership_sale;
	
	
	
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getExtra_data() {
		return extra_data;
	}
	public void setExtra_data(String extra_data) {
		this.extra_data = extra_data;
	}	
	public String getCall() {
		return call;
	}
	public void setCall(String call) {
		this.call = call;
	}
	public String getSms() {
		return sms;
	}
	public void setSms(String sms) {
		this.sms = sms;
	}
	public int getFixed_month() {
		return fixed_month;
	}
	public void setFixed_month(int fixed_month) {
		this.fixed_month = fixed_month;	
	}
	public int getFixed_month_dis() {
		return fixed_month_dis;
	}
	public void setFixed_month_dis(int fixed_month_dis) {
		this.fixed_month_dis = fixed_month_dis;
	}
	public int getFares_month() {
		return fares_month;
	}
	public void setFares_month(int fares_month) {
		this.fares_month = fares_month;
	}
	public int getFares_24month() {
		return fares_24month;
	}
	public void setFares_24month(int fares_24month) {
		this.fares_24month = fares_24month;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	
	
	public String getData_option1() {
		return data_option1;
	}
	public void setData_option1(String data_option) {
		this.data_option1 = data_option;
	}
	public String getData_option2() {
		return data_option2;
	}
	public void setData_option2(String data_option) {
		this.data_option2 = data_option;
	}
	public String getData_option3() {
		return data_option3;
	}
	public void setData_option3(String data_option) {
		this.data_option3 = data_option;
	}
	
	public String getContents_sale() {
		return contents_sale;
	}
	public void setContents_sale(String contents_sale) {
		this.contents_sale = contents_sale;
	}
	public String getPartnership_sale() {
		return partnership_sale;
	}
	public void setPartnership_sale(String partnership_sale) {
		this.partnership_sale = partnership_sale;
	}
	
	
	
}
