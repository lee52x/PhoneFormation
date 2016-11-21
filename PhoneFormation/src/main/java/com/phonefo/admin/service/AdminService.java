package com.phonefo.admin.service;

import java.util.List;

import com.phonefo.admin.domain.AdminMemberVO;
import com.phonefo.admin.domain.SearchCriteria;

public interface AdminService {

	//검색어를 통한 리스트 조회
    public List<AdminMemberVO> listSearchCriteria(SearchCriteria cri)throws Exception;
    public int listSearchCount(SearchCriteria cri)throws Exception;
}
