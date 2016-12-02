package com.phonefo.phone.domain;

public class spec_specificationsVO {
	private int no;
	private String os;
	private String color;
	private String form;
	private String phone_size;
	private String weight;
	private String sensor;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getOs() {
		return os;
	}
	public void setOs(String os) {
		this.os = os;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getForm() {
		return form;
	}
	public void setForm(String form) {
		this.form = form;
	}
	public String getPhone_size() {
		return phone_size;
	}
	public void setPhone_size(String phone_size) {
		this.phone_size = phone_size;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getSensor() {
		return sensor;
	}
	public void setSensor(String sensor) {
		this.sensor = sensor;
	}
	@Override
	public String toString() {
		return "Sspec_specificationsVO [no=" + no + ", os=" + os + ", color=" + color + ", form="
				+ form + ", phone_size=" + phone_size + ", weight=" + weight + ", sensor=" + sensor + "]";
	}
	
}
