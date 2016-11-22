package com.phonefo.admin.service;

import java.util.List;

import com.phonefo.admin.domain.AdminMemberVO;
import com.phonefo.admin.domain.AdminOnoBoardVO;
import com.phonefo.admin.domain.SearchCriteria;

public interface AdminService {

	//�ɹ��˻�� ���� ����Ʈ ��ȸ
    public List<AdminMemberVO> memberSearchCriteria(SearchCriteria cri)throws Exception;
    //����˻� ī��Ʈ
    public int memberSearchCount(SearchCriteria cri)throws Exception;
    
    //1��1�˻�� ���� ����Ʈ ��ȸ
    public List<AdminOnoBoardVO> onoSearchCriteria(SearchCriteria cri)throws Exception;
    //1��1�˻� ī��Ʈ
    public int onoSearchCount(SearchCriteria cri)throws Exception;
}
