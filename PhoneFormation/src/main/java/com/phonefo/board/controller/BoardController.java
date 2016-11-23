package com.phonefo.board.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phonefo.admin.domain.PageMaker;
import com.phonefo.admin.domain.SearchCriteria;
import com.phonefo.board.service.BoardService;


@Controller
@RequestMapping("/phonefo")
public class BoardController {
	
	@Inject
	private BoardService service;
	
	@RequestMapping("/boardlist")
	public void listPage(@ModelAttribute("cri") SearchCriteria cri,Model model) throws Exception {
		int tno = 4;
		model.addAttribute("list", service.listSearchCriteria(cri,tno));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCount(tno));
		model.addAttribute("pageMaker", pageMaker);
	}

}
