package com.phonefo.admin.domain;

public class AdminRepairVO {

	private String name;
	private int glass;
	private int backcover;
	private int crome;
	private int pan;
	private int scratch;
	private int powerbutton;
	private int homebutton;
	private int sound;
	private int camera;
	private int wifi;
	private int charge;
	private int battery;
	private int sensor;
	private int afterimage;
	private int lcd;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getGlass() {
		return glass;
	}
	public void setGlass(int glass) {
		this.glass = glass;
	}
	public int getBackcover() {
		return backcover;
	}
	public void setBackcover(int backcover) {
		this.backcover = backcover;
	}
	public int getCrome() {
		return crome;
	}
	public void setCrome(int crome) {
		this.crome = crome;
	}
	public int getPan() {
		return pan;
	}
	public void setPan(int pan) {
		this.pan = pan;
	}
	public int getScratch() {
		return scratch;
	}
	public void setScratch(int scratch) {
		this.scratch = scratch;
	}
	public int getPowerbutton() {
		return powerbutton;
	}
	public void setPowerbutton(int powerbutton) {
		this.powerbutton = powerbutton;
	}
	public int getHomebutton() {
		return homebutton;
	}
	public void setHomebutton(int homebutton) {
		this.homebutton = homebutton;
	}
	public int getSound() {
		return sound;
	}
	public void setSound(int sound) {
		this.sound = sound;
	}
	public int getCamera() {
		return camera;
	}
	public void setCamera(int camera) {
		this.camera = camera;
	}
	public int getWifi() {
		return wifi;
	}
	public void setWifi(int wifi) {
		this.wifi = wifi;
	}
	public int getCharge() {
		return charge;
	}
	public void setCharge(int charge) {
		this.charge = charge;
	}
	public int getBattery() {
		return battery;
	}
	public void setBattery(int battery) {
		this.battery = battery;
	}
	public int getSensor() {
		return sensor;
	}
	public void setSensor(int sensor) {
		this.sensor = sensor;
	}
	public int getAfterimage() {
		return afterimage;
	}
	public void setAfterimage(int afterimage) {
		this.afterimage = afterimage;
	}
	public int getLcd() {
		return lcd;
	}
	public void setLcd(int lcd) {
		this.lcd = lcd;
	}
	@Override
	public String toString() {
		return "AdminRepairVO [name=" + name + ", glass=" + glass + ", backcover=" + backcover + ", crome=" + crome
				+ ", pan=" + pan + ", scratch=" + scratch + ", powerbutton=" + powerbutton + ", homebutton="
				+ homebutton + ", sound=" + sound + ", camera=" + camera + ", wifi=" + wifi + ", charge=" + charge
				+ ", battery=" + battery + ", sensor=" + sensor + ", afterimage=" + afterimage + ", lcd=" + lcd + "]";
	}
	
	
}
