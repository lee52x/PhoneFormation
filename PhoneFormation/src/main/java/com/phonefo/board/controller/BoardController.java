package com.phonefo.board.controller;

import javax.inject.Inject;
import javax.servlet.annotation.MultipartConfig;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.phonefo.admin.domain.PageMaker;
import com.phonefo.admin.domain.SearchCriteria;
import com.phonefo.board.domain.BoardVO;
import com.phonefo.board.service.BoardService;


@Controller
@RequestMapping("/phonefo")
public class BoardController {
	
	@Inject
	private BoardService service;
	
	@RequestMapping("/boardlist")
	public String listPage(@ModelAttribute("cri") SearchCriteria cri,@ModelAttribute("tno")int tno,Model model) throws Exception {
		model.addAttribute("list", service.selectlist(cri,tno));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCount(tno));
		
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("title",service.selecttitle(tno));
		model.addAttribute("body", "./board/boardlist.jsp");

		return "mainView";
	}
	//입력폼요청
	@RequestMapping(value = "/boardinput", method = RequestMethod.GET)
	public String inputpageGET(@ModelAttribute("cri") SearchCriteria cri,@ModelAttribute("tno")int tno,Model model) throws Exception {
		model.addAttribute("title",service.selecttitle(tno));
		model.addAttribute("body", "./board/boardinput.jsp");

		return "mainView";
	}
	// 입력
	@RequestMapping(value = "/boardinput", method = RequestMethod.POST)
	public String inputpagePOST(SearchCriteria cri, BoardVO board,@ModelAttribute("tno")int tno ,RedirectAttributes attr) throws Exception {
		board.setWriter("테스트");
		System.out.println(board);
		service.insert(board);
		
		attr.addAttribute("page", cri.getPage());
		attr.addAttribute("perPageNum", cri.getPerPageNum());
		attr.addAttribute("searchType", cri.getSearchType());
		attr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/phonefo/boardlist?tno="+tno;
	}

}
