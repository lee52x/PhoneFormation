package com.phonefo.board.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.phonefo.admin.domain.PageMaker;
import com.phonefo.admin.domain.SearchCriteria;
import com.phonefo.board.service.BoardService;


@Controller
@RequestMapping("/phonefo")
public class BoardController {
	
	@Inject
	private BoardService service;
	
	@RequestMapping("/boardlist")
	public String listPage(@ModelAttribute("cri") SearchCriteria cri,@RequestParam("tno") int tno,Model model) throws Exception {
		model.addAttribute("list", service.selectlist(cri,tno));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCount(tno));
		
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("title",service.selecttitle(tno));
		model.addAttribute("body", "./board/boardlist.jsp");

		return "mainView";
	}
	
	@RequestMapping("/boardinput")
	public String inputpage(@ModelAttribute("cri") SearchCriteria cri,@ModelAttribute("tno") int tno,Model model) throws Exception {

		model.addAttribute("title",service.selecttitle(tno));
		model.addAttribute("body", "./board/boardinput.jsp");

		return "mainView";
	}

}
