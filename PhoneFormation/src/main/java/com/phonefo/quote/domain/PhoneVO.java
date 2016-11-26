package com.phonefo.quote.domain;

public class PhoneVO {
	
	private int id;
	private String name;
	private String machine;
	private String manufacture;
	private String release_date;
	private String capacity;
	private int release_price;

	
	
	public PhoneVO() {
		
	}
	
	
	
	public String getMachine() {
		return machine;
	}



	public void setMachine(String machine) {
		this.machine = machine;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getManufacture() {
		return manufacture;
	}
	public void setManufacture(String manufacture) {
		this.manufacture = manufacture;
	}
	public String getRelease_date() {
		return release_date;
	}
	public void setRelease_date(String release_date) {
		this.release_date = release_date;
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






	
	
	
}
