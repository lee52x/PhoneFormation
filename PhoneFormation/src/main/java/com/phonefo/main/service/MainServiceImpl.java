package com.phonefo.main.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.phonefo.admin.domain.ClientVO;
import com.phonefo.admin.domain.SlideVO;
import com.phonefo.main.domain.MemberVO;
import com.phonefo.main.persistence.MainDAO;

@Service
public class MainServiceImpl implements MainService {
	
	@Inject
	MainDAO dao;
	

	@Override
	public boolean checkId(String userid) throws Exception {
		boolean result=false;
		result=dao.checkId(userid);
		return result;
	}
	
	@Override
	public void insertMember(MemberVO dto) throws Exception {

		dao.insertMember(dto);
	}

	@Override
	public void insertMemberB(MemberVO vo) throws Exception {
		dao.insertBusiness(vo);
		dao.insertMemberB(vo);
		
		
		//dao.insertMember(vo);
		
	}

	@Override
	public boolean check_general_member(String userid, String userpwd) throws Exception {
		
		
		boolean result = dao.check_general_member(userid, userpwd);
		return result;
	}

	@Override
	public MemberVO getVO(String userid) throws Exception {
		return dao.getVO(userid);
		
	}
	
	@Override
	public MemberVO getBVO(String userid) throws Exception {
		return dao.getBVO(userid);
	}

	@Override
	public boolean check_business_member(String userid, String userpwd) throws Exception {
		boolean result = dao.check_business_member(userid, userpwd);
		return result;
	}

	@Override
	public boolean checkBId(String userid) throws Exception {
		boolean result=false;
		result=dao.checkBId(userid);
		return result;
	}

	@Override
	public List<String> selectid(MemberVO vo) throws Exception {
		return dao.selectid(vo);
	}

	@Override
	public String selectpassword(MemberVO vo) throws Exception {
		return dao.selectpassword(vo);
	}

	@Override
	public void addVisit() throws Exception {
		 dao.addVisit();
		
	}

	@Override
	public int howBusiness() throws Exception {
		
		return dao.howBusiness();
	}

	@Override
	public List<ClientVO> getLogo() throws Exception {
		return dao.getLogo();
		
	}

	@Override
	public List<SlideVO> getSlide() throws Exception {
		return dao.getSlide();
	}


	




}
