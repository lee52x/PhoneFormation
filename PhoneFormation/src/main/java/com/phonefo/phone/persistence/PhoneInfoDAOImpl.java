package com.phonefo.phone.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.phonefo.phone.domain.PhoneCapaVO;
import com.phonefo.phone.domain.PhoneColorVO;
import com.phonefo.phone.domain.PhoneInfoVO;
import com.phonefo.phone.domain.Sspec_audioVO;
import com.phonefo.phone.domain.Sspec_audio_valueVO;
import com.phonefo.phone.domain.Sspec_batteryVO;
import com.phonefo.phone.domain.Sspec_battery_valueVO;
import com.phonefo.phone.domain.Sspec_cameraVO;
import com.phonefo.phone.domain.Sspec_camera_valueVO;
import com.phonefo.phone.domain.Sspec_connectVO;
import com.phonefo.phone.domain.Sspec_connect_valueVO;
import com.phonefo.phone.domain.Sspec_displayVO;
import com.phonefo.phone.domain.Sspec_display_valueVO;
import com.phonefo.phone.domain.Sspec_memoryVO;
import com.phonefo.phone.domain.Sspec_memory_valueVO;
import com.phonefo.phone.domain.Sspec_networkVO;
import com.phonefo.phone.domain.Sspec_network_valueVO;
import com.phonefo.phone.domain.Sspec_processorVO;
import com.phonefo.phone.domain.Sspec_processor_valueVO;
import com.phonefo.phone.domain.Sspec_serviceVO;
import com.phonefo.phone.domain.Sspec_service_valueVO;
import com.phonefo.phone.domain.Sspec_specificationsVO;
import com.phonefo.phone.domain.Sspec_specifications_valueVO;

@Repository
public class PhoneInfoDAOImpl implements PhoneInfoDAO {
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public List<PhoneInfoVO> selectInfo(String manufacture) throws Exception {
		return sqlSession.selectList("phone.selectInfo", manufacture);
	}

	@Override
	public List<PhoneColorVO> select_color(int no) throws Exception {
		return sqlSession.selectList("phone.select_color", no);
	}

	@Override
	public List<PhoneCapaVO> select_capacity(int no) throws Exception {
		return sqlSession.selectList("phone.select_capacity", no);
	}

	@Override
	public List<Sspec_processorVO> select_Sspec_processor(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_processor", no);
	}

	@Override
	public List<Sspec_processor_valueVO> select_Sspec_processor_value(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_processor_value", no);
	}

	@Override
	public List<Sspec_displayVO> select_Sspec_display(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_display", no);
	}

	@Override
	public List<Sspec_display_valueVO> select_Sspec_display_value(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_display_value",no);
	}

	@Override
	public List<Sspec_cameraVO> select_Sspec_camera(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_camera", no);
	}

	@Override
	public List<Sspec_camera_valueVO> select_Sspec_camera_value(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_camera_value", no);
	}

	@Override
	public List<Sspec_memoryVO> select_Sspec_memory(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_memory", no);
	}

	@Override
	public List<Sspec_memory_valueVO> select_Sspec_memory_value(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_memory_value", no);
	}

	@Override
	public List<Sspec_networkVO> select_Sspec_network(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_network", no);
	}

	@Override
	public List<Sspec_network_valueVO> select_Sspec_network_value(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_network_value", no);
	}

	@Override
	public List<Sspec_connectVO> select_Sspec_connect(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_connect", no);
	}

	@Override
	public List<Sspec_connect_valueVO> select_Sspec_connect_value(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_connect_value", no);
	}

	@Override
	public List<Sspec_specificationsVO> select_Sspec_specifications(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_specifications", no);
	}

	@Override
	public List<Sspec_specifications_valueVO> select_Sspec_specifications_value(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_specifications_value", no);
	}

	@Override
	public List<Sspec_batteryVO> select_Sspec_battery(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_battery", no);
	}

	@Override
	public List<Sspec_battery_valueVO> select_Sspec_battery_value(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_battery_value", no);
	}

	@Override
	public List<Sspec_audioVO> select_Sspec_audio(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_audio", no);
	}

	@Override
	public List<Sspec_audio_valueVO> select_Sspec_audio_value(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_audio_value", no);
	}

	@Override
	public List<Sspec_serviceVO> select_Sspec_service(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_service", no);
	}

	@Override
	public List<Sspec_service_valueVO> select_Sspec_service_value(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_service_value", no);
	}

}
