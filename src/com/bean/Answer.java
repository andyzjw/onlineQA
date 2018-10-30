package com.bean;

import java.io.Serializable;
import java.util.Date;

public class Answer implements Serializable{
	/**答案id */
	private Long id;
	/** 答案内容 */
	private String ansContent;
	/** 回答时间 */
	private Date ansDate;
	/** 问题的id */
	private Long qid;
	/** 问题的信息 */
	private Answer answer;
	
	
	public Answer(String ansContent, Date ansDate, Long qid) {
		this.ansContent = ansContent;
		this.ansDate = ansDate;
		this.qid = qid;
	}
	public Answer(Long id, String ansContent, Date ansDate, Long qid) {
		this.id = id;
		this.ansContent = ansContent;
		this.ansDate = ansDate;
		this.qid = qid;
	}
	public Answer() {
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getAnsContent() {
		return ansContent;
	}
	public void setAnsContent(String ansContent) {
		this.ansContent = ansContent;
	}
	public Date getAnsDate() {
		return ansDate;
	}
	public void setAnsDate(Date ansDate) {
		this.ansDate = ansDate;
	}
	public Long getQid() {
		return qid;
	}
	public void setQid(Long qid) {
		this.qid = qid;
	}
	public Answer getAnswer() {
		return answer;
	}
	public void setAnswer(Answer answer) {
		this.answer = answer;
	}
	@Override
	public String toString() {
		return "Answer [id=" + id + ", ansContent=" + ansContent + ", ansDate=" + ansDate + ", qid=" + qid + "]";
	}
	
	
	
	
	
}
