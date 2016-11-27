package com.phonefo.mypage.controller;

import javax.inject.Inject;

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
	
	@RequestMapping("/mypageMain")//���������� ������ ȭ��(����)
	public String myPageMain(Model model,String userid) throws Exception {
		model.addAttribute("object", service.myPageMain(userid));

	
		model.addAttribute("body", "./admin/mypageMain.jsp");

		return "mainView";
	}
	@RequestMapping(value="/mypageUpdate", method=RequestMethod.GET)//���������� ������ ���������� �ҷ�����
	public String myPageUpdateGET(Model model,String userid) throws Exception {
		model.addAttribute("object", service.myPageMain(userid));
		model.addAttribute("body", "./admin/mypageUpdate.jsp");
		
		return "mainView";
	}
	@RequestMapping(value="/mypageUpdate", method=RequestMethod.POST)//���������� ������ ����ó��
	public String myPageUpdatePOST(Model model,MypageMemberVO vo,RedirectAttributes attr) throws Exception {
		model.addAttribute("object", service.myPageUpdate(vo));
		attr.addFlashAttribute("msg", "SUCCESS");    	
		
		
		model.addAttribute("body", "./admin/mypageMain.jsp");
		
		return "redirect:/mainView";
	}
	@RequestMapping("/mypageOno")//���������� 1��1����
	public String myPageOnO(Model model,String userid) throws Exception {
		model.addAttribute("list", service.myPageOnoList(userid));
		
		
		model.addAttribute("body", "./admin/mypageOno.jsp");
		
		return "mainView";
	}
	@RequestMapping(value="/mypageOut", method=RequestMethod.GET)//���������� ȸ��Ż�������� �ҷ�����
	public String myPageOutGET(Model model) throws Exception {
		
		model.addAttribute("body", "./admin/mypageOut.jsp");
		
		return "mainView";
	}
	
	@RequestMapping(value="/mypageOut", method=RequestMethod.POST)//���������� ȸ��Ż��ó��
	public String myPageOutPOST(Model model,String userid,RedirectAttributes attr) throws Exception {
		model.addAttribute("result", service.myPageDel(userid));
		
		
		model.addAttribute("body", "./main/body.jsp");
		attr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/mainView";
	}

}
