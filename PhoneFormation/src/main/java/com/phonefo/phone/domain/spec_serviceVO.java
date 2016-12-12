package com.phonefo.phone.domain;

public class spec_serviceVO {
	private int no;
	private String gear_support;
	private String svoice;
	private String mobiletv;
	private String siri;
	private String waterproof;
	public spec_serviceVO() {
		// TODO Auto-generated constructor stub
	}
	
	public String getSiri() {
		return siri;
	}
	public void setSiri(String siri) {
		this.siri = siri;
	}
	public String getWaterproof() {
		return waterproof;
	}
	public void setWaterproof(String waterproof) {
		this.waterproof = waterproof;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getGear_support() {
		return gear_support;
	}
	public void setGear_support(String gear_support) {
		this.gear_support = gear_support;
	}
	public String getSvoice() {
		return svoice;
	}
	public void setSvoice(String svoice) {
		this.svoice = svoice;
	}
	public String getMobiletv() {
		return mobiletv;
	}
	public void setMobiletv(String mobiletv) {
		this.mobiletv = mobiletv;
	}
	@Override
	public String toString() {
		return "spec_serviceVO [no=" + no + ", gear_support=" + gear_support + ", svoice=" + svoice + ", mobiletv="
				+ mobiletv + ", siri=" + siri + ", waterproof=" + waterproof + "]";
	}
	
}
