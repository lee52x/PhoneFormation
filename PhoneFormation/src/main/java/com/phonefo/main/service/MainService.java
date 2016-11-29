package com.phonefo.main.service;

import com.phonefo.main.domain.MemberVO;

public interface MainService {
	
	//�Ϲ�ȸ�� ���
	public void insertMember(MemberVO dto)throws Exception;
	//�Ϲ�ȸ�� ���̵� �ߺ��˻�
	public boolean checkId(String userid)throws Exception;
	
	//���ȸ�� ���
	public void insertMemberB(MemberVO vo)throws Exception;
	
	//���ȸ�� ���̵� �ߺ��˻�
	public boolean checkBId(String userid)throws Exception;
	
	
	//�Ϲ�ȸ�� �α����ϱ�
	public boolean check_general_member(String userid,String userpwd)throws Exception;
	
	//���ȸ�� �α����ϱ�
	public boolean check_business_member(String userid,String userpwd)throws Exception;
	
	
	//�α����� �Ϲ�ȸ���� ���̵��� ���� ��������
	public MemberVO getVO(String userid)throws Exception;
	//�α����� ���ȸ���� ���̵��� ���� ��������
	public MemberVO getBVO(String userid)throws Exception;
}
