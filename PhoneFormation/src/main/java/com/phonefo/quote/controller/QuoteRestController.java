package com.phonefo.quote.controller;

import java.lang.reflect.Member;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpMethod;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.phonefo.main.domain.MemberVO;
import com.phonefo.quote.domain.PhoneVO;
import com.phonefo.quote.domain.PurchaseVO;
import com.phonefo.quote.domain.QuoteVO;
import com.phonefo.quote.service.PhoneService;

@RestController
@RequestMapping("/phonefo")
public class QuoteRestController {
	
	@Inject
	PhoneService service;
	
	
	//핸드폰 기계명가져오기
	@RequestMapping(value="/machine")
	public List<PhoneVO> samsung(String manufacture)throws Exception{
		
			List<PhoneVO> list=null;
			list = service.machine(manufacture);

		
		return list;
	}
	//핸드폰 용량 가져오기
	@RequestMapping(value="/capacity")
	public List<PhoneVO> capacity(String machine)throws Exception{
		
		
		List<PhoneVO> list=null;
		
		list=service.capacity(machine);
		
		return list;
		
	}
	
	
	//중고폰 견적가격 구하기
	@RequestMapping(value="/calculator",method=RequestMethod.POST )
	public QuoteVO calculator(String howsend,String manufacture,String machine,String capacity,
			String power,String glass, String equipment, Model model,HttpSession session )throws Exception{
		
		///해당 핸드폰의 기기명,용량에 따른 출고가, 출고날짜 불러오기
		PhoneVO vo = service.price(machine,capacity);
		System.out.println("출고가격:"+vo.getRelease_price());
		System.out.println("용량"+vo.getCapacity());
		System.out.println("출고날짜:"+vo.getRelease_date());
		System.out.println(power);
		System.out.println(glass);
		System.out.println(equipment);
		
		Calendar cal=Calendar.getInstance();
		int sysYear = cal.get(Calendar.YEAR);
		int sysMonth = cal.get(Calendar.MONTH)+1;
		
		int relYear = Integer.parseInt(vo.getRelease_date().substring(0,4));
		int relMonth = Integer.parseInt(vo.getRelease_date().substring(5,7));
		
		int compareYear = (sysYear-relYear)*12;//년-년 * 12
		int compareMonth = sysMonth-relMonth;// 현재달-출고달
		int compareDate = compareYear+compareMonth;//출고날짜와 현재날짜의 차이 달수

		int release_price=vo.getRelease_price();//출고가격
		int quote_price=0;///견적가격
		quote_price=release_price-(compareDate*8000);//차이달수에 따른 견적계산
		System.out.println("기기출고가격:"+release_price);
		///전원상태
		quote_price=quote_price-100000;//중고라 10만원은 무조건 차감
		if(power.equals("미작동")){
			quote_price=quote_price-150000;
		}
		///액정상태
		if(glass.equals("파손")){
			quote_price=quote_price-120000;
		}else if(glass.equals("기스심함")){
			quote_price=quote_price-50000;
		}else if(glass.equals("기스보통")){
			quote_price=quote_price-25000;
		}else{
			quote_price=quote_price-5000;
		}
		///기기상태
		if(equipment.equals("기스심함")){
			quote_price=quote_price-50000;
		}else if(equipment.equals("기스보통")){
			quote_price=quote_price-25000;
		}else{
			quote_price=quote_price-5000;
		}
		
		
		System.out.println("견적가격:"+quote_price);
		int decrease_price= release_price-quote_price;
		
		

		
		QuoteVO vo2=new QuoteVO();
		vo2.setQuote_price(quote_price);
		vo2.setRelease_price(release_price);

		session.setAttribute("quote_price", quote_price);
		session.setAttribute("release_price", release_price);
		session.setAttribute("decrease_price", "-"+decrease_price);
		session.setAttribute("power", power);
		session.setAttribute("glass", glass);
		session.setAttribute("equipment", equipment);
		session.setAttribute("manufacture", manufacture);
		session.setAttribute("machine", machine);
		session.setAttribute("capacity", capacity);
		
		return vo2;
		
		
		
 	}
	
	@RequestMapping("/quotePwd")
	public String QuotePwd(String userpwd,HttpSession session){
		MemberVO vo = (MemberVO)session.getAttribute("loginVO");
		if(!vo.getUserpwd().equals(userpwd))
			return "<font color='red'>비밀번호가 일치하지 않습니다.</font>";
		else
			return "<font color='blue'>비밀번호가 일치합니다.</font>";
		
		
	}
	
	@RequestMapping("/purchase_request")
	public void purchase_request(PurchaseVO vo)throws Exception{
		
		service.purchase(vo);
		
		
		
	}
}
