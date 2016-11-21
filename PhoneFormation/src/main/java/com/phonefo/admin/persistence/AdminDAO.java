package com.phonefo.admin.persistence;

import java.util.List;

import com.phonefo.admin.domain.AdminMemberVO;
import com.phonefo.admin.domain.SearchCriteria;


public interface AdminDAO {

	   //멤버 카테고리/검색어/페이징/리스트
	   public List<AdminMemberVO> listMember(SearchCriteria cri)throws Exception; 
	  
	   //검색어에 대한 전체 레코드수 
	   public int listSearchCount(SearchCriteria cri)throws Exception;
}
