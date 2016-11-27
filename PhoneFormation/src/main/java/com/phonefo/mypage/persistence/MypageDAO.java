package com.phonefo.mypage.persistence;

import java.util.List;

import com.phonefo.mypage.domain.MypageMemberVO;
import com.phonefo.mypage.domain.MypageOnoVO;

public interface MypageDAO {
	
	//������ ����
	public MypageMemberVO myPageMain(String userid)throws Exception;
	
	//������ ����
	public int myPageUpdate(MypageMemberVO vo)throws Exception;
	
	//���� 1��1 ���Ǹ���Ʈ
	public List<MypageOnoVO> myPageOnoList(String userid)throws Exception;
	
	
	//ȸ��Ż�𸮽�Ʈ
	public int myPageDel(String userid)throws Exception;
	
	

}
