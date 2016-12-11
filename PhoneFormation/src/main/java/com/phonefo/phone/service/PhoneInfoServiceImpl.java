package com.phonefo.phone.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.phonefo.phone.domain.PhoneCapaVO;
import com.phonefo.phone.domain.PhoneColorVO;
import com.phonefo.phone.domain.PhoneInfoVO;
import com.phonefo.phone.domain.spec_audioVO;
import com.phonefo.phone.domain.spec_batteryVO;
import com.phonefo.phone.domain.spec_cameraVO;
import com.phonefo.phone.domain.spec_connectVO;
import com.phonefo.phone.domain.spec_displayVO;
import com.phonefo.phone.domain.spec_memoryVO;
import com.phonefo.phone.domain.spec_networkVO;
import com.phonefo.phone.domain.spec_processorVO;
import com.phonefo.phone.domain.spec_serviceVO;
import com.phonefo.phone.domain.spec_specificationsVO;
import com.phonefo.phone.persistence.PhoneInfoDAO;

@Service
public class PhoneInfoServiceImpl implements PhoneInfoService{

	@Inject
	PhoneInfoDAO dao;
	
	@Override
	public List<PhoneInfoVO> selectInfo(String manufacture) throws Exception {
		return dao.selectInfo(manufacture);
	}

	@Override
	public List<PhoneColorVO> select_color(int no) throws Exception {
		return dao.select_color(no);
	}

	@Override
	public List<PhoneCapaVO> select_capacity(int no) throws Exception {
		return dao.select_capacity(no);
	}

	@Override
	public List<spec_processorVO> select_spec_processor(int no) throws Exception {
		return dao.select_spec_processor(no);
	}

	@Override
	public List<spec_displayVO> select_spec_display(int no) throws Exception {
		return dao.select_spec_display(no);
	}

	@Override
	public List<spec_cameraVO> select_spec_camera(int no) throws Exception {
		return dao.select_spec_camera(no);
	}

	@Override
	public List<spec_memoryVO> select_spec_memory(int no) throws Exception {
		return dao.select_spec_memory(no);
	}

	@Override
	public List<spec_networkVO> select_spec_network(int no) throws Exception {
		return dao.select_spec_network(no);
	}

	@Override
	public List<spec_connectVO> select_spec_connect(int no) throws Exception {
		return dao.select_spec_connect(no);
	}

	@Override
	public List<spec_specificationsVO> select_spec_specifications(int no) throws Exception {
		return dao.select_spec_specifications(no);
	}

	@Override
	public List<spec_batteryVO> select_spec_battery(int no) throws Exception {
		return dao.select_spec_battery(no);
	}

	@Override
	public List<spec_audioVO> select_spec_audio(int no) throws Exception {
		return dao.select_spec_audio(no);
	}
	
	@Override
	public List<spec_serviceVO> select_spec_service(int no) throws Exception {
		return dao.select_spec_service(no);
	}

	@Override
	public List<PhoneInfoVO> select_phone(int no) throws Exception {
		return dao.select_phone(no);
	}

	@Override
	public void insert_phone() throws Exception {
		dao.insert_phone();
	}

	@Override
	public int selectno() throws Exception {
		return dao.selectno();
	}

	@Override
	public void insert_color() throws Exception {
		dao.insert_color();
	}

	@Override
	public void insert_capacity() throws Exception {
		dao.insert_capacity();
	}

	@Override
	public void insert_processor() throws Exception {
		dao.insert_processor();
	}

	@Override
	public void insert_display() throws Exception {
		dao.insert_display();
	}

	@Override
	public void insert_camera() throws Exception {
		dao.insert_camera();
	}

	@Override
	public void insert_memory() throws Exception {
		dao.insert_memory();
	}

	@Override
	public void insert_network() throws Exception {
		dao.insert_network();
	}

	@Override
	public void insert_connect() throws Exception {
		dao.insert_connect();
	}

	@Override
	public void insert_specifications() throws Exception {
		dao.insert_specifications();
	}

	@Override
	public void insert_battery() throws Exception {
		dao.insert_battery();
	}

	@Override
	public void insert_audio() throws Exception {
		dao.insert_audio();
	}

	@Override
	public void insert_service() throws Exception {
		dao.insert_service();
	}

}
