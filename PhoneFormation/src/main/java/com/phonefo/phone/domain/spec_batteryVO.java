package com.phonefo.phone.domain;

public class spec_batteryVO {
	private int no;
	private String internet_use_3g;
	private String internet_use_lte;
	private String internet_use_wifi;
	private String video_play;
	private String battery_capacity;
	private String change_possible;
	private String audio_play;
	private String audio_play_ondisplay;
	private String continuous_call;
	public spec_batteryVO() {
		// TODO Auto-generated constructor stub
	}
	public int getNo() {
		return no;
	}
	
	public void setNo(int no) {
		this.no = no;
	}
	public String getInternet_use_3g() {
		return internet_use_3g;
	}
	public void setInternet_use_3g(String internet_use_3g) {
		this.internet_use_3g = internet_use_3g;
	}
	public String getInternet_use_lte() {
		return internet_use_lte;
	}
	public void setInternet_use_lte(String internet_use_lte) {
		this.internet_use_lte = internet_use_lte;
	}
	public String getInternet_use_wifi() {
		return internet_use_wifi;
	}
	public void setInternet_use_wifi(String internet_use_wifi) {
		this.internet_use_wifi = internet_use_wifi;
	}
	public String getVideo_play() {
		return video_play;
	}
	public void setVideo_play(String video_play) {
		this.video_play = video_play;
	}
	public String getBattery_capacity() {
		return battery_capacity;
	}
	public void setBattery_capacity(String battery_capacity) {
		this.battery_capacity = battery_capacity;
	}
	public String getChange_possible() {
		return change_possible;
	}
	public void setChange_possible(String change_possible) {
		this.change_possible = change_possible;
	}
	public String getAudio_play() {
		return audio_play;
	}
	public void setAudio_play(String audio_play) {
		this.audio_play = audio_play;
	}
	public String getAudio_play_ondisplay() {
		return audio_play_ondisplay;
	}
	public void setAudio_play_ondisplay(String audio_play_ondisplay) {
		this.audio_play_ondisplay = audio_play_ondisplay;
	}
	public String getContinuous_call() {
		return continuous_call;
	}
	public void setContinuous_call(String continuous_call) {
		this.continuous_call = continuous_call;
	}
	@Override
	public String toString() {
		return "Sspec_batteryVO [no=" + no + ", internet_use_3g=" + internet_use_3g + ", internet_use_lte="
				+ internet_use_lte + ", internet_use_wifi=" + internet_use_wifi + ", video_play=" + video_play
				+ ", battery_capacity=" + battery_capacity + ", change_possible=" + change_possible + ", audio_play="
				+ audio_play + ", audio_play_ondisplay=" + audio_play_ondisplay + ", continuous_call=" + continuous_call
				+ "]";
	}
	
}
