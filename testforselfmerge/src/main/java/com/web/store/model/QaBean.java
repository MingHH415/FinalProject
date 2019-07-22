package com.web.store.model;


import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="QAtable")
public class QaBean {
	private Integer qaId;
	private String account;
	private Integer pKey;//提問者 單向一對多關係
	private Integer	productId ; //產品 單向一對多
	private String question;
	private Timestamp questiondatetime;
	private String answer;
	private Timestamp answerdatetime;
	
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getQaId() {
		return qaId;
	}
	public void setQaId(Integer qaId) {
		this.qaId = qaId;
	}
	
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}

	
	@Column(name="memberId")
	public Integer getpKey() {
		return pKey;
	}
	public void setpKey(Integer pKey) {
		this.pKey = pKey;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	@Column(name="productId")
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public Timestamp getQuestiondatetime() {
		return questiondatetime;
	}
	public void setQuestiondatetime(Timestamp questiondatetime) {
		this.questiondatetime = questiondatetime;
	}
	public Timestamp getAnswerdatetime() {
		return answerdatetime;
	}
	public void setAnswerdatetime(Timestamp answerdatetime) {
		this.answerdatetime = answerdatetime;
	}

	
	
	
}
