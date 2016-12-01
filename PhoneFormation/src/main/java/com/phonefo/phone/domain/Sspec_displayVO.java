package com.phonefo.phone.domain;

public class Sspec_displayVO {
	private int no;
	private String size_main;
	private String resoluation_main;
	private String type_main;
	private String color_depth_main;
	private String s_pen;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getSize_main() {
		return size_main;
	}
	public void setSize_main(String size_main) {
		this.size_main = size_main;
	}
	public String getResoluation_main() {
		return resoluation_main;
	}
	public void setResoluation_main(String resoluation_main) {
		this.resoluation_main = resoluation_main;
	}
	public String getType_main() {
		return type_main;
	}
	public void setType_main(String type_main) {
		this.type_main = type_main;
	}
	public String getColor_depth_main() {
		return color_depth_main;
	}
	public void setColor_depth_main(String color_depth_main) {
		this.color_depth_main = color_depth_main;
	}
	public String getS_pen() {
		return s_pen;
	}
	public void setS_pen(String s_pen) {
		this.s_pen = s_pen;
	}
	@Override
	public String toString() {
		return "Sspec_displayVO [no=" + no + ", size_main=" + size_main + ", resoluation_main=" + resoluation_main
				+ ", type_main=" + type_main + ", color_depth_main=" + color_depth_main + ", s_pen=" + s_pen + "]";
	}
	
	
	
}
