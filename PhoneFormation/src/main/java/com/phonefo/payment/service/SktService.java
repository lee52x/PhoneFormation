package com.phonefo.payment.service;

import java.util.List;

import com.phonefo.payment.domain.SktVO;

public interface SktService {
	
	public List<SktVO> payment_signiture(String payment) throws Exception;
	public List<SktVO> payment_signiture_master(String payment) throws Exception;
	public List<SktVO> payment_signiture_classic(String payment) throws Exception;
	
	public List<SktVO> payment_band_yt(String payment)throws Exception;
	public List<SktVO> payment_band_yt_perfect(String payment)throws Exception;
	public List<SktVO> payment_band_yt_7g(String payment)throws Exception;
	public List<SktVO> payment_band_yt_3g(String payment)throws Exception;
	public List<SktVO> payment_band_yt_1g(String payment)throws Exception;
	public List<SktVO> payment_band_yt_save(String payment)throws Exception;
	public List<SktVO> payment_band_yt_option1(String payment)throws Exception;
	public List<SktVO> payment_band_yt_option2(String payment)throws Exception;
	
	
	public List<SktVO> payment_band_data(String payment)throws Exception;
		
	public List<SktVO> payment_everyone_unlimited(String payment)throws Exception;
		
	public List<SktVO> payment_t_together(String payment)throws Exception;

}
