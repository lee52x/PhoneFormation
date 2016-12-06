package com.phonefo.admin.persistence;

import java.util.List;

import com.phonefo.admin.domain.AdminB_MemberVO;
import com.phonefo.admin.domain.AdminCntVO;
import com.phonefo.admin.domain.AdminMemberVO;
import com.phonefo.admin.domain.AdminOnoBoardVO;
import com.phonefo.admin.domain.AdminRouteVO;
import com.phonefo.admin.domain.SearchCriteria;


public interface AdminDAO {

	   //��� ī�װ�/�˻���/����¡/����Ʈ
	   public List<AdminMemberVO> listMember(SearchCriteria cri)throws Exception; 
	  
	   //����˻�� ���� ��ü ���ڵ�� 
	   public int memberSearchCount(SearchCriteria cri)throws Exception;
	   
	   
	   //��� ī�װ�/�˻���/����¡/����Ʈ
	   public List<AdminB_MemberVO> listB_Member(SearchCriteria cri)throws Exception; 
	   
	   //����˻�� ���� ��ü ���ڵ�� 
	   public int b_memberSearchCount(SearchCriteria cri)throws Exception;
	   
	   
	   //1��1���� ī�װ�/�˻���/����¡/����Ʈ
	   public List<AdminOnoBoardVO> listOno(SearchCriteria cri)throws Exception; 
	   
	   //1��1���� �˻�� ���� ��ü ���ڵ�� 
	   public int OnoSearchCount(SearchCriteria cri)throws Exception;
	   
	   //1��1���� �亯�ϱ�
	   public int OnoAnser(AdminOnoBoardVO vo)throws Exception;
	   
	   //�������� ���
	   public List<AdminRouteVO> routeInfo()throws Exception;
	   
	   //�������� ���ī��Ʈ
	   public int routeInfoCnt()throws Exception;
	   
	   //�߰� �ŷ����� ī��Ʈ
	   public int quoteDeal()throws Exception;
	      
	   //�߰� �ѱݾ� ī��Ʈ
	   public List<AdminCntVO> quotePrice()throws Exception;
	     
	   //���� �ŷ����� ī��Ʈ
	   public int repairDeal()throws Exception;
	   
	   //���� �ѱݾ� ī��Ʈ
	   public List<AdminCntVO> repairPrice()throws Exception;
	   
	   
	   
	   
	   
	   
	   
}
