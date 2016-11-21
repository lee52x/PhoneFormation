package com.phonefo.main.service;

import com.phonefo.main.domain.MemberVO;

public interface MainService {
	
	public void insertMember(MemberVO dto)throws Exception;
	public boolean checkId(String userid)throws Exception;

}
