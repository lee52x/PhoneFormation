package com.phonefo.phone.domain;

public class Sspec_audioVO {
	private int no;
	private String video_format;
	private String video_resoluation;
	private String audio_format;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getVideo_format() {
		return video_format;
	}
	public void setVideo_format(String video_format) {
		this.video_format = video_format;
	}
	public String getVideo_resoluation() {
		return video_resoluation;
	}
	public void setVideo_resoluation(String video_resoluation) {
		this.video_resoluation = video_resoluation;
	}
	public String getAudio_format() {
		return audio_format;
	}
	public void setAudio_format(String audio_format) {
		this.audio_format = audio_format;
	}
	@Override
	public String toString() {
		return "Sspec_audioVO [no=" + no + ", video_format=" + video_format + ", video_resoluation=" + video_resoluation
				+ ", audio_format=" + audio_format + "]";
	}
	
}
