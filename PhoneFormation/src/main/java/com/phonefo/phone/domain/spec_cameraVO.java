package com.phonefo.phone.domain;

public class spec_cameraVO {
	private int no;
	private String camera_resoluation;
	private String maincamera_pixel;
	private String maincamera_aperture;
	private String frontcamera_pixel;
	private String frontcamera_aperture;
	private String maincamera_flash;
	private String maincamera_autofocus;
	private String camera_detail;
	
	public spec_cameraVO() {
		// TODO Auto-generated constructor stub
	}
	
	public String getCamera_detail() {
		return camera_detail;
	}
	public void setCamera_detail(String camera_detail) {
		this.camera_detail = camera_detail;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}

	public String getMaincamera_pixel() {
		return maincamera_pixel;
	}
	public void setMaincamera_pixel(String maincamera_pixel) {
		this.maincamera_pixel = maincamera_pixel;
	}
	public String getMaincamera_aperture() {
		return maincamera_aperture;
	}
	public void setMaincamera_aperture(String maincamera_aperture) {
		this.maincamera_aperture = maincamera_aperture;
	}
	public String getFrontcamera_pixel() {
		return frontcamera_pixel;
	}
	public void setFrontcamera_pixel(String frontcamera_pixel) {
		this.frontcamera_pixel = frontcamera_pixel;
	}
	public String getFrontcamera_aperture() {
		return frontcamera_aperture;
	}
	public void setFrontcamera_aperture(String frontcamera_aperture) {
		this.frontcamera_aperture = frontcamera_aperture;
	}
	public String getMaincamera_flash() {
		return maincamera_flash;
	}
	public void setMaincamera_flash(String maincamera_flash) {
		this.maincamera_flash = maincamera_flash;
	}
	public String getMaincamera_autofocus() {
		return maincamera_autofocus;
	}
	public void setMaincamera_autofocus(String maincamera_autofocus) {
		this.maincamera_autofocus = maincamera_autofocus;
	}
	@Override
	public String toString() {
		return "spec_cameraVO [no=" + no + ", camera_resoluation=" + camera_resoluation + ", maincamera_pixel="
				+ maincamera_pixel + ", maincamera_aperture=" + maincamera_aperture + ", frontcamera_pixel="
				+ frontcamera_pixel + ", frontcamera_aperture=" + frontcamera_aperture + ", maincamera_flash="
				+ maincamera_flash + ", maincamera_autofocus=" + maincamera_autofocus + ", camera_detail="
				+ camera_detail + "]";
	}

	public String getCamera_resoluation() {
		return camera_resoluation;
	}

	public void setCamera_resoluation(String camera_resoluation) {
		this.camera_resoluation = camera_resoluation;
	}
	
	
}
