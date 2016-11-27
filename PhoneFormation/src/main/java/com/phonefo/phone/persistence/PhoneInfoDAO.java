package com.phonefo.phone.persistence;

import java.util.List;

import com.phonefo.phone.domain.PhoneInfoVO;

public interface PhoneInfoDAO {
	public List<PhoneInfoVO> selectInfo(String manufacture)throws Exception;
}
