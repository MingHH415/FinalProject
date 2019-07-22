package com.web.store.model;

import java.io.Serializable;
import java.sql.Blob;
import java.sql.Clob;

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

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

// 本類別封裝單筆書籍資料
@Entity
@Table(name = "Product")
public class ProductBean implements Serializable {

	private static final long serialVersionUID = 1L;
	private Integer productId;
	private String title;
	private String author;
	
	private Double price;
	private Double discount;
@JsonIgnore
	private Blob coverImage;

	@JsonIgnore
	private Blob Image2;
	@JsonIgnore
	private Blob Image3;
	@JsonIgnore
	private Blob Image4;
	@JsonIgnore
	private Blob Image5;
	private String fileName;
	private String fileName2;
	private String fileName3;

	private String fileName4;
	private String fileName5;
	public Blob getImage5() {
		return Image5;
	}

	public void setImage5(Blob image5) {
		Image5 = image5;
	}

	public String getFileName5() {
		return fileName5;
	}

	public void setFileName5(String fileName5) {
		this.fileName5 = fileName5;
	}
	@Transient
	public MultipartFile getProductImage5() {
		return productImage5;
	}

	public void setProductImage5(MultipartFile productImage5) {
		this.productImage5 = productImage5;
	}

	private String productNo;
	private String discountStr;
	private String category;
	private Integer stock;
	private Integer companyId;
//	@JsonIgnore
//	private Clob pddetail;
	// private String companyName;
	@JsonIgnore
	private MultipartFile productImage;
	@JsonIgnore
	private MultipartFile productImage2;
	@JsonIgnore
	private MultipartFile productImage3;
	@JsonIgnore
	private MultipartFile productImage4;
	@JsonIgnore
	private MultipartFile productImage5;
	public String getModelid() {
		return modelid;
	}

	public void setModelid(String modelid) {
		this.modelid = modelid;
	}

	public String getSystem() {
		return system;
	}

	public void setSystem(String system) {
		this.system = system;
	}

	public String getCPU() {
		return CPU;
	}

	public void setCPU(String cPU) {
		CPU = cPU;
	}

	public String getScreensize() {
		return screensize;
	}

	public void setScreensize(String screensize) {
		this.screensize = screensize;
	}

	public String getScreenpixel() {
		return screenpixel;
	}

