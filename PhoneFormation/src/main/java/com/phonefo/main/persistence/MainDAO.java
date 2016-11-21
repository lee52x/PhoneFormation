package com.phonefo.main.persistence;

import com.phonefo.main.domain.MemberDTO;

public interface MainDAO {
	
	public void insertMember(MemberDTO dto)throws Exception;
	public boolean checkId(String userid)throws Exception;
}
