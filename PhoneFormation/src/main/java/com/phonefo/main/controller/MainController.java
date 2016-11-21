package com.phonefo.main.controller;



import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phonefo.main.domain.MemberVO;
import com.phonefo.main.service.MainService;



@Controller
@RequestMapping("/phonefo")
public class MainController {
	@Inject
	MainService service;

	
	@RequestMapping("/main")
	public String test(Model model){
		
		model.addAttribute("body","./main/body.jsp");
		
		return "mainView";
	}
	
	@RequestMapping("/join")
	public String login(Model model){
		
		model.addAttribute("body", "./main/join.jsp");
		
		return "mainView";
	}
	
	@RequestMapping("/general_member")
	public String general(Model model){
		
		model.addAttribute("body", "./main/general_member_form.jsp");
		return "mainView";
	}
	
	@RequestMapping("/business_member")
	public String business(Model model){
		
		model.addAttribute("body", "./main/business_member_form.jsp");
		return "mainView";
	}

	@RequestMapping("/insertMember")
	public String insertMember(String userid,String userpwd,String username,String gender,int root,
			String birth1,String birth2,String birth3
			,String email1,String email2,String tel1,String tel2,
			String tel3,Model model)throws Exception{
		
		MemberVO dto=new MemberVO();
		
		System.out.println(birth1);
		System.out.println(birth2);
		System.out.println(birth3);
		System.out.println(email1);
		System.out.println(email2);
		System.out.println(tel1);
		System.out.println(tel2);
		System.out.println(tel3);
		System.out.println("root"+root);
		
		
		String birth=birth1+"/"+birth2+"/"+birth3;
		String email=email1+"@"+email2;
		String tel=tel1+"-"+tel2+"-"+tel3;
		dto.setUserid(userid);
		dto.setUserpwd(userpwd);
		dto.setUsername(username);
		dto.setGender(gender);
		dto.setBirth(birth);
		dto.setEmail(email);
		dto.setTel(tel);
		dto.setRoot(root);
		dto.setStatus(1);//1:일반회원 2:기업회원 3:관리자
		
		service.insertMember(dto);
		
		model.addAttribute("body","./main/body.jsp");
		
		
		return "mainView";
	}
	
	
	
}
