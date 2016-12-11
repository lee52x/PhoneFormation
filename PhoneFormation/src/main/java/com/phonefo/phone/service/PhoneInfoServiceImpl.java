package com.phonefo.phone.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.phonefo.phone.domain.NoVO;
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
	public void insert_phone(PhoneInfoVO phoneinfoVO) throws Exception {
		dao.insert_phone(phoneinfoVO);		
	}

	@Override
	public int selectno() throws Exception {
		return dao.selectno();
	}

	@Override
	public void insert_color(PhoneColorVO phonecolorVO) throws Exception {
		dao.insert_color(phonecolorVO);
	}

	@Override
	public void insert_capacity(PhoneCapaVO phonecapaVO) throws Exception {
		dao.insert_capacity(phonecapaVO);
	}

	@Override
	public void insert_processor(spec_processorVO processorVO) throws Exception {
		dao.insert_processor(processorVO);
	}

	@Override
	public void insert_display(spec_displayVO displayVO) throws Exception {
		dao.insert_display(displayVO);
	}

	@Override
	public void insert_camera(spec_cameraVO cameraVO) throws Exception {
		dao.insert_camera(cameraVO);
	}

	@Override
	public void insert_memory(spec_memoryVO memoryVO) throws Exception {
		dao.insert_memory(memoryVO);
	}

	@Override
	public void insert_network(spec_networkVO networkVO) throws Exception {
		dao.insert_network(networkVO);
	}

	@Override
	public void insert_connect(spec_connectVO connectVO) throws Exception {
		dao.insert_connect(connectVO);
	}

	@Override
	public void insert_specifications(spec_specificationsVO specificationsVO) throws Exception {
		dao.insert_specifications(specificationsVO);
	}

	@Override
	public void insert_battery(spec_batteryVO batteryVO) throws Exception {
		dao.insert_battery(batteryVO);
	}

	@Override
	public void insert_audio(spec_audioVO audioVO) throws Exception {
		dao.insert_audio(audioVO);
	}

	@Override
	public void insert_service(spec_serviceVO serviceVO) throws Exception {
		dao.insert_service(serviceVO);
	}

	@Override
	public void update_phone(PhoneInfoVO phoneinfoVO) throws Exception {
		dao.update_phone(phoneinfoVO);
	}

	@Override
	public void update_color(PhoneColorVO phonecolorVO) throws Exception {
		dao.update_color(phonecolorVO);
	}

	@Override
	public void update_capacity(PhoneCapaVO phonecapaVO) throws Exception {
		dao.update_capacity(phonecapaVO);
	}

	@Override
	public void update_processor(spec_processorVO processorVO) throws Exception {
		dao.update_processor(processorVO);
	}

	@Override
	public void update_display(spec_displayVO displayVO) throws Exception {
		dao.update_display(displayVO);
	}

	@Override
	public void update_camera(spec_cameraVO cameraVO) throws Exception {
		dao.update_camera(cameraVO);
	}

	@Override
	public void update_memory(spec_memoryVO memoryVO) throws Exception {
		dao.update_memory(memoryVO);
	}

	@Override
	public void update_network(spec_networkVO networkVO) throws Exception {
		dao.update_network(networkVO);
	}

	@Override
	public void update_connect(spec_connectVO connectVO) throws Exception {
		dao.update_connect(connectVO);
	}

	@Override
	public void update_specifications(spec_specificationsVO specificationsVO) throws Exception {
		dao.update_specifications(specificationsVO);
	}

	@Override
	public void update_battery(spec_batteryVO batteryVO) throws Exception {
		dao.update_battery(batteryVO);
	}

	@Override
	public void update_audio(spec_audioVO audioVO) throws Exception {
		dao.update_audio(audioVO);
	}

	@Override
	public void update_service(spec_serviceVO serviceVO) throws Exception {
		dao.update_service(serviceVO);
	}

	@Override
	public void delete_phone(int no) throws Exception {
		dao.delete_phone(no);
	}

	@Override
	public void delete_color(int no) throws Exception {
		dao.delete_color(no);
	}

	@Override
	public void delete_capacity(int no) throws Exception {
		dao.delete_capacity(no);
	}

	@Override
	public void delete_processor(int no) throws Exception {
		dao.delete_processor(no);
	}

	@Override
	public void delete_display(int no) throws Exception {
		dao.delete_display(no);
	}

	@Override
	public void delete_camera(int no) throws Exception {
		dao.delete_camera(no);
	}

	@Override
	public void delete_memory(int no) throws Exception {
		dao.delete_memory(no);
	}

	@Override
	public void delete_network(int no) throws Exception {
		dao.delete_network(no);
	}

	@Override
	public void delete_connect(int no) throws Exception {
		dao.delete_connect(no);
	}

	@Override
	public void delete_specifications(int no) throws Exception {
		dao.delete_specifications(no);
	}

	@Override
	public void delete_battery(int no) throws Exception {
		dao.delete_battery(no);
	}

	@Override
	public void delete_audio(int no) throws Exception {
		dao.delete_audio(no);
	}

	@Override
	public void delete_service(int no) throws Exception {
		dao.delete_service(no);
	}

}
