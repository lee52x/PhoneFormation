package com.phonefo.quote.persistence;

import java.util.List;

import com.phonefo.quote.domain.PhoneVO;
import com.phonefo.quote.domain.PurchaseVO;
import com.phonefo.quote.domain.QuoteVO;
import com.phonefo.quote.domain.RepairVO;

public interface PhoneDAO {
	
	public List<PhoneVO> machine(String manufacture)throws Exception;

	public List<PhoneVO> capacity(String machine)throws Exception;

	public PhoneVO price(String machine, String capacity);

	public void insertBoard(QuoteVO vo)throws Exception;

	public List<QuoteVO> listBoard()throws Exception;

	public QuoteVO quoteConfirm(int no)throws Exception;
	
	public void purchase(PurchaseVO vo)throws Exception;

	public RepairVO repairPrice(String machine)throws Exception;
	
}
