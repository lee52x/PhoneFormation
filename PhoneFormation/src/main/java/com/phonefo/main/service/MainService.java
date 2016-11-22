package com.phonefo.main.service;

import com.phonefo.main.domain.B_MemberVO;
import com.phonefo.main.domain.MemberVO;

public interface MainService {
	
	//일반회원 등록
	public void insertMember(MemberVO dto)throws Exception;
	//일반회원 아이디 중복검사
	public boolean checkId(String userid)throws Exception;
	
	//기업회원 등록
	public void insertMemberB(B_MemberVO vo)throws Exception;
	
	//일반회원 로그인하기
	public boolean check_general_member(String userid,String userpwd)throws Exception;

}
