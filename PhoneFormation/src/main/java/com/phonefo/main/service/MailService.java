package com.phonefo.main.service;

import java.io.Serializable;


public interface MailService extends Serializable {
	void sendMail(String subject, String text, String fromUser, String toUser, String[]toCC);
}
