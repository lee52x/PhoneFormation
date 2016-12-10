package com.phonefo.main.persistence;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.phonefo.main.domain.MemberVO;



@Repository
public class MainDAOImpl implements MainDAO{

	@Inject
	SqlSession sql;
	
	@Override
	public void insertMember(MemberVO vo) throws Exception {
		sql.insert("member.insertMember",vo);
	}
	@Override
	public void insertMemberB(MemberVO vo) throws Exception {
		sql.insert("member.insertMemberB",vo);
	}

	@Override
	public boolean checkId(String userid) throws Exception {
		boolean result;
		 int t = sql.selectOne("member.checkId",userid);
		 if(t==1)result=false;
		 else result=true;
		return result;
	}

	@Override
	public boolean check_general_member(String userid, String userpwd) throws Exception {
		Map<String, String> map=new HashMap<>();
		map.put("userid", userid);
		map.put("userpwd", userpwd);
		
		int t = sql.selectOne("member.check_general_memeber", map);//아이디존재여부 확인
				
		if(t==1){//아이디가 존재한다면
			String businessNum=sql.selectOne("member.check_business_member",userid);//businessNum으로 일반회원/기업회원 확인
			if(businessNum==null)//일반
			return true;
		}else{
			return false;
		}
		return false;
	}
	
	@Override
	public boolean check_business_member(String userid, String userpwd) throws Exception {
		Map<String, String> map=new HashMap<>();
		map.put("userid", userid);
		map.put("userpwd", userpwd);
		
		int t = sql.selectOne("member.check_general_memeber", map);//아이디존재여부 확인
				
		if(t==1){//아이디가 존재한다면
			String businessNum=sql.selectOne("member.check_business_member",userid);//businessNum으로 일반회원/기업회원 확인
			if(businessNum!=null)//기업
			return true;
		}else{
			return false;
		}
		return false;
	}


	@Override
	public MemberVO getVO(String userid) throws Exception {
		
		return sql.selectOne("member.getVO", userid);

	}


	@Override
	public MemberVO getBVO(String userid) throws Exception {
		return sql.selectOne("member.getBVO", userid);

	}

	@Override
	public boolean checkBId(String userid) throws Exception {
		boolean result;
		 int t = sql.selectOne("member.checkBId",userid);
		 if(t==1)result=false;
		 else result=true;
		return result;
	}

	@Override
	public void insertBusiness(MemberVO vo) throws Exception {
		sql.insert("insertBusiness",vo);
		
	}
	@Override
	public String selectid(MemberVO vo) throws Exception {
		System.out.println(vo.getUsername());
		System.out.println(vo.getEmail());
		return sql.selectOne("selectid", vo);
	}
	@Override
	public String selectpassword(MemberVO vo) throws Exception {
		System.out.println(vo.getUserid());
		System.out.println(vo.getEmail());
		return sql.selectOne("selectpassword", vo);
	}

}
