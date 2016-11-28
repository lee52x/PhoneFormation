package com.phonefo.payment.persistence;

import java.util.List;

import com.phonefo.payment.domain.SktVO;

public interface SktDAO {
	
	// T 시그니쳐 요금제 조회
	public List<SktVO> payment_signiture(String payment)throws Exception;
	public List<SktVO> payment_signiture_master(String payment)throws Exception;
	public List<SktVO> payment_signiture_classic(String payment)throws Exception;
	
	// band YF  요금제 조회
	public List<SktVO> payment_band_yt(String payment)throws Exception;
	public List<SktVO> payment_band_yt_perfect(String payment)throws Exception;
	public List<SktVO> payment_band_yt_7g(String payment)throws Exception;
	public List<SktVO> payment_band_yt_3g(String payment)throws Exception;
	public List<SktVO> payment_band_yt_1g(String payment)throws Exception;
	public List<SktVO> payment_band_yt_save(String payment)throws Exception;
	public List<SktVO> payment_band_yt_option1(String payment)throws Exception;
	public List<SktVO> payment_band_yt_option2(String payment)throws Exception;
	
	// band 데이터
	public List<SktVO> payment_band_data(String payment)throws Exception;
	
	// 전국민 무한
	public List<SktVO> payment_everyone_unlimited(String payment)throws Exception;
	
	// T끼리
	public List<SktVO> payment_t_together(String payment)throws Exception;
	
	
}
