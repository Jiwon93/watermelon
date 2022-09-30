package com.lifemanlab.shop.modules.member;

import com.lifemanlab.shop.common.base.BaseVo;

public class MemberVo extends BaseVo {
	
	private String mmSeq;
	private String sessSeq;
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


}
