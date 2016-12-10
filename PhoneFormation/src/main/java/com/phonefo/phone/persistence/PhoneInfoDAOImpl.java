package com.phonefo.phone.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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
	public List<spec_processorVO> select_spec_processor(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_processor", no);
	}

	@Override
	public List<spec_displayVO> select_spec_display(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_display", no);
	}

	@Override
	public List<spec_cameraVO> select_spec_camera(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_camera", no);
	}

	@Override
	public List<spec_memoryVO> select_spec_memory(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_memory", no);
	}
	
	@Override
	public List<spec_networkVO> select_spec_network(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_network", no);
	}

	@Override
	public List<spec_connectVO> select_spec_connect(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_connect", no);
	}

	@Override
	public List<spec_specificationsVO> select_spec_specifications(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_specifications", no);
	}
	
	@Override
	public List<spec_batteryVO> select_spec_battery(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_battery", no);
	}
	
	@Override
	public List<spec_audioVO> select_spec_audio(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_audio", no);
	}

	@Override
	public List<spec_serviceVO> select_spec_service(int no) throws Exception {
		return sqlSession.selectList("phone.select_Sspec_service", no);
	}

	@Override
	public List<PhoneInfoVO> select_phone(int no) throws Exception {
		return sqlSession.selectList("phone.select_phone", no);
	}

}
