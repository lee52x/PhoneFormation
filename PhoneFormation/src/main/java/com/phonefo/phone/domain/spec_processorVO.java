package com.phonefo.phone.domain;

public class spec_processorVO {
	private int no;
	private String cpu_Speed;
	private String cpu_type;
	public spec_processorVO() {
		// TODO Auto-generated constructor stub
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getCpu_Speed() {
		return cpu_Speed;
	}
	public void setCpu_Speed(String cpu_Speed) {
		this.cpu_Speed = cpu_Speed;
	}
	public String getCpu_type() {
		return cpu_type;
	}
	public void setCpu_type(String cpu_type) {
		this.cpu_type = cpu_type;
	}
	@Override
	public String toString() {
		return "spec_processorVO [no=" + no + ", cpu_Speed=" + cpu_Speed + ", cpu_type=" + cpu_type + "]";
	}
}
