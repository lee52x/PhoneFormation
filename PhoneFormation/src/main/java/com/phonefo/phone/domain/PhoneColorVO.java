package com.phonefo.phone.domain;

public class PhoneColorVO {
	private int no;
	private String color;
	private String image;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "PhoneColorVO [no=" + no + ", color=" + color + ", image=" + image + "]";
	}
	
}
