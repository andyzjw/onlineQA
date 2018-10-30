package com.bean;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Question implements Serializable{
	/** 问题id */
	private Long id;
	/** 问题名 */
	private String title;
	/** 问题描述 */
	private String detailDesc;
	/** 回答次数 */
	private Integer answerCount;
	/** 最后修改时间 */
	private Date lastModified;
	/** 回答信息 */
	private List<Answer> aList;
	
	
	
	public Question(Long id) {
		this.id = id;
	}
	public Question(String title, String detailDesc, Integer answerCount, Date lastModified) {
		this.title = title;
		this.detailDesc = detailDesc;
		this.answerCount = answerCount;
		this.lastModified = lastModified;
	}
	public Question(Long id, String title, String detailDesc, Integer answerCount, Date lastModified) {
		this.id = id;
		this.title = title;
		this.detailDesc = detailDesc;
		this.answerCount = answerCount;
		this.lastModified = lastModified;
	}
	public Question() {
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDetailDesc() {
		return detailDesc;
	}
	public void setDetailDesc(String detailDesc) {
		this.detailDesc = detailDesc;
	}
	public Integer getAnswerCount() {
		return answerCount;
	}
	public void setAnswerCount(Integer answerCount) {
		this.answerCount = answerCount;
	}
	public Date getLastModified() {
		return lastModified;
	}
	public void setLastModified(Date lastModified) {
		this.lastModified = lastModified;
	}
	public List<Answer> getaList() {
		return aList;
	}
	public void setaList(List<Answer> aList) {
		this.aList = aList;
	}
	@Override
	public String toString() {
		return "Question [id=" + id + ", title=" + title + ", detailDesc=" + detailDesc + ", answerCount=" + answerCount
				+ ", lastModified=" + lastModified + "]";
	}
	
	
}
