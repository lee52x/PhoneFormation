package com.phonefo.phone.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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

	@Override
	public void insert_phone(PhoneInfoVO phoneinfoVO) throws Exception {
		sqlSession.insert("phone.insert_phone",phoneinfoVO);
	}

	@Override
	public int selectno() throws Exception {
		return sqlSession.selectOne("phone.selectno");
	}

	@Override
	public void insert_color(PhoneColorVO phonecolorVO) throws Exception {
		sqlSession.insert("phone.insert_color", phonecolorVO);
	}

	@Override
	public void insert_capacity(PhoneCapaVO phonecapaVO) throws Exception {
		sqlSession.insert("phone.insert_capacity", phonecapaVO);
	}

	@Override
	public void insert_processor(spec_processorVO processorVO) throws Exception {
		sqlSession.insert("phone.insert_processor", processorVO);
	}

	@Override
	public void insert_display(spec_displayVO displayVO) throws Exception {
		sqlSession.insert("phone.insert_display", displayVO);
	}

	@Override
	public void insert_camera(spec_cameraVO cameraVO) throws Exception {
		sqlSession.insert("phone.insert_camera", cameraVO);
	}

	@Override
	public void insert_memory(spec_memoryVO memoryVO) throws Exception {
		sqlSession.insert("phone.insert_memory", memoryVO);
	}

	@Override
	public void insert_network(spec_networkVO networkVO) throws Exception {
		sqlSession.insert("phone.insert_network", networkVO);
	}

	@Override
	public void insert_connect(spec_connectVO connectVO) throws Exception {
		sqlSession.insert("phone.insert_connect", connectVO);
	}

	@Override
	public void insert_specifications(spec_specificationsVO specificationsVO) throws Exception {
		sqlSession.insert("phone.insert_specifications", specificationsVO);
	}

	@Override
	public void insert_battery(spec_batteryVO batteryVO) throws Exception {
//		System.out.println(batteryVO.getAudio_play());
//		System.out.println(batteryVO.getAudio_play_ondisplay());
		System.out.println(batteryVO.getBattery_capacity());
		System.out.println(batteryVO.getChange_possible());
//		System.out.println(batteryVO.getContinuous_call());
//		System.out.println(batteryVO.getInternet_use_3g());
//		System.out.println(batteryVO.getInternet_use_lte());
//		System.out.println(batteryVO.getInternet_use_wifi());
//		System.out.println(batteryVO.getNo());
//		System.out.println(batteryVO.getVideo_play());
	
		sqlSession.insert("phone.insert_battery", batteryVO);
	}

	@Override
	public void insert_audio(spec_audioVO audioVO) throws Exception {
		sqlSession.insert("phone.insert_audio", audioVO);
	}

	@Override
	public void insert_service(spec_serviceVO serviceVO) throws Exception {
		sqlSession.insert("phone.insert_service", serviceVO);
	}

}
