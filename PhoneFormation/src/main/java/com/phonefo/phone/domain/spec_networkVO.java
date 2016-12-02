package com.phonefo.phone.domain;

public class spec_networkVO {
	private int no;
	private String type_of_sim_slot;
	private String gsm_2g;
	private String umts_3g;
	private String td_scdma_3g;
	private String fdd_lte_4g;
	private String tdd_lte_4g;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getType_of_sim_slot() {
		return type_of_sim_slot;
	}
	public void setType_of_sim_slot(String type_of_sim_slot) {
		this.type_of_sim_slot = type_of_sim_slot;
	}
	public String getGsm_2g() {
		return gsm_2g;
	}
	public void setGsm_2g(String gsm_2g) {
		this.gsm_2g = gsm_2g;
	}
	public String getUmts_3g() {
		return umts_3g;
	}
	public void setUmts_3g(String umts_3g) {
		this.umts_3g = umts_3g;
	}
	public String getTd_scdma_3g() {
		return td_scdma_3g;
	}
	public void setTd_scdma_3g(String td_scdma_3g) {
		this.td_scdma_3g = td_scdma_3g;
	}
	public String getFdd_lte_4g() {
		return fdd_lte_4g;
	}
	public void setFdd_lte_4g(String fdd_lte_4g) {
		this.fdd_lte_4g = fdd_lte_4g;
	}
	public String getTdd_lte_4g() {
		return tdd_lte_4g;
	}
	public void setTdd_lte_4g(String tdd_lte_4g) {
		this.tdd_lte_4g = tdd_lte_4g;
	}
	@Override
	public String toString() {
		return "Sspec_networkVO [no=" + no + ", type_of_sim_slot=" + type_of_sim_slot + ", gsm_2g=" + gsm_2g
				+ ", umts_3g=" + umts_3g + ", td_scdma_3g=" + td_scdma_3g + ", fdd_lte_4g=" + fdd_lte_4g
				+ ", tdd_lte_4g=" + tdd_lte_4g + "]";
	}
	
}
