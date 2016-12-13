package com.phonefo.main.controller;



import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phonefo.admin.domain.ClientVO;
import com.phonefo.admin.domain.SlideVO;
import com.phonefo.admin.service.AdminService;
import com.phonefo.board.service.BoardService;
import com.phonefo.main.domain.MemberVO;
import com.phonefo.main.service.MainService;
import com.phonefo.phone.service.PhoneInfoService;



@Controller
@RequestMapping("/phonefo")
public class MainController {
	@Inject
	MainService service;
	@Inject
	AdminService adminservice;
	@Inject
	PhoneInfoService phoneservice;
	@Inject
	BoardService boardservice;
	//메인화면 띄우기
	@RequestMapping("/main")
	public String test(Model model)throws Exception{
		//메인슬라이드
		List<SlideVO> list = adminservice.getSlide();
		model.addAttribute("slide1", list.get(0).getPath());
		model.addAttribute("slide2", list.get(1).getPath());
		model.addAttribute("slide3", list.get(2).getPath());
		
		
		//통계
		int a =adminservice.cntRepair();
		int b =adminservice.cntSecondHand();
		model.addAttribute("totalDeal", a+b);
		//총 업체수
		model.addAttribute("businessCount", service.howBusiness());
		//총 방문자
		model.addAttribute("totalVisit", adminservice.totalVisit());
		//로고
		model.addAttribute("logo", service.getLogo()); 
		
	
		model.addAttribute("phone", phoneservice.selectnew());
		model.addAttribute("board", boardservice.selectmain());
		
		
		model.addAttribute("body","./main/body.jsp");
		return "mainView";
	}
	
	//회원가입(개인,기업 선택 페이지 띄우기)
	@RequestMapping("/join")
	public String join(Model model){
		
		model.addAttribute("body", "./main/join.jsp");
		
		return "mainView";
	}
	
	//로그인폼 띄우기
	@RequestMapping("/login")
	public String login(Model model){
		
		model.addAttribute("body","./main/login.jsp");
		
		return "mainView";
	}
	
	
	//일반회원가입폼
	@RequestMapping("/general_member")
	public String general(Model model){
		
		model.addAttribute("body", "./main/general_member_form.jsp");
		return "mainView";
	}
	
	
	//기업회원 가입폼
	@RequestMapping("/business_member")
	public String business(Model model){
		
		model.addAttribute("body", "./main/business_member_form.jsp");
		return "mainView";
	}
	
	
	//일반회원가입하기
	@RequestMapping("/insertMember")
	public String insertMember(String userid,String userpwd,String username,String gender,int root,
			String birth1,String birth2,String birth3
			,String email1,String email2,String tel1,String tel2,
			String tel3,Model model)throws Exception{
		
		MemberVO vo=new MemberVO();
		
		String birth=birth1+"/"+birth2+"/"+birth3;
		String email=email1+"@"+email2;
		String tel=tel1+"-"+tel2+"-"+tel3;
		
		vo.setUserid(userid);
		vo.setUserpwd(userpwd);
		vo.setUsername(username);
		vo.setBirth(birth);
		vo.setGender(gender);
		vo.setEmail(email);
		vo.setTel(tel);
		vo.setRoot(root);
		vo.setBusinessNum(null);


		service.insertMember(vo);
		
		model.addAttribute("body","./main/body.jsp");
		
		
		return "mainView";
	}
	
	//기업회원 가입하기
	@RequestMapping("/insertMember_b")
	public String insertB_member(String userid,String userpwd,String tel1,String tel2,String tel3,String gender,String birth1,String birth2,String birth3,
			String email1,String email2,String businessNum1,String businessNum2,String businessNum3,String companyName,String leaderName,String address,
					int root,Model model)throws Exception{
		
		String birth=birth1+"/"+birth2+"/"+birth3;
		String email=email1+"@"+email2;
		String tel=tel1+"-"+tel2+"-"+tel3;
		String businessNum=businessNum1+"-"+businessNum2+"-"+businessNum3;
		
		MemberVO vo=new MemberVO();

		
		
		vo.setUserid(userid);
		vo.setUserpwd(userpwd);
		vo.setUsername(leaderName);
		vo.setBirth(birth);
		vo.setGender(gender);
		vo.setEmail(email);
		vo.setTel(tel);
		vo.setRoot(root);
		vo.setBusinessNum(businessNum);
		vo.setCompanyName(companyName);
		vo.setLeaderName(leaderName);
		vo.setAddress(address);
	
	
		service.insertMemberB(vo);
		model.addAttribute("body", "./main/body.jsp");
		return "mainView";
		
		
	}
	
	@RequestMapping("/search_id")
	public String search_id(){
		return "./main/searchForm";
	}
	
	
	@RequestMapping("/search_password")
	public String search_password(){
		return "./main/searchForm2";
	}

}
