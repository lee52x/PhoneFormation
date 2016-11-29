package com.phonefo.payment.persistence;

import java.util.List;

import com.phonefo.payment.domain.LgVO;

public interface LgDAO {

		public List<LgVO> payment_data(String payment)	throws Exception;
		public List<LgVO> payment_dataNomal(String payment)	throws Exception;
		public List<LgVO> payment_data13(String payment)	throws Exception;
		public List<LgVO> payment_data23(String payment)	throws Exception;
		public List<LgVO> payment_data36(String payment)	throws Exception;
		public List<LgVO> payment_data66(String payment)	throws Exception;
		
		public List<LgVO> payment_special(String payment)	throws Exception;
		public List<LgVO> payment_specialA(String payment)	throws Exception;
		public List<LgVO> payment_specialB(String payment)	throws Exception;
		public List<LgVO> payment_specialC(String payment)	throws Exception;
		public List<LgVO> payment_specialD(String payment)	throws Exception;
		
		public List<LgVO> payment_netInside(String payment)	throws Exception;
		public List<LgVO> payment_netInside34(String payment)	throws Exception;
		public List<LgVO> payment_netInside42(String payment)	throws Exception;
		public List<LgVO> payment_netInside52(String payment)	throws Exception;
				
		public List<LgVO> payment_lte(String payment) throws Exception;
		public List<LgVO> payment_lteSinier(String payment) throws Exception;
		public List<LgVO> payment_lte34(String payment) throws Exception;
		public List<LgVO> payment_lte42(String payment) throws Exception;
		public List<LgVO> payment_lte52(String payment) throws Exception;
		public List<LgVO> payment_lte62(String payment) throws Exception;
		public List<LgVO> payment_lte72(String payment) throws Exception;
		public List<LgVO> payment_lte85(String payment) throws Exception;
		public List<LgVO> payment_lte100(String payment) throws Exception;
		public List<LgVO> payment_lte120(String payment) throws Exception;
}
