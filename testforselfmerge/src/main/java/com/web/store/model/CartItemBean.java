package com.web.store.model;


import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="orderitems")
public class CartItemBean  {
	private Integer seqno;
	private ProductBean productBean;
	private Integer quantity;
	private Integer price;
	private CartBean cartBean;
	
	

	public CartItemBean() {
		// TODO Auto-generated constructor stub
	}
	
	public CartItemBean(ProductBean ProductBean,CartBean CartBean,Integer quantity, Integer price) {
		this.productBean=ProductBean;
		this.cartBean=CartBean;
		this.quantity=quantity;
		this.price=price;
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getSeqno() {
		return seqno;
	}

	public void setSeqno(Integer seqno) {
		this.seqno = seqno;
	}
	

	
	//雙向一對多
	@ManyToOne
	@JoinColumn(name="cartID")
	public CartBean getCartBean() {
		return cartBean;
	}

	public void setCartBean(CartBean cartBean) {
		this.cartBean = cartBean;
	}
	
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	
	//單向一對一
	@OneToOne
	public ProductBean getProductBean() {
		return productBean;
	}

	public void setProductBean(ProductBean productBean) {
		this.productBean = productBean;
	}




}
