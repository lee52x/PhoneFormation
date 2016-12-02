package com.phonefo.quote.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.phonefo.quote.domain.PhoneVO;
import com.phonefo.quote.domain.PurchaseVO;
import com.phonefo.quote.domain.QuoteVO;
import com.phonefo.quote.persistence.PhoneDAO;


@Service
public class PhoneServiceImpl implements PhoneService{
	
	@Inject
	PhoneDAO dao;
	
	@Override
	public List<PhoneVO> machine(String manufacture) throws Exception {
		
		return dao.machine(manufacture);
	}

	@Override
	public List<PhoneVO> capacity(String machine) throws Exception {
			
		return dao.capacity(machine);
	}

	@Override
	public PhoneVO price(String machine, String capacity)throws Exception{
		
		System.out.println(machine);
		System.out.println(capacity);
		return dao.price(machine,capacity);
		
	}

	@Override
	public void insertBoard(QuoteVO vo) throws Exception {
		
		 dao.insertBoard(vo);
	}

	@Override
	public List<QuoteVO> listBoard() throws Exception {
	
		return dao.listBoard();
	}

	@Override
	public QuoteVO quoteConfirm(int no) throws Exception {
		
		return dao.quoteConfirm(no);
		
	}

	@Override
	public void purchase(PurchaseVO vo) throws Exception {
		
		dao.purchase(vo);
		
	}

	
	
	
}
