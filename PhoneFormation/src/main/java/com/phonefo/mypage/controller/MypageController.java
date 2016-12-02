package com.phonefo.mypage.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.phonefo.admin.domain.PageMaker;
import com.phonefo.admin.domain.SearchCriteria;
import com.phonefo.mypage.domain.MypageMemberVO;
import com.phonefo.mypage.service.MypageService;

@Controller
@RequestMapping("/phonefo")
public class MypageController {

	@Inject
	private MypageService service;
	
	@RequestMapping("/mypageMain")//마이페이지 내정보 화면(메인)
	public String myPageMain(Model model,HttpSession session) throws Exception {
		
		
		
		model.addAttribute("object", service.myPageMain(session));

	
		model.addAttribute("body", "./mypage/mypageMain.jsp");

		return "mainView";
	}
	@RequestMapping(value="/mypageUpdate", method=RequestMethod.GET)//마이페이지 내정보 수정페이지 불러오기
	public String myPageUpdateGET(Model model,HttpSession session) throws Exception {
		
		
		
		model.addAttribute("object", service.myPageMain(session));
		model.addAttribute("body", "./mypage/mypageUpdate.jsp");
		
		return "mainView";
	}
	@RequestMapping(value="/mypageUpdate", method=RequestMethod.POST)//마이페이지 내정보 수정처리
	public String myPageUpdatePOST(Model model,MypageMemberVO vo,RedirectAttributes attr,HttpSession session) throws Exception {
		
		String tel1= vo.getTel1();
		String tel2= vo.getTel2();
		String tel3= vo.getTel3();
		String tel=tel1+"-"+tel2+"-"+tel3;
		
		String userid =(String)(session.getAttribute("userid"));
		
		vo.setUserid(userid);
		vo.setTel(tel);
		
		System.out.println(vo.toString());
		
		service.myPageUpdate(vo);
		
		attr.addFlashAttribute("msg", "SUCCESS");    	
						
		return "redirect:/phonefo/mypageMain";
	}
	@RequestMapping("/mypageOno")//마이페이지 1대1문의
	public String myPageOnO(Model model,HttpSession session) throws Exception {
		
		model.addAttribute("list", service.myPageOnoList(session));
		
		
		model.addAttribute("body", "./mypage/mypageOno.jsp");
		
		return "mainView";
	}
	@RequestMapping(value="/mypageOut", method=RequestMethod.GET)//마이페이지 회원탈퇴페이지 불러오기
	public String myPageOutGET(Model model) throws Exception {
		
		model.addAttribute("body", "./mypage/mypageOut.jsp");
		
		return "mainView";
	}
	
	@RequestMapping(value="/mypageOut", method=RequestMethod.POST)//마이페이지 회원탈퇴처리
	public String myPageOutPOST(Model model,HttpSession session,RedirectAttributes attr) throws Exception {
		model.addAttribute("result", service.myPageDel(session));
		
		session.invalidate();
		//model.addAttribute("body", "./main/body.jsp");
		attr.addFlashAttribute("msg", "SUCCESS");
		//return "redirect:/mainView";
		return "redirect:/phonefo/main";
	}

}
