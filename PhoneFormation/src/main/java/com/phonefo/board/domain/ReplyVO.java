package com.phonefo.board.domain;

import java.util.Date;

public class ReplyVO {
	private int rno;
	private int bno;
	private String replytext;
	private String replyer;
	private Date regdate;
	private String image;
	
	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getReplytext() {
		return replytext;
	}

	public void setReplytext(String replytext) {
		this.replytext = replytext;
	}

	public String getReplyer() {
		return replyer;
	}

	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "ReplyVO [댓글번호=" + rno + ", 게시물번호=" + bno + ", 내용=" + replytext + ", 작성자=" + replyer
				+ ", 작성일자=" + regdate + ", 이미지=" + image + "]";
	}

	
}
