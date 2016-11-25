package com.phonefo.mypage.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.phonefo.mypage.domain.MypageMemberVO;
import com.phonefo.mypage.domain.MypageOnoVO;
import com.phonefo.mypage.persistence.MypageDAO;

@Service
public class MypageServiceImpl implements MypageService {


	@Inject
	private MypageDAO dao;
	
	@Override
	public MypageMemberVO myPageMain(String userid) throws Exception {
		
		return dao.myPageMain(userid);
	}

	@Override
	public int myPageUpdate(MypageMemberVO vo) throws Exception {
		
		return dao.myPageUpdate(vo);
	}

	@Override
	public List<MypageOnoVO> myPageOnoList(String userid) throws Exception {
		
		return dao.myPageOnoList(userid);
	}

}
