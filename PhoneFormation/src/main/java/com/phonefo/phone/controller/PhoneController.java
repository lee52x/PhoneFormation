package com.phonefo.phone.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.phonefo.phone.domain.NoVO;
import com.phonefo.phone.domain.PhoneCapaVO;
import com.phonefo.phone.domain.PhoneColorVO;
import com.phonefo.phone.domain.PhoneInfoVO;
import com.phonefo.phone.domain.spec_audioVO;
import com.phonefo.phone.domain.spec_batteryVO;
import com.phonefo.phone.domain.spec_cameraVO;
import com.phonefo.phone.domain.spec_connectVO;
import com.phonefo.phone.domain.spec_displayVO;
import com.phonefo.phone.domain.spec_memoryVO;
import com.phonefo.phone.domain.spec_networkVO;
import com.phonefo.phone.domain.spec_processorVO;
import com.phonefo.phone.domain.spec_serviceVO;
import com.phonefo.phone.domain.spec_specificationsVO;
import com.phonefo.phone.service.PhoneInfoService;

@Controller
@RequestMapping("/phonefo")
public class PhoneController {
   
   @Inject
   private PhoneInfoService service;
   
   @RequestMapping("/phoneInfo")      //리스트 페이지 출력
   public String phoneInfo(Model model)throws Exception{
      model.addAttribute("list1", service.selectInfo("samsung"));   
      model.addAttribute("list2", service.selectInfo("lg"));   
      model.addAttribute("list3", service.selectInfo("apple"));   
      model.addAttribute("body", "./phone/phoneInfo.jsp");
      return "mainView";
   }
   
   @RequestMapping("/phoneInfo_spec")   //상세보기
   public String phoneInfo_spec(Model model, @ModelAttribute("no")int no)throws Exception{
      PhoneInfoVO phoneinfo= service.select_phone(no);
      String image_path = phoneinfo.getImage();
       
      model.addAttribute("image",image_path.substring(24));
      model.addAttribute("list_color", service.select_color(no));
      model.addAttribute("list_capacity", service.select_capacity(no));
      model.addAttribute("spec_Info", phoneinfo);
      model.addAttribute("spec_processor", service.select_spec_processor(no));
      model.addAttribute("spec_display", service.select_spec_display(no));
      model.addAttribute("spec_camera", service.select_spec_camera(no));
      model.addAttribute("spec_memory", service.select_spec_memory(no));
      model.addAttribute("spec_network", service.select_spec_network(no));
      model.addAttribute("spec_connect", service.select_spec_connect(no));
      model.addAttribute("spec_specifications", service.select_spec_specifications(no));
      model.addAttribute("spec_battery", service.select_spec_battery(no));
      model.addAttribute("spec_audio", service.select_spec_audio(no));
      model.addAttribute("spec_service", service.select_spec_service(no));
      model.addAttribute("body", "./phone/phoneInfo_spec.jsp");
      return "mainView";
   }
   
   @RequestMapping(value="/include", method=RequestMethod.POST)   //입력폼
   public String include(Model model,int no)throws Exception{
      System.out.println("에aaaaa"+no);
      model.addAttribute("list_color", service.select_color(no));
      return "/phone/include";
   }
   
   @RequestMapping(value="/modify", method=RequestMethod.GET)   //변경폼
   public String modify(Model model, @ModelAttribute("no")int no)throws Exception{
      PhoneInfoVO phoneinfo= service.select_phone(no);
      String image_path = phoneinfo.getImage();
      model.addAttribute("image",image_path.substring(24));
      model.addAttribute("list_color", service.select_color(no));
      model.addAttribute("list_capacity", service.select_capacity(no));
      model.addAttribute("spec_Info", phoneinfo);
      model.addAttribute("spec_processor", service.select_spec_processor(no));
      model.addAttribute("spec_display", service.select_spec_display(no));
      model.addAttribute("spec_camera", service.select_spec_camera(no));
      model.addAttribute("spec_memory", service.select_spec_memory(no));
      model.addAttribute("spec_network", service.select_spec_network(no));
      model.addAttribute("spec_connect", service.select_spec_connect(no));
      model.addAttribute("spec_specifications", service.select_spec_specifications(no));
      model.addAttribute("spec_battery", service.select_spec_battery(no));
      model.addAttribute("spec_audio", service.select_spec_audio(no));
      model.addAttribute("spec_service", service.select_spec_service(no));
      model.addAttribute("body", "./phone/modifyphone.jsp");
      return "mainView";
   }
   @RequestMapping(value="/adminAdd", method=RequestMethod.GET)   //입력폼
   public String adminAddGet(Model model)throws Exception{
      model.addAttribute("body", "./phone/adminAdd.jsp");
      return "mainView";
   }
   
