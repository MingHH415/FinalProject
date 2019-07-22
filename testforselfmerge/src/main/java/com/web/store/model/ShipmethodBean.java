package com.web.store.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="shippingmethod")
public class ShipmethodBean {

	private Integer shipId;
	private String recivername;
	private String reciverphone;
	private String address;
	private String method;
	private Integer shippingfee;
	private CartBean cartbean;
	
	@OneToOne(mappedBy="shipmethodBean",cascade = CascadeType.ALL)
	public CartBean getCartbean() {
		return cartbean;
	}
	public void setCartbean(CartBean cartbean) {
		this.cartbean = cartbean;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getShipId() {
		return shipId;
	}
	public void setShipId(Integer shipId) {
		this.shipId = shipId;
	}


	public String getRecivername() {
		return recivername;
	}
	public void setRecivername(String recivername) {
		this.recivername = recivername;
	}
	public String getReciverphone() {
		return reciverphone;
	}
	public void setReciverphone(String reciverphone) {
		this.reciverphone = reciverphone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public Integer getShippingfee() {
		return shippingfee;
	}
	public void setShippingfee(Integer shippingfee) {
		this.shippingfee = shippingfee;
	}

}
