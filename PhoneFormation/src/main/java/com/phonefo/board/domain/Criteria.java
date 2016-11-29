package com.phonefo.board.domain;

public class Criteria {
	private int page; // ��������������
	private int perPageNum; // �� ȭ�鿡 ������ ���� ��
	private int tno; // �Խ��� ����

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}


	public Criteria() {
		page = 1;
		perPageNum = 10;
		tno=1;
	}// ������

	public int getPage() {
		return page;
	}

	public void setPage(int page) {// ������ ����
		this.page = page;
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}

	public int getPageStart() {
		return (page - 1) * perPageNum;
	}

	@Override
	public String toString() {
		return "Critera [��������=" + page + ", �������� �����=" + perPageNum + "]";
	}
}
