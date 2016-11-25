package com.phonefo.mypage.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phonefo.admin.domain.PageMaker;
import com.phonefo.admin.domain.SearchCriteria;
import com.phonefo.mypage.service.MypageService;

@Controller
@RequestMapping("/phonefo")
public class MypageController {

	@Inject
	private MypageService service;
	
	@RequestMapping("/mypage")//°ü¸®ÀÚ ¸â¹ö
	public String myPage(Model model,String userid) throws Exception {
		model.addAttribute("object", service.myPageMain(userid));

	
		model.addAttribute("body", "./admin/mypageMain.jsp");

		return "mainView";
	}

}
