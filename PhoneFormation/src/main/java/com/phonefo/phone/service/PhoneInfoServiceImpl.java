package com.phonefo.phone.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.phonefo.phone.domain.PhoneCapaVO;
import com.phonefo.phone.domain.PhoneColorVO;
import com.phonefo.phone.domain.PhoneInfoVO;
import com.phonefo.phone.domain.Sspec_processorVO;
import com.phonefo.phone.persistence.PhoneInfoDAO;

@Service
public class PhoneInfoServiceImpl implements PhoneInfoService{

	@Inject
	PhoneInfoDAO dao;
	
	@Override
	public List<PhoneInfoVO> selectInfo(String manufacture) throws Exception {
		return dao.selectInfo(manufacture);
	}

	@Override
	public List<PhoneColorVO> select_color(int no) throws Exception {
		return dao.select_color(no);
	}

	@Override
	public List<PhoneCapaVO> select_capacity(int no) throws Exception {
		return dao.select_capacity(no);
	}

	@Override
	public List<Sspec_processorVO> select_Sspec_processor(int no) throws Exception {
		return dao.select_Sspec_processor(no);
	}

}
