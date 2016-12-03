package com.phonefo.quote.controller;

import java.lang.reflect.Member;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.phonefo.main.domain.MemberVO;
import com.phonefo.quote.domain.QuoteVO;
import com.phonefo.quote.service.PhoneService;

@Controller
@RequestMapping("/phonefo")
public class QuoteController {
	
	
	@Inject
	PhoneService service;

	@RequestMapping("/secondHand")
	public String quoteMain(Model model){
		

		model.addAttribute("body","./quote/secondHand.jsp");
		return "mainView";
	}
	
	
	@RequestMapping("/sell")
	public String quoteSell(Model model,HttpSession session,QuoteVO quote){
		MemberVO vo= (MemberVO)session.getAttribute("loginVO");
		System.out.println("여기오나");
		model.addAttribute("vo", vo);
		System.out.println(vo.getTel());
		model.addAttribute("body", "./quote/sell.jsp");
		return "mainView";
	}
	
	//게시글 등록
	@RequestMapping("/quoteBoard")
	public String quoteBoard(QuoteVO vo, Model model,HttpSession session)throws Exception{
				
		String userid = (String)session.getAttribute("userid");
		vo.setUserid(userid);
		vo.setUsername((String)session.getAttribute("username"));
		vo.setTel((String)session.getAttribute("tel"));
		service.insertBoard(vo);

		return "redirect:/phonefo/listBoard";
	}
	
	//게시글 리스트
	@RequestMapping("/listBoard")
	public String listBoard(Model model)throws Exception{
		
		
		List<QuoteVO> list = service.listBoard();
		model.addAttribute("list", list);
		model.addAttribute("body", "./quote/listBoard.jsp");
		return "mainView";
		
		
	}
	//글보기
	@RequestMapping("/popup")
	public String popup(Model model,int no,HttpSession session)throws Exception{
		System.out.println(no);
		QuoteVO vo = service.quoteConfirm(no);
		model.addAttribute("vo", vo);
		model.addAttribute("no",no);
		String userid=(String)session.getAttribute("userid");
		System.out.println("세션아이디:"+userid);

		
		
		return "./quote/popup";
	}
	
	////////////////////////////////////////////수리//////////////////////////////////////
	
	@RequestMapping("/repair")
	public String repairMain(Model model){
		

		model.addAttribute("body","./quote/repair.jsp");
		return "mainView";
	}
	
}
