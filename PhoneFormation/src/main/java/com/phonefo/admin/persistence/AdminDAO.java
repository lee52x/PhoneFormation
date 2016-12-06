package com.phonefo.admin.persistence;

import java.util.List;

import com.phonefo.admin.domain.AdminB_MemberVO;
import com.phonefo.admin.domain.AdminCntVO;
import com.phonefo.admin.domain.AdminMemberVO;
import com.phonefo.admin.domain.AdminOnoBoardVO;
import com.phonefo.admin.domain.AdminRouteVO;
import com.phonefo.admin.domain.SearchCriteria;


public interface AdminDAO {

	   //멤버 카테고리/검색어/페이징/리스트
	   public List<AdminMemberVO> listMember(SearchCriteria cri)throws Exception; 
	  
	   //멤버검색어에 대한 전체 레코드수 
	   public int memberSearchCount(SearchCriteria cri)throws Exception;
	   
	   
	   //멤버 카테고리/검색어/페이징/리스트
	   public List<AdminB_MemberVO> listB_Member(SearchCriteria cri)throws Exception; 
	   
	   //멤버검색어에 대한 전체 레코드수 
	   public int b_memberSearchCount(SearchCriteria cri)throws Exception;
	   
	   
	   //1대1문의 카테고리/검색어/페이징/리스트
	   public List<AdminOnoBoardVO> listOno(SearchCriteria cri)throws Exception; 
	   
	   //1대1문의 검색어에 대한 전체 레코드수 
	   public int OnoSearchCount(SearchCriteria cri)throws Exception;
	   
	   //1대1문의 답변하기
	   public int OnoAnser(AdminOnoBoardVO vo)throws Exception;
	   
	   //가입정보 통계
	   public List<AdminRouteVO> routeInfo()throws Exception;
	   
	   //가입정보 통계카운트
	   public int routeInfoCnt()throws Exception;
	   
	   //중고 거래성사 카운트
	   public int quoteDeal()throws Exception;
	      
	   //중고 총금액 카운트
	   public List<AdminCntVO> quotePrice()throws Exception;
	     
	   //수리 거래성사 카운트
	   public int repairDeal()throws Exception;
	   
	   //수리 총금액 카운트
	   public List<AdminCntVO> repairPrice()throws Exception;
	   
	   
	   
	   
	   
	   
	   
}
