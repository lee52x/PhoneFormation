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
	
	
	//�ڵ��� ����������
	@RequestMapping(value="/machine")
	public List<PhoneVO> samsung(String manufacture)throws Exception{
		
			List<PhoneVO> list=null;
			list = service.machine(manufacture);

		
		return list;
	}
	//�ڵ��� �뷮 ��������
	@RequestMapping(value="/capacity")
	public List<PhoneVO> capacity(String machine)throws Exception{
		
		
		List<PhoneVO> list=null;
		
		list=service.capacity(machine);
		
		return list;
		
	}
	
	
	//�߰��� �������� ���ϱ�
	@RequestMapping(value="/calculator",method=RequestMethod.POST )
	public QuoteVO calculator(String howsend,String manufacture,String machine,String capacity,
			String power,String glass, String equipment, Model model,HttpSession session )throws Exception{
		
		///�ش� �ڵ����� ����,�뷮�� ���� ���, ���¥ �ҷ�����
		PhoneVO vo = service.price(machine,capacity);
		System.out.println("�����:"+vo.getRelease_price());
		System.out.println("�뷮"+vo.getCapacity());
		System.out.println("���¥:"+vo.getRelease_date());
		System.out.println(power);
		System.out.println(glass);
		System.out.println(equipment);
		
		Calendar cal=Calendar.getInstance();
		int sysYear = cal.get(Calendar.YEAR);
		int sysMonth = cal.get(Calendar.MONTH)+1;
		
		int relYear = Integer.parseInt(vo.getRelease_date().substring(0,4));
		int relMonth = Integer.parseInt(vo.getRelease_date().substring(5,7));
		
		int compareYear = (sysYear-relYear)*12;//��-�� * 12
		int compareMonth = sysMonth-relMonth;// �����-����
		int compareDate = compareYear+compareMonth;//���¥�� ���糯¥�� ���� �޼�

		int release_price=vo.getRelease_price();//�����
		int quote_price=0;///��������
		quote_price=release_price-(compareDate*8000);//���̴޼��� ���� �������
		System.out.println("��������:"+release_price);
		///��������
		quote_price=quote_price-100000;//�߰�� 10������ ������ ����
		if(power.equals("���۵�")){
			quote_price=quote_price-150000;
		}
		///��������
		if(glass.equals("�ļ�")){
			quote_price=quote_price-120000;
		}else if(glass.equals("�⽺����")){
			quote_price=quote_price-50000;
		}else if(glass.equals("�⽺����")){
			quote_price=quote_price-25000;
		}else{
			quote_price=quote_price-5000;
		}
		///������
		if(equipment.equals("�⽺����")){
			quote_price=quote_price-50000;
		}else if(equipment.equals("�⽺����")){
			quote_price=quote_price-25000;
		}else{
			quote_price=quote_price-5000;
		}
		
		
		System.out.println("��������:"+quote_price);
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
			return "<font color='red'>��й�ȣ�� ��ġ���� �ʽ��ϴ�.</font>";
		else
			return "<font color='blue'>��й�ȣ�� ��ġ�մϴ�.</font>";
		
		
	}
	
	@RequestMapping("/purchase_request")
	public void purchase_request(PurchaseVO vo)throws Exception{
		
		service.purchase(vo);
		
		
		
	}
}
