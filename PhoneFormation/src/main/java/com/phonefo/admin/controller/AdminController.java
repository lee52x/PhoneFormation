package com.phonefo.admin.controller;

import java.io.File;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.phonefo.admin.domain.AdminOnoBoardVO;
import com.phonefo.admin.domain.AdminRepairVO;
import com.phonefo.admin.domain.PageMaker;
import com.phonefo.admin.domain.SearchCriteria;
import com.phonefo.admin.domain.SlideVO;
import com.phonefo.admin.service.AdminService;
import com.phonefo.board.domain.BoardVO;

@Controller
@RequestMapping("/phonefo")
public class AdminController {

	@Inject
	private AdminService service;

	@RequestMapping("/adminMember")//������ ���
	public String memberListPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		model.addAttribute("list", service.memberSearchCriteria(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.memberSearchCount(cri));
		model.addAttribute("pageMaker", pageMaker);

		model.addAttribute("body", "./admin/adminMember.jsp");

		return "mainView";
	}
	
	@RequestMapping("/adminB_Member")//������ ����Ͻ����
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
	@RequestMapping("/adminOno")//������ 1��1
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
			model.addAttribute("object",service.routeInfo());
			
			model.addAttribute("body", "./admin/adminRouteInfo.jsp");
			
			return "mainView";
		}
		
		
		@RequestMapping("/adminCntInfo")
		public String adminQuoteInfo(Model model)throws Exception{
			//model.addAttribute("object",service.routeInfo());
			
			//model.addAttribute("object",service.allStats());
			
			//�ѹ湮��
			model.addAttribute("totalVisit", service.totalVisit());
			//������ �湮��
			model.addAttribute("todayVisit", service.todayVisit());
			

			//�� �߰�/���� �ŷ����� ����
			model.addAttribute("cntSecondHand", service.cntSecondHand());
			model.addAttribute("profitSecondHand", service.profitSecondHand());
			model.addAttribute("cntRepair", service.cntRepair());
			model.addAttribute("profitRepair", service.profitRepair());
			
			//������ �߰�/���� �ŷ����� ����
			
			model.addAttribute("TodaycntSecondHand", service.TodaycntSecondHand());
			model.addAttribute("TodayprofitSecondHand", service.TodayprofitSecondHand());
			model.addAttribute("TodaycntRepair", service.TodaycntRepair());
			model.addAttribute("TodayprofitRepair", service.TodayprofitRepair());
			
			
			
			
			model.addAttribute("body", "./admin/adminCntInfo.jsp");
			
			return "mainView";
		}
		
		@RequestMapping(value="/adminRepair", method=RequestMethod.GET)
		public String adminRepairGET(Model model,AdminRepairVO vo)throws Exception{

			
			model.addAttribute("body", "./admin/adminRepairInsert.jsp");
			
			return "mainView";
		}
		
		@RequestMapping(value="/adminRepairInsert" ,method=RequestMethod.POST)
		public String adminRepairPOST(Model model,AdminRepairVO vo)throws Exception{
			

			System.out.println("�̸���?"+vo.getName());
			System.out.println(vo);
			service.insertRepairPrice(vo);
			
			model.addAttribute("body", "./admin/adminRepairInsert.jsp");
			
			return "mainView";
		}
		
		@RequestMapping(value="/mainSlide")
		public String mainSlide(Model model)throws Exception{

			model.addAttribute("body", "./admin/mainSlide.jsp");
			return "mainView";
		}
		
		@RequestMapping(value="/mainSlideUpdate", method=RequestMethod.POST)
		public String mainSlide(HttpServletRequest request, MultipartFile file, RedirectAttributes attr,
				HttpSession session,SlideVO vo)throws Exception{
			
			///���⼭����
			vo=new SlideVO();
			String filename = file.getOriginalFilename();
			System.out.println("����="+filename);
			if (filename != "") {
			    String uploadpath = request.getSession().getServletContext().getRealPath("/resources/slide");
			    File target = new File(uploadpath, filename);
				FileCopyUtils.copy(file.getBytes(), target);

				vo.setFile("/resources/slide/" + filename);
			}
			System.out.println(vo);
			
			//�������

			return "redirect:/phonefo/mainSlide";
		}
}
