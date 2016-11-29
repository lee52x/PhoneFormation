package com.phonefo.phone.domain;

public class PhoneCapaVO {
	private int no;
	private String capacity;
	private int release_price;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public int getRelease_price() {
		return release_price;
	}
	public void setRelease_price(int release_price) {
		this.release_price = release_price;
	}
	@Override
	public String toString() {
		return "PhoneCapaVO [no=" + no + ", capacity=" + capacity + ", release_price=" + release_price + "]";
	}
	
}
