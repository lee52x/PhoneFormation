package com.phonefo.main.controller;

import java.util.regex.Pattern;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.phonefo.main.domain.MemberVO;
import com.phonefo.main.service.MainService;

@RestController
@RequestMapping("/phonefo")
public class MainRestController {
	@Inject
	MainService service;
	
	//�Ϲ�ȸ��  ���̵� �ߺ��˻�
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

	//�н����� ��ȿ�� �˻�(�Ϲ�,���)
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
	
	//�Ϲ�ȸ�� �α���
	@RequestMapping("/confirm_member")
	public String confirm_member(String userid,String userpwd,HttpSession session)throws Exception{
		
		boolean result=false;
		result = service.check_general_member(userid, userpwd);
		
		if(result==true){
			MemberVO vo= service.getVO(userid);
			session.setAttribute("userid", userid);
			session.setAttribute("username", vo.getUsername());
			session.setAttribute("tel", vo.getTel());
			session.setAttribute("loginVO", vo);
			
			return "����";
		}else{
			return "����";
		}
		
	}
	//���ȸ�� �α���
	@RequestMapping("/confirm_business_member")
	public String confirm_business_member(String userid,String userpwd,HttpSession session)throws Exception{
		
		boolean result=false;
		result = service.check_business_member(userid, userpwd);
		System.out.println(result);
		
		if(result==true){
			MemberVO vo= service.getBVO(userid);
			session.setAttribute("userid", userid);
			session.setAttribute("username", vo.getCompanyName());
			session.setAttribute("loginVO", vo);
			return "����";
		}else{
			return "����";
		}
		
	}
	//�α׾ƿ�
	@RequestMapping("/logout")
	public void logout(HttpSession session)throws Exception{
		session.invalidate();
	
	}

}

