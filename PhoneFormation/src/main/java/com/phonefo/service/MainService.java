package com.phonefo.service;

import com.phonefo.domain.MemberDTO;

public interface MainService {
	
	public void insertMember(MemberDTO dto)throws Exception;
	public boolean checkId(String userid)throws Exception;

}
