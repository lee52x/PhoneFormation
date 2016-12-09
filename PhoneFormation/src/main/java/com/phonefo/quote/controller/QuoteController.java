package com.phonefo.quote.controller;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.phonefo.main.domain.MemberVO;
import com.phonefo.quote.domain.PurchaseVO;
import com.phonefo.quote.domain.QuoteVO;
import com.phonefo.quote.domain.RepairVO;
import com.phonefo.quote.service.PhoneService;

@Controller
@RequestMapping("/phonefo")
public class QuoteController {
	
	
	private static final Object NullPointerException = null;
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
		System.out.println(vo.getAddress());
		
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
		QuoteVO vo = service.quoteConfirm(no);//글 가져오기
		
		if(vo.getState()==2 || vo.getState()==3){
			PurchaseVO pvo=service.selectCompleteId(no);
			if(pvo.getUserid().equals(session.getAttribute("userid")))
				model.addAttribute("pvo",pvo);
			
		}
		
		String userid=(String)session.getAttribute("userid");
		System.out.println("세션아이디:"+userid);
		System.out.println(vo.getAccount_number());
		model.addAttribute("vo", vo);
		model.addAttribute("no",no);
		return "./quote/popup";
	}
	
	////////////////////////////////////////////수리//////////////////////////////////////
	
	@RequestMapping("/repair")
	public String repairMain(Model model, HttpSession session){
		MemberVO vo = (MemberVO)session.getAttribute("loginVO");
		
		model.addAttribute("vo",vo);
		model.addAttribute("body","./quote/repair.jsp");
		return "mainView";
	}
	
	//수리글 등록하기
	@RequestMapping("/insertRepair")
	public String insertRepair(RepairVO vo,Model model,HttpSession session)throws Exception{
		vo.setUserid((String)session.getAttribute("userid"));
		System.out.println(vo.getAddress());
		System.out.println(vo.getHowsend());
		service.insertRepair(vo);

		
		return "redirect:/phonefo/listRepair";
	}
	
	@RequestMapping("/listRepair")
	public String listRepair(Model model)throws Exception{
		
		List<RepairVO> list = service.listRepair();
		
		model.addAttribute("list", list);
		model.addAttribute("body","./quote/listRepair.jsp");
		return "mainView";
	}
	
	@RequestMapping("/popup2")
	public String popup2(Model model,int no,HttpSession session)throws Exception{
		System.out.println(no);
		System.out.println("여기오지?");
		RepairVO vo=service.repairConfirm(no);
		model.addAttribute("vo", vo);
		model.addAttribute("no",no);
		String userid=(String)session.getAttribute("userid");
		System.out.println("세션아이디:"+userid);

		return "./quote/popup2";
	}
}
