package com.phonefo.phone.persistence;

import java.util.List;

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

public interface PhoneInfoDAO {
	public List<PhoneInfoVO> selectInfo(String manufacture)throws Exception;
	public List<PhoneColorVO> select_color(int no)throws Exception;
	public List<PhoneCapaVO> select_capacity(int no)throws Exception;
	public List<PhoneInfoVO> select_phone(int no)throws Exception;
	public List<spec_processorVO> select_spec_processor(int no)throws Exception;
	public List<spec_displayVO> select_spec_display(int no)throws Exception;
	public List<spec_cameraVO> select_spec_camera(int no)throws Exception;
	public List<spec_memoryVO> select_spec_memory(int no)throws Exception;
	public List<spec_networkVO> select_spec_network(int no)throws Exception;
	public List<spec_connectVO> select_spec_connect(int no)throws Exception;
	public List<spec_specificationsVO> select_spec_specifications(int no)throws Exception;
	public List<spec_batteryVO> select_spec_battery(int no)throws Exception;
	public List<spec_audioVO> select_spec_audio(int no)throws Exception;
	public List<spec_serviceVO> select_spec_service(int no)throws Exception;
	public void insert_phone(PhoneInfoVO phoneinfoVO)throws Exception;
	public int selectno()throws Exception;
	public void insert_color(PhoneColorVO phonecolorVO)throws Exception;
	public void insert_capacity(PhoneCapaVO phonecapaVO)throws Exception;
	public void insert_processor(spec_processorVO processorVO)throws Exception;
	public void insert_display(spec_displayVO displayVO)throws Exception;
	public void insert_camera(spec_cameraVO cameraVO)throws Exception;
	public void insert_memory(spec_memoryVO memoryVO)throws Exception;
	public void insert_network(spec_networkVO networkVO)throws Exception;
	public void insert_connect(spec_connectVO connectVO)throws Exception;
	public void insert_specifications(spec_specificationsVO specificationsVO)throws Exception;
	public void insert_battery(spec_batteryVO batteryVO)throws Exception;
	public void insert_audio(spec_audioVO audioVO)throws Exception;
	public void insert_service(spec_serviceVO serviceVO)throws Exception;
}
