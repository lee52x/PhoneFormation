package com.phonefo.board.controller;

import java.io.File;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.phonefo.board.domain.PageMaker;
import com.phonefo.board.domain.SearchCriteria;
import com.phonefo.board.domain.BoardVO;
import com.phonefo.board.service.BoardService;

@Controller
@RequestMapping("/phonefo")
public class BoardController {

	@Inject
	private BoardService service;
	@Autowired
    protected JavaMailSender mailSender;

	@RequestMapping("/boardlist")
	public String listPage(@ModelAttribute("cri") SearchCriteria cri, Model model,HttpSession session) throws Exception {
		System.out.println(session.getAttribute("userid"));	
		model.addAttribute("list", service.selectlist(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCount(cri.getTno()));

		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("title", service.selecttitle(cri.getTno()));
		model.addAttribute("body", "./board/boardlist.jsp");

		return "mainView";
	}

	// 입력폼요청
	@RequestMapping(value = "/boardinput", method = RequestMethod.GET)
	public String inputpageGET(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		model.addAttribute("title", service.selecttitle(cri.getTno()));
		model.addAttribute("body", "./board/boardinput.jsp");

		return "mainView";
	}
	
	// 입력
	@RequestMapping(value = "/boardinput", method = RequestMethod.POST)
	public String inputpagePOST(HttpServletRequest request, MultipartFile file, BoardVO board, RedirectAttributes attr,
			HttpSession session) throws Exception {

		board.setWriter((String) session.getAttribute("userid"));
		///여기서부터
		board.setImage("");
		String savedName = file.getOriginalFilename();
		if (savedName != "") {
			String uploadpath = request.getSession().getServletContext().getRealPath("/resources/upload");
			File target = new File(uploadpath, savedName);
			FileCopyUtils.copy(file.getBytes(), target);

			board.setImage("/resources/upload/" + savedName);
		}
		//여기까지
		service.insert(board);

		return "redirect:/phonefo/boardlist?tno=" + board.getTno();
	}

	@RequestMapping("/boardpage")
	public String read(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model,HttpSession session) throws Exception {
		int nextbno = service.select_nextbno(bno);
		int prevbno = service.select_prevbno(bno);
		if(nextbno!=0){
			model.addAttribute("nextbno", nextbno);
			model.addAttribute("nexttitle", service.select_title(nextbno));
		}
		if(prevbno!=0){
			model.addAttribute("prevbno", prevbno);
			model.addAttribute("prevtitle", service.select_title(prevbno));
		}

		service.update_viewcnt(bno);
		BoardVO board = service.selectpage(bno);

		model.addAttribute("body", "./board/boardpage.jsp");
		model.addAttribute(board);

		return "mainView";
	}

	@RequestMapping("/boardremove")
	public String removePage(@RequestParam("bno") int bno, SearchCriteria cri, RedirectAttributes attr)
			throws Exception {
		service.delete(bno);

		attr.addAttribute("tno", cri.getTno());
		attr.addAttribute("page", cri.getPage());
		attr.addAttribute("perPageNum", cri.getPerPageNum());
		attr.addAttribute("searchType", cri.getSearchType());
		attr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/phonefo/boardlist";
	}

	@RequestMapping("/boardupdate")
	public String update(HttpServletRequest request, MultipartFile file, BoardVO board, SearchCriteria cri,
			RedirectAttributes attr) throws Exception {
		String savedName = file.getOriginalFilename();
		if (savedName != "") {
			String uploadpath = request.getSession().getServletContext().getRealPath("/resources/upload");
			File target = new File(uploadpath, savedName);
			FileCopyUtils.copy(file.getBytes(), target);

			board.setImage("/resources/upload/" + savedName);
		}
		attr.addAttribute("bno", board.getBno());
		attr.addAttribute("tno", cri.getTno());
		attr.addAttribute("page", cri.getPage());
		attr.addAttribute("perPageNum", cri.getPerPageNum());
		attr.addAttribute("searchType", cri.getSearchType());
		attr.addAttribute("keyword", cri.getKeyword());
		service.update(board);
		return "redirect:/phonefo/boardpage";
	}

}