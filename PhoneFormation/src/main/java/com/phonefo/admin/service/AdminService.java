package com.phonefo.admin.service;

import java.util.List;

import com.phonefo.admin.domain.AdminB_MemberVO;
import com.phonefo.admin.domain.AdminMemberVO;
import com.phonefo.admin.domain.AdminOnoBoardVO;
import com.phonefo.admin.domain.AdminRouteVO;
import com.phonefo.admin.domain.SearchCriteria;

public interface AdminService {

	//�ɹ��˻�� ���� ����Ʈ ��ȸ
    public List<AdminMemberVO> memberSearchCriteria(SearchCriteria cri)throws Exception;
    //����˻� ī��Ʈ
    public int memberSearchCount(SearchCriteria cri)throws Exception;
    
    //����Ͻ��ɹ��˻�� ���� ����Ʈ ��ȸ
    public List<AdminB_MemberVO> b_memberSearchCriteria(SearchCriteria cri)throws Exception;
    //����Ͻ�����˻� ī��Ʈ
    public int b_memberSearchCount(SearchCriteria cri)throws Exception;
    
    //1��1�˻�� ���� ����Ʈ ��ȸ
    public List<AdminOnoBoardVO> onoSearchCriteria(SearchCriteria cri)throws Exception;
    //1��1�˻� ī��Ʈ
    public int onoSearchCount(SearchCriteria cri)throws Exception;
    
    //1��1�亯
    public int OnoAnswer(AdminOnoBoardVO vo)throws Exception;
    
    //�������� ���
    public AdminRouteVO routeInfo()throws Exception;
    
  
    
}
