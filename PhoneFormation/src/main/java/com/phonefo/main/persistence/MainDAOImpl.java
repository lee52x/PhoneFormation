package com.phonefo.main.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.phonefo.main.domain.MemberVO;



@Repository
public class MainDAOImpl implements MainDAO {

	@Inject
	SqlSession sql;
	
	@Override
	public void insertMember(MemberVO dto) throws Exception {
		sql.insert("member.insertMember",dto);
		
	}

	@Override
	public boolean checkId(String userid) throws Exception {
		boolean result;
		 int t = sql.selectOne("member.checkId",userid);
		 if(t==1)result=false;
		 else result=true;
		return result;
	}

}
