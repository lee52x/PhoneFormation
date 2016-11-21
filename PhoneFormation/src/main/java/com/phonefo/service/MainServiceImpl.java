package com.phonefo.service;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.phonefo.domain.MemberDTO;
import com.phonefo.persistence.MainDAO;


@Service
public class MainServiceImpl implements MainService {
	
	@Inject
	MainDAO dao;
	
	@Override
	public void insertMember(MemberDTO dto) throws Exception {
		
		dao.insertMember(dto);
	}

	@Override
	public boolean checkId(String userid) throws Exception {
		boolean result=false;
		result=dao.checkId(userid);
		return result;
	}

}
