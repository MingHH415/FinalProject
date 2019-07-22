package com.web.store.model;

import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Comments")
public class CommentBean {
	private Integer commentId;
	private CartBean cartBean;
	private Integer id;
//	private Blob picture;
	private Double ranking;
	private String comment;
	private Timestamp commenttime;
	private String response;
	private Timestamp responsetime;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getCommentId() {
		return commentId;
	}
	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}
	
	@OneToOne(cascade = CascadeType.ALL)
	public CartBean getCartBean() {
		return cartBean;
	}
	public void setCartBean(CartBean cartBean) {
		this.cartBean = cartBean;
	}
//	public Blob getPicture() {
//		return picture;
//	}
//	public void setPicture(Blob picture) {
//		this.picture = picture;
//	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Timestamp getCommenttime() {
		return commenttime;
	}
	public void setCommenttime(Timestamp commenttime) {
		this.commenttime = commenttime;
	}
	public String getResponse() {
		return response;
	}
	public void setResponse(String response) {
		this.response = response;
	}
	public Timestamp getResponsetime() {
		return responsetime;
	}
	public void setResponsetime(Timestamp responsetime) {
		this.responsetime = responsetime;
	}
	@Column(name="companyId")
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Double getRanking() {
		return ranking;
	}
	public void setRanking(Double ranking) {
		this.ranking = ranking;
	}
}
