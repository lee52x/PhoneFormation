package com.phonefo.phone.domain;

public class PhoneColorVO {
	private int cno;
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}

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
	
	public PhoneColorVO() {
		// TODO Auto-generated constructor stub
	}
	
}
