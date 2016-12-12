package com.phonefo.main.service;

import java.util.List;

import com.phonefo.admin.domain.ClientVO;
import com.phonefo.admin.domain.SlideVO;
import com.phonefo.main.domain.MemberVO;

public interface MainService {
	
	//일반회원 등록
	public void insertMember(MemberVO vo)throws Exception;
	//일반회원 아이디 중복검사
	public boolean checkId(String userid)throws Exception;
	
	//기업회원 등록
	public void insertMemberB(MemberVO vo)throws Exception;
	
	//기업회원 아이디 중복검사
	public boolean checkBId(String userid)throws Exception;
	
	
	//일반회원 로그인하기
	public boolean check_general_member(String userid,String userpwd)throws Exception;
	
	//기업회원 로그인하기
	public boolean check_business_member(String userid,String userpwd)throws Exception;
	
	
	//로그인한 일반회원의 아이디의 정보 가져오기
	public MemberVO getVO(String userid)throws Exception;
	//로그인한 기업회원의 아이디의 정보 가져오기
	public MemberVO getBVO(String userid)throws Exception;
	
	//등록된 비즈니스멤버 수 가져오기
	public int howBusiness()throws Exception;
	
	
	public List<String> selectid(MemberVO vo) throws Exception;
	public String selectpassword(MemberVO vo) throws Exception;
	public void addVisit()throws Exception;
	public List<ClientVO> getLogo()throws Exception;
	public List<SlideVO> getSlide()throws Exception;
	
	
	
}
