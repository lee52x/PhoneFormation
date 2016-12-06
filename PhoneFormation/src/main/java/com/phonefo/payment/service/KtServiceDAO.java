package com.phonefo.payment.service;

import java.util.List;

import com.phonefo.payment.domain.KtVO;

public interface KtServiceDAO {
	public List<KtVO> payment(String payment) throws Exception;
	public List<KtVO> paymentAll(String payment) throws Exception;
	
	public List<KtVO> limited(String payment) throws Exception;
	public List<KtVO> limited99(String payment) throws Exception;
	public List<KtVO> limited77(String payment) throws Exception;
	public List<KtVO> limited67(String payment) throws Exception;
	public List<KtVO> limited61(String payment) throws Exception;
	public List<KtVO> limited51(String payment) throws Exception;
	
	public List<KtVO> all(String payment) throws Exception;
	public List<KtVO> all41(String payment) throws Exception;
	public List<KtVO> all34(String payment) throws Exception;
	public List<KtVO> all28(String payment) throws Exception;
	
	public List<KtVO>yTeen(String payment) throws Exception;
	public List<KtVO>yTeen38(String payment) throws Exception;
	public List<KtVO>yTeen32(String payment) throws Exception;
	public List<KtVO>yTeen27(String payment) throws Exception;
	public List<KtVO>yTeen20(String payment) throws Exception;
	
	public List<KtVO>y24(String payment) throws Exception;
	public List<KtVO>y24_658(String payment) throws Exception;
	public List<KtVO>y24_548(String payment) throws Exception;
	public List<KtVO>y24_493(String payment) throws Exception;
	public List<KtVO>y24_438(String payment) throws Exception;
	public List<KtVO>y24_383(String payment) throws Exception;
	public List<KtVO>y24_328(String payment) throws Exception;
	
	public List<KtVO>lteEgg(String payment) throws Exception;
	public List<KtVO>lteEgg520(String payment) throws Exception;
	public List<KtVO>lteEgg420(String payment) throws Exception;
	public List<KtVO>lteEgg340(String payment) throws Exception;
	public List<KtVO>lteEgg240(String payment) throws Exception;
	public List<KtVO>lteEgg190(String payment) throws Exception;

}
