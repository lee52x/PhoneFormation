package com.phonefo.board.persistence;

import java.util.List;

import com.phonefo.board.domain.Criteria;
import com.phonefo.board.domain.ReplyVO;

public interface ReplyDAO {
	//(Ư�� �Խù� ��ȣ�� ����)��ü�����ȸ
	public List<ReplyVO> list(int bno) throws Exception; 
	
	
	//����Է�
	public void create(ReplyVO vo) throws Exception;
	
	//��ۼ���	
	public void update(ReplyVO vo) throws Exception;
	
	//��ۻ���
	public void delete(int rno)throws Exception;

	//(Ư�� �Խù� ��ȣ�� ����)������ó���� �����ȸ , 
	public List<ReplyVO> listPage(int bno, Criteria cri) throws Exception; 
	
	//Ư�� �Խù� ��ȣ�� ���� ��ü ��� �� ��ȸ
	public int count(int bno)throws Exception;
}
