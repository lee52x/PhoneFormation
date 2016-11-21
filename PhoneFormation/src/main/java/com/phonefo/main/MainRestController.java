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
			return "<font color='red'>이미 존재하는 아이디 입니다.</font>";
		}else if(result==true){
			if(!Pattern.matches("^[a-zA-Z0-9]{5,15}$", userid))
				return "<font color='red'>5~15자의 영소문자, 숫자만 사용 가능합니다.</font>";
			else
				return "<font color='blue'>사용 가능한 아이디 입니다</font>";
		}
		return "";
	}
	
	@RequestMapping("/checkPwd")
	public String checkPwd(String userpwd)throws Exception{
		System.out.println(userpwd);
		if(!Pattern.matches("^[a-zA-Z0-9`~!@#$%^&*()-_=+]{5,15}$", userpwd)){
			return "<font color='red'>5~15자의 영문, 숫자, 특수문자만 사용 가능합니다.</font>";
		}else if(Pattern.matches("^[a-zA-Z0-9]{5,7}$", userpwd)){
			return "<font color='blue'>사용하실 수 있는 비밀번호입니다. (안전도 등급 낮음)</font>";	
		}else {
			return "<font color='blue'>사용하실 수 있는 비밀번호입니다. (안전도 등급 높음)</font>";
		}

	}
}

