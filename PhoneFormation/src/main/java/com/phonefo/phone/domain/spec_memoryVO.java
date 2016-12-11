package com.phonefo.phone.domain;

public class spec_memoryVO {
	private int no;
	private String ramsize;
	private String romsize;
	private String usable_memory;
	private String outer_memory;
	public spec_memoryVO() {
		// TODO Auto-generated constructor stub
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getRamsize() {
		return ramsize;
	}
	public void setRamsize(String ramsize) {
		this.ramsize = ramsize;
	}
	public String getRomsize() {
		return romsize;
	}
	public void setRomsize(String romsize) {
		this.romsize = romsize;
	}
	public String getUsable_memory() {
		return usable_memory;
	}
	public void setUsable_memory(String usable_memory) {
		this.usable_memory = usable_memory;
	}
	public String getOuter_memory() {
		return outer_memory;
	}
	public void setOuter_memory(String outer_memory) {
		this.outer_memory = outer_memory;
	}
	@Override
	public String toString() {
		return "Sspec_memoryVO [no=" + no + ", ramsize=" + ramsize + ", romsize=" + romsize + ", usable_memory="
				+ usable_memory + ", outer_memory=" + outer_memory + "]";
	}
	

}
