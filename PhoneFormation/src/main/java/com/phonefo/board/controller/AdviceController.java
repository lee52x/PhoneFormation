package com.phonefo.board.controller;

import java.io.File;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.phonefo.board.domain.AdviceVO;
import com.phonefo.board.service.AdviceService;

@Controller
@RequestMapping("/phonefo")
public class AdviceController {

	@Inject
	private AdviceService service;

	@RequestMapping("/adviceinput")
	public String advicelist(Model model) throws Exception {
		model.addAttribute("body", "./board/inputadvice.jsp");
		return "mainView";
	}

	@RequestMapping("/adviceinputpage")
	public String adviceinput(HttpServletRequest request, MultipartFile file, AdviceVO advice, Model model,
			HttpSession session) throws Exception {
		String savedName = file.getOriginalFilename();
		advice.setImage("");
		if (savedName != null) {
			String uploadpath = request.getSession().getServletContext().getRealPath("/resources/upload");
			File target = new File(uploadpath, savedName);
			FileCopyUtils.copy(file.getBytes(), target);

			advice.setImage("/resources/upload/" + savedName);
		}

		advice.setUserid((String) session.getAttribute("userid"));
		service.insert(advice);
		model.addAttribute("body", "./main/body.jsp");
		return "mainView";
	}
}
