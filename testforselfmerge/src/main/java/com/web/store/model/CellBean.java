//package com.web.store.model;
//
//import java.io.Serializable;
//
//import javax.persistence.CascadeType;
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.OneToOne;
//import javax.persistence.Table;
//
//import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
//// 本類別封裝單筆書籍資料
//@Entity
//@Table(name="Cellphone")
//public class CellBean implements Serializable {
//	
//	
//	@Override
//	public String toString() {
//		return "CellBean [cellphoneId=" + cellphoneId + ", brand=" + brand + ", modelid=" + modelid + ", system="
//				+ system + ", CPU=" + CPU + ", screensize=" + screensize + ", screenpixel=" + screenpixel + ", weight="
//				+ weight + ", rom=" + rom + ", ram=" + ram + ", color=" + color + ", releasedate=" + releasedate
//				+ ", ProductBean=" + productBean + ", productId=" + productId + "]";
//	}
//	private static final long serialVersionUID = 1L;
//	private Integer 	cellphoneId ;
//	private String  	brand;
//	private String  	modelid;
//	private String  	system;
//	private String  	CPU;
//	private String  	screensize;
//	private String  	screenpixel;
//	private String  	weight;    
//	private String  	rom;
//	private String  	ram;
//	private String  	color;
//	private String  	releasedate;
//	@JsonIgnoreProperties("products")
//	private ProductBean productBean;
//	private Integer 	productId ;
//	@Id
//	@GeneratedValue(strategy=GenerationType.IDENTITY)
//	public Integer getCellphoneId() {
//		return cellphoneId;
//	}
//	public void setCellphoneId(Integer cellphoneId) {
//		this.cellphoneId = cellphoneId;
//	}
//	public String getBrand() {
//		return brand;
//	}
//	public void setBrand(String brand) {
//		this.brand = brand;
//	}
//	public String getModelid() {
//		return modelid;
//	}
//	public void setModelid(String modelid) {
//		this.modelid = modelid;
//	}
//	public String getSystem() {
//		return system;
//	}
//	public void setSystem(String system) {
//		this.system = system;
//	}
//	public String getCPU() {
//		return CPU;
//	}
//	public void setCPU(String CPU) {
//		this.CPU = CPU;
//	}
//	public String getScreensize() {
//		return screensize;
//	}
//	public void setScreensize(String screensize) {
//		this.screensize = screensize;
//	}
//	public String getScreenpixel() {
//		return screenpixel;
//	}
//	public void setScreenpixel(String screenpixel) {
//		this.screenpixel = screenpixel;
//	}
//	public String getWeight() {
//		return weight;
//	}
//	public void setWeight(String weight) {
//		this.weight = weight;
//	}
//	public String getRom() {
//		return rom;
//	}
//	public void setRom(String rom) {
//		this.rom = rom;
//	}
//	public String getRam() {
//		return ram;
//	}
//	public void setRam(String ram) {
//		this.ram = ram;
//	}
//	public String getColor() {
//		return color;
//	}
//	public void setColor(String color) {
//		this.color = color;
//	}
//	public String getReleasedate() {
//		return releasedate;
//	}
//	public void setReleasedate(String releasedate) {
//		this.releasedate = releasedate;
//	}
//	@OneToOne(cascade=CascadeType.ALL)
//	@JoinColumn(name="FK_ProductBean_Id") 
//	public ProductBean getProductBean() {
//		return productBean;
//	}
//	
//	public CellBean() {
//	}
//	public Integer getProductId() {
//		return productId;
//	}
//	public void setProductId(Integer productId) {
//		this.productId = productId;
//	}
//	public void setProductBean(ProductBean productBean) {
//		this.productBean = productBean;
//	}
//}
