package com.phonefo.admin.service;

import java.util.List;

import com.phonefo.admin.domain.AdminMemberVO;
import com.phonefo.admin.domain.SearchCriteria;

public interface AdminService {

	//�˻�� ���� ����Ʈ ��ȸ
    public List<AdminMemberVO> listSearchCriteria(SearchCriteria cri)throws Exception;
    public int listSearchCount(SearchCriteria cri)throws Exception;
}
