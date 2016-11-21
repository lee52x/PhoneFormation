package com.phonefo.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.phonefo.admin.domain.AdminMemberVO;
import com.phonefo.admin.domain.SearchCriteria;
import com.phonefo.admin.persistence.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService{

	@Inject
	private AdminDAO dao;
	
	@Override
	public List<AdminMemberVO> listSearchCriteria(SearchCriteria cri) throws Exception {
	
		return dao.listMember(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		
		return dao.listSearchCount(cri);
	}

}
