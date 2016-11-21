package com.phonefo.admin.persistence;

import java.util.List;

import com.phonefo.admin.domain.AdminMemberVO;
import com.phonefo.admin.domain.SearchCriteria;


public interface AdminDAO {

	   //��� ī�װ�/�˻���/����¡/����Ʈ
	   public List<AdminMemberVO> listMember(SearchCriteria cri)throws Exception; 
	  
	   //�˻�� ���� ��ü ���ڵ�� 
	   public int listSearchCount(SearchCriteria cri)throws Exception;
}
