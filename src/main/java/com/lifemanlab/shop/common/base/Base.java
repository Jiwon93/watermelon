package com.lifemanlab.shop.common.base;

import java.sql.Date;

public class Base {
	
	
	// uploaded
	private String tableName;
	
	private String seq;
	private Integer type;
	private Integer defaultNy;
	private Integer sort;
	private String path;
	private String originalName;
	private String uuidName;
	private String ext;
	private long size;
	private Integer delNy;
	private String pSeq;
	
	// ccg
	private String ccgSeq;
	private String ccgName;
	private Integer ccgOrder;
	private Integer ccgUseNy;
	private Integer ccgDelNy;
	private Integer ccCount;
	private String ccgNameEng;
	private Date ccgRegDatetime;
	private Date ccgModDatetime;
	
	//regmod
	private String regIp;
	private String regSeq;
	private Integer regDeviceCd;
	private Date regDateTime;
	private Date regDateTimeSvr;
////////////////////////////////////////
	
	//uploaded
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Integer getDefaultNy() {
		return defaultNy;
	}
	public void setDefaultNy(Integer defaultNy) {
		this.defaultNy = defaultNy;
	}
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	public String getUuidName() {
		return uuidName;
	}
	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	public String getExt() {
		return ext;
	}
	public void setExt(String ext) {
		this.ext = ext;
	}
	public long getSize() {
		return size;
	}
	public void setSize(long size) {
		this.size = size;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getpSeq() {
		return pSeq;
	}
	public void setpSeq(String pSeq) {
		this.pSeq = pSeq;
	}
	////////////////////////////////////////
	
	public String getCcgSeq() {
		return ccgSeq;
	}
	public void setCcgSeq(String ccgSeq) {
		this.ccgSeq = ccgSeq;
	}
	public String getCcgName() {
		return ccgName;
	}
	public void setCcgName(String ccgName) {
		this.ccgName = ccgName;
	}
	public Integer getCcgOrder() {
		return ccgOrder;
	}
	public void setCcgOrder(Integer ccgOrder) {
		this.ccgOrder = ccgOrder;
	}
	public Integer getCcgUseNy() {
		return ccgUseNy;
	}
	public void setCcgUseNy(Integer ccgUseNy) {
		this.ccgUseNy = ccgUseNy;
	}
	public Integer getCcgDelNy() {
		return ccgDelNy;
	}
	public void setCcgDelNy(Integer ccgDelNy) {
		this.ccgDelNy = ccgDelNy;
	}
	public Integer getCcCount() {
		return ccCount;
	}
	public void setCcCount(Integer ccCount) {
		this.ccCount = ccCount;
	}
	public String getCcgNameEng() {
		return ccgNameEng;
	}
	public void setCcgNameEng(String ccgNameEng) {
		this.ccgNameEng = ccgNameEng;
	}
	public Date getCcgRegDatetime() {
		return ccgRegDatetime;
	}
	public void setCcgRegDatetime(Date ccgRegDatetime) {
		this.ccgRegDatetime = ccgRegDatetime;
	}
	public Date getCcgModDatetime() {
		return ccgModDatetime;
	}
	public void setCcgModDatetime(Date ccgModDatetime) {
		this.ccgModDatetime = ccgModDatetime;
	}
	
	///////////////////////////////////////////////////////////
	public String getRegIp() {
		return regIp;
	}
	public void setRegIp(String regIp) {
		this.regIp = regIp;
	}
	public String getRegSeq() {
		return regSeq;
	}
	public void setRegSeq(String regSeq) {
		this.regSeq = regSeq;
	}
	public Integer getRegDeviceCd() {
		return regDeviceCd;
	}
	public void setRegDeviceCd(Integer regDeviceCd) {
		this.regDeviceCd = regDeviceCd;
	}
	public Date getRegDateTime() {
		return regDateTime;
	}
	public void setRegDateTime(Date regDateTime) {
		this.regDateTime = regDateTime;
	}
	public Date getRegDateTimeSvr() {
		return regDateTimeSvr;
	}
	public void setRegDateTimeSvr(Date regDateTimeSvr) {
		this.regDateTimeSvr = regDateTimeSvr;
	}
	
	
	
}