   @RequestMapping(value="/adminAdd", method=RequestMethod.POST)   //입력하기
   public String adminAddPost(String[] colorname, String[] capacity, int[] release_price, Model model,  HttpServletRequest request, MultipartFile file, PhoneInfoVO phoneinfoVO, NoVO noVO,
         PhoneCapaVO phonecapaVO, PhoneColorVO phonecolorVO, spec_audioVO audioVO, spec_batteryVO batteryVO, spec_cameraVO cameraVO,
         spec_connectVO connectVO, spec_displayVO displayVO, spec_memoryVO memoryVO, spec_networkVO networkVO, 
         spec_processorVO processorVO,   spec_serviceVO serviceVO, spec_specificationsVO specificationsVO, HttpSession session)throws Exception{
      
      MultipartHttpServletRequest multipartRequest =  (MultipartHttpServletRequest)request; 
      List<MultipartFile> files = multipartRequest.getFiles("file");

      
      String savedlistName = file.getOriginalFilename();
      String uploadlistpath = request.getSession().getServletContext().getRealPath("/resources/images/phone");
      File listtarget = new File(uploadlistpath, savedlistName);
      FileCopyUtils.copy(file.getBytes(), listtarget);
      phoneinfoVO.setImage("/resources/images/phone/"+savedlistName);
      
      service.insert_phone(phoneinfoVO);
      int no=service.selectno();
      audioVO.setNo(no);
      batteryVO.setNo(no);
      cameraVO.setNo(no);
      connectVO.setNo(no);
      displayVO.setNo(no);
      memoryVO.setNo(no);
      networkVO.setNo(no);
      processorVO.setNo(no);
      serviceVO.setNo(no);
      specificationsVO.setNo(no);
      
      for (int i = 0; i < capacity.length; i++) {
         phonecapaVO.setNo(no);
         phonecapaVO.setCapacity(capacity[i]);
         phonecapaVO.setRelease_price(release_price[i]);
         service.insert_capacity(phonecapaVO);
      }
      
      service.insert_audio(audioVO);
      service.insert_battery(batteryVO);
      service.insert_camera(cameraVO);
      service.insert_connect(connectVO);
      service.insert_display(displayVO);
      service.insert_memory(memoryVO);
      service.insert_network(networkVO);
      service.insert_processor(processorVO);
      service.insert_service(serviceVO);
      service.insert_specifications(specificationsVO);
      
      
      for (int i = 1; i < files.size(); i++) {
         String savedName = files.get(i).getOriginalFilename();
         String uploadpath = request.getSession().getServletContext().getRealPath("/resources/images/phone");
         File target = new File(uploadpath, savedName);
         FileCopyUtils.copy(files.get(i).getBytes(), target);
         phonecolorVO.setImage("/resources/images/phone/"+savedName);
         phonecolorVO.setColor(colorname[i-1]);
         phonecolorVO.setNo(no);
         service.insert_color(phonecolorVO);
      }
      
      model.addAttribute("body", "./phone/adminAdd.jsp");
      return "redirect:/phonefo/phoneInfo_spec?no="+no;
   }
   
   @RequestMapping(value="/adminUpdate", method=RequestMethod.POST)
   public String adminUpdatePost(String[] colorname, String[] capacity, int[] release_price, Model model,  HttpServletRequest request, MultipartFile file, PhoneInfoVO phoneinfoVO,
         PhoneCapaVO phonecapaVO, PhoneColorVO phonecolorVO, spec_audioVO audioVO, spec_batteryVO batteryVO, spec_cameraVO cameraVO,
         spec_connectVO connectVO, spec_displayVO displayVO, spec_memoryVO memoryVO, spec_networkVO networkVO, 
         spec_processorVO processorVO,   spec_serviceVO serviceVO, spec_specificationsVO specificationsVO,RedirectAttributes attr)throws Exception{
      
      MultipartHttpServletRequest multipartRequest =  (MultipartHttpServletRequest)request; 
      List<MultipartFile> files = multipartRequest.getFiles("file");
      
      for (int i = 0; i < capacity.length; i++) {
         phonecapaVO.setCapacity(capacity[i]);
         phonecapaVO.setRelease_price(release_price[i]);
         service.delete_capacity(phonecapaVO.getNo());
         service.insert_capacity(phonecapaVO);
      }
      int i;
      for (i = 0; i < files.size()-1; i++) {
    	  String savedName = files.get(i).getOriginalFilename();
    	  System.out.println("파일이름:"+savedName);
			if (savedName != "") {
				String uploadpath = request.getSession().getServletContext().getRealPath("/resources/images/phone");
				File target = new File(uploadpath, savedName);
				FileCopyUtils.copy(files.get(i).getBytes(), target);
				phonecolorVO.setImage("/resources/images/phone/" + savedName);
				phonecolorVO.setColor(colorname[i - 1]);
				service.delete_color(phonecolorVO.getNo());
				service.insert_color(phonecolorVO);
			}
      }
		String savedName = files.get(i).getOriginalFilename();
		if (savedName != "") {
			String uploadpath = request.getSession().getServletContext().getRealPath("/resources/images/phone");
			File target = new File(uploadpath, savedName);
			FileCopyUtils.copy(files.get(i).getBytes(), target);
			phoneinfoVO.setImage("/resources/images/phone/" + savedName);
			service.update_phone(phoneinfoVO);
		}
      service.update_audio(audioVO);
      service.update_battery(batteryVO);
      service.update_camera(cameraVO);
      service.update_connect(connectVO);
      service.update_display(displayVO);
      service.update_memory(memoryVO);
      service.update_network(networkVO);
      service.update_processor(processorVO);
      service.update_service(serviceVO);
      service.update_specifications(specificationsVO);
      
      attr.addAttribute("no", phoneinfoVO.getNo());
      return "redirect:/phonefo/phoneInfo_spec";
   }
}