package com.phonefo.payment.persistence;

import java.util.List;

import com.phonefo.payment.domain.SktVO;

public interface SktDAO {
	
	// T �ñ״��� ����� ��ȸ
	public List<SktVO> payment_signiture(String payment)throws Exception;
	public List<SktVO> payment_signiture_master(String payment)throws Exception;
	public List<SktVO> payment_signiture_classic(String payment)throws Exception;
	
	// band YF  ����� ��ȸ
	public List<SktVO> payment_band_yf(String payment)throws Exception;
	
	// band ������
	public List<SktVO> payment_band_data(String payment)throws Exception;
	
	// ������ ����
	public List<SktVO> payment_everyone_unlimited(String payment)throws Exception;
	
	// T����
	public List<SktVO> payment_t_together(String payment)throws Exception;
	
	
}
