package com.web.store.model;

import java.io.Serializable;
import java.sql.Blob;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;


// 本類別封裝單筆書籍資料
@Entity
@Table(name="Product")
public class ProductBean implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private Integer 	productId ;
	private String  	title;
	private String  	author;
	private Double  	price;
	private Double  	discount;

	private Blob    	coverImage;	
	private String  	fileName;
	private String  	productNo;
	private String  	discountStr;
	private String  	category;
	private Integer  	stock;
//	private Integer  	companyId;
	//private String  	companyName;
	private MultipartFile  productImage;
	private CompanyBean companyBean;
	private List<QaBean> qabean;
	@Transient
	public MultipartFile getProductImage() {
		return productImage;
	}

	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}
    
	public ProductBean(Integer productID, String title, String author, 
			Double price, Double discount, String fileName, 
			String productNo, Blob coverImage, Integer stock, String category, CompanyBean companyBean) {
		this.productId = productID;
		this.title = title;
		this.author = author;
		this.price = price;
		this.discount = discount;
		this.fileName = fileName;
		this.productNo = productNo;
		this.coverImage = coverImage;
		this.companyBean = companyBean;
		this.category = category;
		this.stock = stock;
	}
	
	public ProductBean(Integer productID, String title, String author, 
			Double price, Double discount, String fileName, 
			String productNo, Blob coverImage, Integer stock, String category) {
		this.productId = productID;
		this.title = title;
		this.author = author;
		this.price = price;
		this.discount = discount;
		this.fileName = fileName;
		this.productNo = productNo;
		this.coverImage = coverImage;
		this.category = category;
		this.stock = stock;
	}
	
	public ProductBean() {
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getProductId() {   // bookId
		return productId;
	}
	public void setProductId(Integer productID) {
		this.productId = productID;
	}
	
	
	

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	private String  priceStr = null;
	@Transient
	public String getPriceStr() {
		return priceStr;
	}

	public void setPriceStr(String priceStr) {
		this.priceStr = priceStr;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
		if (priceStr == null) {
			priceStr = String.valueOf(price);
		}
	}
	public Double getDiscount() {
		return discount;
	}
	public void setDiscount(Double discount) {   //0.8, 0.75
		if (discount  == null) {
			this.discount = 1.0;
			discountStr = "";
			return;
		}
		this.discount = discount;
		
		if (discount == 1) {
			discountStr = "";
		} else {
			int dnt = (int)(discount * 100);
			if (dnt % 10 == 0) {
				discountStr = (dnt / 10) + "折";
			} else {
				discountStr = " "  + dnt + "折";
			} 
			
		}
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getProductNo() {
		return productNo;
	}
	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}
	@Transient
	public String getDiscountStr() {
		return discountStr;
	}	
	public Blob getCoverImage() {
		return coverImage;
	}
	public void setCoverImage(Blob coverImage) {
		this.coverImage = coverImage;
	}

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}
//	public Integer getCompanyId() {
//		return companyId;
//	}
//
//	public void setCompanyId(Integer companyId) {
//		this.companyId = companyId;
//	}
//	public String getCompanyName() {
//		return companyName;
//	}
//
//	public void setCompanyName(String companyName) {
//		this.companyName = companyName;
//	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public void setPrice(Double price) {
		this.price = price;
	}
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="FK_CompanyBean_Id") 
	public CompanyBean getCompanyBean() {
		return companyBean;
	}

	public void setCompanyBean(CompanyBean companyBean) {
		this.companyBean = companyBean;
	}
	
	@OneToMany(fetch = FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name="productId")
	public List<QaBean> getQabean() {
		return qabean;
	}

	public void setQabean(List<QaBean> qabean) {
		this.qabean = qabean;
	}

	
}
