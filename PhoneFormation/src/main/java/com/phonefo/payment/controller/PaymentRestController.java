package com.phonefo.payment.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.phonefo.payment.domain.KtVO;
import com.phonefo.payment.domain.LgVO;
import com.phonefo.payment.domain.SktVO;
import com.phonefo.payment.service.KtServiceDAO;
import com.phonefo.payment.service.LgServiceDAO;
import com.phonefo.payment.service.SktService;

@RestController
@RequestMapping("/phonefo/payment")
public class PaymentRestController {
	
	@Inject
	private SktService skt;
	
	@Inject
	private KtServiceDAO kt;
	
	@Inject
	private LgServiceDAO lg;
	
	
	
	@RequestMapping(value="/skt1")
	public List<SktVO> skt1(String payment) throws Exception{
		
		List<SktVO> list = null;
		list = skt.payment(payment);
		return list;
	}
	
	@RequestMapping(value="/kt1")
	public List<KtVO> kt1(String payment) throws Exception{
		
		List<KtVO> list = null;
		list = kt.payment(payment);
		
		return list;
	}
	
	@RequestMapping(value="/lg1")
	public List<LgVO> lg1(String payment) throws Exception{
		
		List<LgVO> list = null;
		list = lg.payment(payment);
		
		return list;
	}
	
	@RequestMapping(value="/skt2")
	public List<SktVO> skt2(String payment) throws Exception{
		
		List<SktVO> list = null;
		list = skt.payment(payment);
		System.out.println(list);
		return list;
	}
	
	@RequestMapping(value="/kt2")
	public List<KtVO> kt2(String payment) throws Exception{
		
		List<KtVO> list = null;
		list = kt.payment(payment);
		
		return list;
	}
	
	@RequestMapping(value="/lg2")
	public List<LgVO> lg2(String payment) throws Exception{
		
		List<LgVO> list = null;
		list = lg.payment(payment);
		
		return list;
	}
	
	@RequestMapping(value="/compareskt1")
	public List<SktVO> sktselect1(String payment)throws Exception{
		
		List<SktVO> list = null;
		list = skt.paymentAll(payment);
		
		return list;
	}
	
	@RequestMapping(value="/comparekt1")
	public List<KtVO> ktselect1(String payment)throws Exception{
		
		List<KtVO> list = null;
		list = kt.paymentAll(payment);
		
		return list;
	}
	
	@RequestMapping(value="/comparelg1")
	public List<LgVO> lgselect1(String payment)throws Exception{
		
		List<LgVO> list = null;
		list = lg.paymentAll(payment);
		
		return list;
	}
	
	@RequestMapping(value="/compareskt2")
	public List<SktVO> sktselect2(String payment)throws Exception{
		
		List<SktVO> list = null;
		list = skt.paymentAll(payment);
		
		return list;
	}
	
	@RequestMapping(value="/comparekt2")
	public List<KtVO> ktselect2(String payment)throws Exception{
		
		List<KtVO> list = null;
		list = kt.paymentAll(payment);
		
		return list;
	}
	
	@RequestMapping(value="/comparelg2")
	public List<LgVO> lgselect2(String payment)throws Exception{
		
		List<LgVO> list = null;
		list = lg.paymentAll(payment);
		
		return list;
	}


}
