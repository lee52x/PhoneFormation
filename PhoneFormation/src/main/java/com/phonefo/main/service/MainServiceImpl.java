package com.phonefo.main.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.phonefo.main.domain.MemberVO;
import com.phonefo.main.persistence.MainDAO;

@Service
public class MainServiceImpl implements MainService {
	
	@Inject
	MainDAO dao;
	
	@Override
	public void insertMember(MemberVO dto) throws Exception {
		
		dao.insertMember(dto);
	}

	@Override
	public boolean checkId(String userid) throws Exception {
		boolean result=false;
		result=dao.checkId(userid);
		return result;
	}

}
