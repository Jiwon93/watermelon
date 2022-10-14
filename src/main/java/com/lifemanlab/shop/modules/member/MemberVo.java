package com.lifemanlab.shop.modules.member;

import com.lifemanlab.shop.common.base.BaseVo;

public class MemberVo extends BaseVo {
	
	private String mmSeq;
	private String sessSeq;
	private String ccSeq;
	private String ccName;
////////////////////////////////////////////////

	public String getMmSeq() {
		return mmSeq;
	}

	public void setMmSeq(String mmSeq) {
		this.mmSeq = mmSeq;
	}

	public String getSessSeq() {
		return sessSeq;
	}

	public void setSessSeq(String sessSeq) {
		this.sessSeq = sessSeq;
	}

	public String getCcSeq() {
		return ccSeq;
	}

	public void setCcSeq(String ccSeq) {
		this.ccSeq = ccSeq;
	}

	public String getCcName() {
		return ccName;
	}

	public void setCcName(String ccName) {
		this.ccName = ccName;
	}
	

}
