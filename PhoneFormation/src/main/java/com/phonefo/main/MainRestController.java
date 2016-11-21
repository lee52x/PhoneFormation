package com.phonefo.main;

import java.util.regex.Pattern;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.phonefo.service.MainService;

@RestController
@RequestMapping("/phonefo")
public class MainRestController {
	@Inject
	MainService service;
	
	@RequestMapping("/checkId")
	public String checkId(String userid)throws Exception{
		
		boolean result=service.checkId(userid);
		
		if(result==false){
			return "<font color='red'>�̹� �����ϴ� ���̵� �Դϴ�.</font>";
		}else if(result==true){
			if(!Pattern.matches("^[a-zA-Z0-9]{5,15}$", userid))
				return "<font color='red'>5~15���� ���ҹ���, ���ڸ� ��� �����մϴ�.</font>";
			else
				return "<font color='blue'>��� ������ ���̵� �Դϴ�</font>";
		}
		return "";
	}
	
	@RequestMapping("/checkPwd")
	public String checkPwd(String userpwd)throws Exception{
		System.out.println(userpwd);
		if(!Pattern.matches("^[a-zA-Z0-9`~!@#$%^&*()-_=+]{5,15}$", userpwd)){
			return "<font color='red'>5~15���� ����, ����, Ư�����ڸ� ��� �����մϴ�.</font>";
		}else if(Pattern.matches("^[a-zA-Z0-9]{5,7}$", userpwd)){
			return "<font color='blue'>����Ͻ� �� �ִ� ��й�ȣ�Դϴ�. (������ ��� ����)</font>";	
		}else {
			return "<font color='blue'>����Ͻ� �� �ִ� ��й�ȣ�Դϴ�. (������ ��� ����)</font>";
		}

	}
}

