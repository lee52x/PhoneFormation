package com.phonefo.main.service;

import com.phonefo.main.domain.MemberDTO;

public interface MainService {
	
	public void insertMember(MemberDTO dto)throws Exception;
	public boolean checkId(String userid)throws Exception;

}
