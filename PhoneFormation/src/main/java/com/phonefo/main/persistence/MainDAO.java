package com.phonefo.main.persistence;

import com.phonefo.main.domain.MemberVO;

public interface MainDAO {
	
	public void insertMember(MemberVO dto)throws Exception;
	public boolean checkId(String userid)throws Exception;
}
