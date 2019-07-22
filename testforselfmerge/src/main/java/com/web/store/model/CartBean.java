 package com.web.store.model;


import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Orders")
public class CartBean {
	private Integer cartID;
	private Integer totalprice;
	private Map<String,CartItemBean> cartitemmap=new HashMap<>();
	private ShipmethodBean shipmethodBean;
	private Integer paymethod; //0為選擇到貨付款 1為先付款 
	private ShopmemberBean shopmemberBean;
	private Date orderdate;
	private String status;
	private String seller;//存ID轉成String
	private CommentBean commentBean;
	private Integer fee;
	
	public Date getOrderdate() {
		return orderdate;
	}
	
	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}
	
	public String getStatus() {
		return status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="shipID")
	public ShipmethodBean getShipmethodBean() {
		return shipmethodBean;
	}

	public void setShipmethodBean(ShipmethodBean shipmethodBean) {
		this.shipmethodBean = shipmethodBean;
	}

	
	//Set不保留插入時的順序 List會保留 暫定Set
	
	//Setter注入必要有預設建構子
	public CartBean(){
	}

	//參數建構子
	public CartBean(Integer no,Integer total){
		this.cartID=no;
		this.totalprice=total;
	}

	//雙向一對多
	@OneToMany
	@JoinColumn(name="cartID")
	public Map<String,CartItemBean> getCartitemmap() {
		return cartitemmap;
	}

	public void setCartitemmap(Map<String,CartItemBean> cartitemmap) {
		this.cartitemmap = cartitemmap;
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getCartID() {
		return cartID;
	}


	public void setCartID(Integer CartID) {
		this.cartID = CartID;
	}
	public Integer getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(Integer totalprice) {
		this.totalprice = totalprice;
	}



	public Integer getPaymethod() {
		return paymethod;
	}

	public void setPaymethod(Integer paymethod) {
		this.paymethod = paymethod;
	}
	
	@ManyToOne
	@JoinColumn(name="shopperId")
	public ShopmemberBean getShopmemberBean() {
		return shopmemberBean;
	}

	public void setShopmemberBean(ShopmemberBean shopmemberBean) {
		this.shopmemberBean = shopmemberBean;
	}

	public String getSeller() {
		return seller;
	}

	public void setSeller(String seller) {
		this.seller = seller;
	}
	
	@OneToOne(cascade = CascadeType.ALL)
	public CommentBean getCommentBean() {
		return commentBean;
	}

	public void setCommentBean(CommentBean commentBean) {
		this.commentBean = commentBean;
	}

	public Integer getFee() {
		return fee;
	}

	public void setFee(Integer fee) {
		this.fee = fee;
	}
	
	
}
