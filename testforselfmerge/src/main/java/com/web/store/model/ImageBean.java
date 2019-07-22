package com.web.store.model;

import java.io.Serializable;


import java.sql.Blob;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="Image")
public class ImageBean implements Serializable {
	private static final long serialVersionUID = 1L;
	Integer Ikey;
	Integer productId;

	Blob productImage1;
//	Blob productImage2;
//	Blob productImage3;
//	Blob productImage4;
	
	String fileName1;
//	String fileName2;
//	String fileName3;
//	String fileName4;
//	@JsonIgnoreProperties("products")
//	ProductBean productBean;
	@JsonIgnore
	private MultipartFile  PdImage1;
	@Override
	public String toString() {
		return "ImageBean [Ikey=" + Ikey + ", productId=" + productId + ", productImage1=" + productImage1
				+ ", fileName1=" + fileName1 + ", PdImage1=" + PdImage1 + "]";
	}
	
	
	public Integer getProductId() {
		return productId;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	
	public Integer getIkey() {
		return Ikey;
	}
	public void setIkey(Integer ikey) {
		Ikey = ikey;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	//productdetailimage
	@Transient
	public MultipartFile getPdImage1() {
		return PdImage1;
	}

	public void setPdImage1(MultipartFile PdImage1) {
		this.PdImage1 = PdImage1;
	}



	public Blob getProductImage1() {
		return productImage1;
	}

	public void setProductImage1(Blob productImage1) {
		this.productImage1 = productImage1;
	}


	public String getFileName1() {
		return fileName1;
	}

	public void setFileName1(String fileName1) {
		this.fileName1 = fileName1;
	}
	}