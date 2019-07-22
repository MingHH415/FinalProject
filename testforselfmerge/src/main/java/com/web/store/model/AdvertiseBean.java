package com.web.store.model;

import java.io.Serializable;
import java.sql.Blob;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;


// 本類別封裝單筆書籍資料
@Entity
@Table(name="Advertise")
public class AdvertiseBean implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private Integer 	adId ;
	private Integer 	productId ;
	private String  	addiscription;
	private Integer 	qty ;
	private Integer 	click ;
	private Integer 	status ;
	private Integer 	count ;
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	private Double  	price;
	private Double  	spend;
	private int  	budget;
	private Integer  	companyId;
	@Override
	public String toString() {
		return "AdvertiseBean [adId=" + adId + ", productId=" + productId + ", addiscription=" + addiscription
				+ ", qty=" + qty + ", click=" + click + ", status=" + status + ", count=" + count + ", price=" + price
				+ ", spend=" + spend + ", budget=" + budget + ", companyId=" + companyId + "]";
	}
	public String getAddiscription() {
		return addiscription;
	}
	public void setAddiscription(String addiscription) {
		this.addiscription = addiscription;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getAdId() {
		return adId;
	}
	public void setAdId(Integer adId) {
		this.adId = adId;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public Integer getQty() {
		return qty;
	}
	public void setQty(Integer qty) {
		this.qty = qty;
	}
	public Integer getClick() {
		return click;
	}
	public void setClick(Integer click) {
		this.click = click;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Double getSpend() {
		return spend;
	}
	public void setSpend(Double spend) {
		this.spend = spend;
	}
	public int getBudget() {
		return budget;
	}
	public void setBudget(int budget) {
		this.budget = budget;
	}
	public Integer getCompanyId() {
		return companyId;
	}
	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
