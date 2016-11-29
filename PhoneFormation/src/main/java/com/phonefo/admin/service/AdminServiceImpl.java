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
	
	@Override//�Ϲݸ���˻����Ʈ
	public List<AdminMemberVO> memberSearchCriteria(SearchCriteria cri) throws Exception {
	
		return dao.listMember(cri);
	}

	@Override//�Ϲݸ���˻�ī��Ʈ
	public int memberSearchCount(SearchCriteria cri) throws Exception {
		
		return dao.memberSearchCount(cri);
	}

	@Override//����Ͻ�����˻�����Ʈ
	public List<AdminB_MemberVO> b_memberSearchCriteria(SearchCriteria cri) throws Exception {
		
		return dao.listB_Member(cri);
	}
	
	@Override//����Ͻ�����˻�ī����
	public int b_memberSearchCount(SearchCriteria cri) throws Exception {
		
		return dao.b_memberSearchCount(cri);
	}
	@Override//1��1���ǰ˻�����Ʈ
	public List<AdminOnoBoardVO> onoSearchCriteria(SearchCriteria cri) throws Exception {
		
		return dao.listOno(cri);
	}

	@Override//1��1���ǰ˻�ī����
	public int onoSearchCount(SearchCriteria cri) throws Exception {
	
		return dao.OnoSearchCount(cri);
	}


}
