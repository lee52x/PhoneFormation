package com.phonefo.main.service;

import com.phonefo.main.domain.B_MemberVO;
import com.phonefo.main.domain.MemberVO;

public interface MainService {
	
	//�Ϲ�ȸ�� ���
	public void insertMember(MemberVO dto)throws Exception;
	//�Ϲ�ȸ�� ���̵� �ߺ��˻�
	public boolean checkId(String userid)throws Exception;
	
	//���ȸ�� ���
	public void insertMemberB(B_MemberVO vo)throws Exception;
	
	//�Ϲ�ȸ�� �α����ϱ�
	public boolean check_general_member(String userid,String userpwd)throws Exception;

}
