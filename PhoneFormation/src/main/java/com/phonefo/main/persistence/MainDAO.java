package com.phonefo.main.persistence;


import java.util.List;

import com.phonefo.admin.domain.ClientVO;
import com.phonefo.main.domain.MemberVO;

public interface MainDAO {
	
	//�Ϲ�ȸ�� ȸ������
	public void insertMember(MemberVO vo)throws Exception;
	//�Ϲ�ȸ�� ȸ������
	public void insertMemberB(MemberVO vo)throws Exception;
	
	
	//�Ϲ�ȸ�� ���̵��ߺ��˻�
	public boolean checkId(String userid)throws Exception;
	//���ȸ�� ���̵��ߺ��˻�
	public boolean checkBId(String userid)throws Exception;
	
	
	//�Ϲ�ȸ�� �α����ϱ�
	public boolean check_general_member(String userid,String userpwd)throws Exception;
	
	//���ȸ�� �α����ϱ�
	public boolean check_business_member(String userid,String userpwd)throws Exception;
		
	
	//�α����� �Ϲ�ȸ�� ���̵��� ���� ��������
	public MemberVO getVO(String userid)throws Exception;
	//�α����� ���ȸ�� ���̵��� ���� ��������
	public MemberVO getBVO(String userid)throws Exception;
	public void insertBusiness(MemberVO vo)throws Exception;
	public List<String> selectid(MemberVO vo) throws Exception;
	public String selectpassword(MemberVO vo) throws Exception;
	public void addVisit()throws Exception;
	public int howBusiness()throws Exception;
	public List<ClientVO> getLogo()throws Exception;
}
