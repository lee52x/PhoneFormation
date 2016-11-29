package com.phonefo.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.phonefo.admin.domain.AdminB_MemberVO;
import com.phonefo.admin.domain.AdminMemberVO;
import com.phonefo.admin.domain.AdminOnoBoardVO;
import com.phonefo.admin.domain.SearchCriteria;
import com.phonefo.admin.persistence.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService{

	@Inject
	private AdminDAO dao;
	
	@Override//일반멤버검색어리스트
	public List<AdminMemberVO> memberSearchCriteria(SearchCriteria cri) throws Exception {
	
		return dao.listMember(cri);
	}

	@Override//일반멤버검색카운트
	public int memberSearchCount(SearchCriteria cri) throws Exception {
		
		return dao.memberSearchCount(cri);
	}

	@Override//비즈니스멤버검색리스트
	public List<AdminB_MemberVO> b_memberSearchCriteria(SearchCriteria cri) throws Exception {
		
		return dao.listB_Member(cri);
	}
	
	@Override//비즈니스멤버검색카운터
	public int b_memberSearchCount(SearchCriteria cri) throws Exception {
		
		return dao.b_memberSearchCount(cri);
	}
	@Override//1대1문의검색리스트
	public List<AdminOnoBoardVO> onoSearchCriteria(SearchCriteria cri) throws Exception {
		
		return dao.listOno(cri);
	}

	@Override//1대1문의검색카운터
	public int onoSearchCount(SearchCriteria cri) throws Exception {
	
		return dao.OnoSearchCount(cri);
	}


}
