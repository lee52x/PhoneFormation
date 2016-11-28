package com.phonefo.quote.controller;

import java.lang.reflect.Member;

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
		model.addAttribute("vo", vo);

		model.addAttribute("body", "./quote/sell.jsp");
		return "mainView";
	}
	
	@RequestMapping("/quoteBoard")
	public String quoteBoard(QuoteVO vo, Model model,HttpSession session)throws Exception{
		
/*		private int no;
		private int release_price;//�����
		private int quote_price; //��������
		private String id;//���̵�
		private String request_message;//��û����
		private String bank_name;//�����
		private String account_number;//���¹�ȣ
*/		

		System.out.println("��������"+vo.getQuote_price());
		System.out.println("�Ŀ�:"+vo.getPower());
		System.out.println("����:"+vo.getGlass());
		System.out.println("���"+vo.getEquipment());
		System.out.println(vo.getRequest_message());
		System.out.println(vo.getBank_name());
		System.out.println(vo.getAccount_number());
		System.out.println(session.getAttribute("userid"));
		
		String userid = (String)session.getAttribute("userid");
		vo.setUserid(userid);
		
		
		service.insertBoard(vo);
	
		
		

		model.addAttribute("body", "./quote/listBoard.jsp");
		return "mainView";
	}
}
