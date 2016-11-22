package com.phonefo.payment.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.phonefo.payment.domain.SktVO;

public class SktDAOImpl implements SktDAO {
	
	@Inject
	private SqlSession sqlSesstion;

	@Override
	public List<SktVO> payment(String payment) throws Exception {
		return sqlSesstion.selectList("skt.payment", payment);
	}

}