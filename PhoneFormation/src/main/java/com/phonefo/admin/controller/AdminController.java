package com.phonefo.admin.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.phonefo.admin.domain.PageMaker;
import com.phonefo.admin.domain.SearchCriteria;
import com.phonefo.admin.service.AdminService;

@Controller
@RequestMapping("/phonefo")
public class AdminController {

	@Inject
	private AdminService service;

	@RequestMapping("/adminMember")
	public String listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		model.addAttribute("list", service.listSearchCriteria(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listSearchCount(cri));
		model.addAttribute("pageMaker", pageMaker);

		model.addAttribute("body", "./admin/adminMember.jsp");

		return "mainView";
	}

	@RequestMapping("adminOno")
	public void admin_onoBoard() {

	}
}