	public void setScreenpixel(String screenpixel) {
		this.screenpixel = screenpixel;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getRom() {
		return rom;
	}

	public void setRom(String rom) {
		this.rom = rom;
	}

	public String getRam() {
		return ram;
	}

	public void setRam(String ram) {
		this.ram = ram;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getReleasedate() {
		return releasedate;
	}

	public void setReleasedate(String releasedate) {
		this.releasedate = releasedate;
	}

	public ProductBean getProductBean() {
		return productBean;
	}

	public void setProductBean(ProductBean productBean) {
		this.productBean = productBean;
	}

	private String  	brand;
	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	private String  	modelid;
	private String  	system;
	private String  	CPU;
	private String  	screensize;
	private String  	screenpixel;
	private String  	weight;    
	private String  	rom;
	private String  	ram;
	private String  	color;
	private String  	releasedate;
	@JsonIgnoreProperties("products")
	private ProductBean productBean;
//	private Integer 	productId ;
	
	public ProductBean(Integer productId, String title, String author, Double price, Double discount, Blob coverImage,
			String fileName, Blob image2, Blob image3, Blob image4, String fileName2, String fileName3,
			String fileName4, String productNo, String discountStr, String category, Integer stock, Integer companyId,
			 MultipartFile productImage, MultipartFile productImage2, MultipartFile productImage3,
			MultipartFile productImage4, CompanyBean companyBean, String priceStr) {
		this.productId = productId;
		this.title = title;
		this.author = author;
		this.price = price;
		this.discount = discount;
		this.coverImage = coverImage;
		this.fileName = fileName;
		Image2 = image2;
		Image3 = image3;
		Image4 = image4;
		this.fileName2 = fileName2;
		this.fileName3 = fileName3;
		this.fileName4 = fileName4;
		this.productNo = productNo;
		this.discountStr = discountStr;
		this.category = category;
		this.stock = stock;
		this.companyId = companyId;
//		this.pddetail = pddetail;
		this.productImage = productImage;
		this.productImage2 = productImage2;
		this.productImage3 = productImage3;
		this.productImage4 = productImage4;
		this.companyBean = companyBean;
		this.priceStr = priceStr;
	}

	@Override
	public String toString() {
		return "ProductBean [productId=" + productId + ", title=" + title + ", author=" + author + ", price=" + price
				+ ", discount=" + discount + ", coverImage=" + coverImage + ", Image2=" + Image2 + ", Image3=" + Image3
				+ ", Image4=" + Image4 + ", Image5=" + Image5 + ", fileName=" + fileName + ", fileName2=" + fileName2
				+ ", fileName3=" + fileName3 + ", fileName4=" + fileName4 + ", fileName5=" + fileName5 + ", productNo="
				+ productNo + ", discountStr=" + discountStr + ", category=" + category + ", stock=" + stock
				+ ", companyId=" + companyId + ", productImage=" + productImage + ", productImage2=" + productImage2
				+ ", productImage3=" + productImage3 + ", productImage4=" + productImage4 + ", productImage5="
				+ productImage5 + ", brand=" + brand + ", modelid=" + modelid + ", system=" + system + ", CPU=" + CPU
				+ ", screensize=" + screensize + ", screenpixel=" + screenpixel + ", weight=" + weight + ", rom=" + rom
				+ ", ram=" + ram + ", color=" + color + ", releasedate=" + releasedate + ", productBean=" + productBean
				+ ", companyBean=" + companyBean + ", priceStr=" + priceStr + "]";
	}

	public Blob getImage3() {
		return Image3;
	}

	public void setImage3(Blob image3) {
		Image3 = image3;
	}

	public Blob getImage4() {
		return Image4;
	}

	public void setImage4(Blob image4) {
		Image4 = image4;
	}

	public String getFileName3() {
		return fileName3;
	}

	public void setFileName3(String fileName3) {
		this.fileName3 = fileName3;
	}

	public String getFileName4() {
		return fileName4;
	}

	public void setFileName4(String fileName4) {
		this.fileName4 = fileName4;
	}

	@Transient
	public MultipartFile getProductImage3() {
		return productImage3;
	}

	public void setProductImage3(MultipartFile productImage3) {
		this.productImage3 = productImage3;
	}

	@Transient
	public MultipartFile getProductImage4() {
		return productImage4;
	}

	public void setProductImage4(MultipartFile productImage4) {
		this.productImage4 = productImage4;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public void setDiscountStr(String discountStr) {
		this.discountStr = discountStr;
	}

	private CompanyBean companyBean;

	@Transient
	public MultipartFile getProductImage() {
		return productImage;
	}

	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}

	public ProductBean() {
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getProductId() { // bookId
		return productId;
	}

	public void setProductId(Integer productID) {
		this.productId = productID;
	}

	public Blob getImage2() {
		return Image2;
	}

	public void setImage2(Blob image2) {
		Image2 = image2;
	}

	public String getFileName2() {
		return fileName2;
	}

	public void setFileName2(String fileName2) {
		this.fileName2 = fileName2;
	}

	@Transient
	public MultipartFile getProductImage2() {
		return productImage2;
	}

	public void setProductImage2(MultipartFile productImage2) {
		this.productImage2 = productImage2;
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

	private String priceStr = null;

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

	public void setDiscount(Double discount) { // 0.8, 0.75
		if (discount == null) {
			this.discount = 1.0;
			discountStr = "";
			return;
		}
		this.discount = discount;

		if (discount == 1) {
			discountStr = "";
		} else {
			int dnt = (int) (discount * 100);
			if (dnt % 10 == 0) {
				discountStr = (dnt / 10) + "折";
			} else {
				discountStr = " " + dnt + "折";
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

	public Integer getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "FK_CompanyBean_Id")
	public CompanyBean getCompanyBean() {
		return companyBean;
	}

	public void setCompanyBean(CompanyBean companyBean) {
		this.companyBean = companyBean;
	}

//	public Clob getPddetail() {
//		return pddetail;
//	}

//	public void setPddetail(Clob pddetail) {
//		this.pddetail = pddetail;
//	}
}
