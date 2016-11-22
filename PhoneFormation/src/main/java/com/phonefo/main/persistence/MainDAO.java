package com.phonefo.main.persistence;

import com.phonefo.main.domain.B_MemberVO;
import com.phonefo.main.domain.MemberVO;

public interface MainDAO {
	
	public void insertMember(MemberVO dto)throws Exception;
	public boolean checkId(String userid)throws Exception;
	
	public void insertMember(B_MemberVO vo)throws Exception;
	
	//일반회원 로그인하기
	public boolean check_general_member(String userid,String userpwd)throws Exception;
}
