package com.phonefo.persistence;

import com.phonefo.domain.MemberDTO;

public interface MainDAO {
	
	public void insertMember(MemberDTO dto)throws Exception;
	public boolean checkId(String userid)throws Exception;
}
