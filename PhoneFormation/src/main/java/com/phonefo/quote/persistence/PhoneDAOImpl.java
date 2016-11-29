package com.phonefo.quote.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.phonefo.quote.domain.PhoneVO;
import com.phonefo.quote.domain.QuoteVO;

@Repository
public class PhoneDAOImpl implements PhoneDAO{

	@Inject
	SqlSession sql;
	
	@Override
	public List<PhoneVO> machine(String manufacture) throws Exception {
		
		List<PhoneVO> list=null;
		list =sql.selectList("quote.machine",manufacture);
		return list;
	}

	@Override
	public List<PhoneVO> capacity(String machine) throws Exception {
		List<PhoneVO> list=null;
		list=sql.selectList("quote.capacity",machine);
		return list;
	}

	@Override
	public PhoneVO price(String machine, String capacity) {
		PhoneVO vo=null;
		Map<String, String> map=new HashMap<>();
		map.put("machine", machine);
		map.put("capacity", capacity);
		
		
		return sql.selectOne("quote.price",map);
		

	}

	@Override
	public void insertBoard(QuoteVO vo) throws Exception {
		
		
		 sql.insert("quote.insertBoard",vo);
		
	}

	@Override
	public List<QuoteVO> listBoard() throws Exception {
		
		
		return sql.selectList("quote.listBoard");
	}

	@Override
	public QuoteVO quoteConfirm(int no) throws Exception {
		
		return sql.selectOne("quote.quoteConfirm",no);
	}
	



}
