package com.phonefo.admin.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.phonefo.admin.domain.AdminOnoBoardVO;
import com.phonefo.admin.domain.PageMaker;
import com.phonefo.admin.domain.SearchCriteria;
import com.phonefo.admin.service.AdminService;

@Controller
@RequestMapping("/phonefo")
public class AdminController {

	@Inject
	private AdminService service;

	@RequestMapping("/adminMember")//관리자 멤버
	public String memberListPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		model.addAttribute("list", service.memberSearchCriteria(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.memberSearchCount(cri));
		model.addAttribute("pageMaker", pageMaker);

		model.addAttribute("body", "./admin/adminMember.jsp");

		return "mainView";
	}
	
	@RequestMapping("/adminB_Member")//관리자 비즈니스멤버
	public String b_memberListPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		model.addAttribute("list", service.b_memberSearchCriteria(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.b_memberSearchCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		
		model.addAttribute("body", "./admin/adminB_Member.jsp");
		
		return "mainView";
	}
	//@RequestMapping(value="/adminOno", method=RequestMethod.GET)
	@RequestMapping("/adminOno")//관리자 1대1
	public String admin_onoBoardGET(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		

			model.addAttribute("list", service.onoSearchCriteria(cri));

			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			pageMaker.setTotalCount(service.onoSearchCount(cri));
			model.addAttribute("pageMaker", pageMaker);

			model.addAttribute("body", "./admin/adminOno.jsp");

			return "mainView";
		}
		@RequestMapping(value="/adminOno", method=RequestMethod.POST)
		public String admin_onoBoardPOST(@ModelAttribute("cri") SearchCriteria cri, Model model,String answer,int ono,RedirectAttributes attr) throws Exception {
			
			AdminOnoBoardVO vo = new AdminOnoBoardVO();
			
			vo.setAnswer(answer);
			vo.setOno(ono);
			
			
			service.OnoAnswer(vo);
			
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			pageMaker.setTotalCount(service.onoSearchCount(cri));
			model.addAttribute("pageMaker", pageMaker);
			
			attr.addFlashAttribute("msg", "SUCCESS");
			
			return "redirect:/phonefo/adminOno";
			

		}
		
		@RequestMapping("/adminRouteInfo")
		public String adminRouteInfo(Model model)throws Exception{
			
			model.addAttribute("body", "./admin/adminRouteInfo.jsp");
			
			return "mainView";
		}
}
