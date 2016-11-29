package com.phonefo.board.domain;

import java.util.Date;

public class AdviceVO {
//	ono number primary key,
//	userid varchar2(50) foreign key,
//	title varchar2(100)	not null,
//	categori varchar2(30) not null,
//	content varchar2(100) not null,
//	image varchar2(500),
//	regdate date default sysdate,
//	answer varchar2(100),
//	answer_regdate date
	private String ono;
	private String userid;
	private String title;
	private String category;
	private String content;
	private String image;
	private Date regdate; 
	private String answer;
	private Date answer_regdate;
	
	public String getOno() {
		return ono;
	}
	public void setOno(String ono) {
		this.ono = ono;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public Date getAnswer_regdate() {
		return answer_regdate;
	}
	public void setAnswer_regdate(Date answer_regdate) {
		this.answer_regdate = answer_regdate;
	}
}
