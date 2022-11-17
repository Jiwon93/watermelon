package com.lifemanlab.shop.modules.item;

import com.lifemanlab.shop.common.base.BaseVo;

public class ItemVo extends BaseVo {
	
	private String itemSeq;
	private String sessSeq;
	private String ccSeq;
	private String ccName;
	////////////////////////////////////////
	public String getItemSeq() {
		return itemSeq;
	}
	public void setItemSeq(String itemSeq) {
		this.itemSeq = itemSeq;
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
