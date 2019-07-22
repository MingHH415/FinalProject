package com.web.store.model;

import java.io.Serializable;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
// 本類別封裝單筆出版社資料
@Entity
@Table(name="BookCompany")
public class CompanyBean implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer id ;
	private String  name;
	private String  address;
	private String  url;
	private String level="普通賣家";
	@JsonIgnoreProperties("companyBean")
	private Set<ProductBean> books = new LinkedHashSet<>();
	private Set<CommentBean> cmb= new LinkedHashSet<>();;
	
	public CompanyBean(Integer id, String name, String address, String url) {
		this.id = id;
		this.name = name;
		this.address = address;
		this.url = url;
	}
	public CompanyBean() {
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	@OneToMany(mappedBy="companyBean", fetch = FetchType.EAGER)
	public Set<ProductBean> getBooks() {
		return books;
	}
	public void setBooks(Set<ProductBean> books) {
		this.books = books;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	@OneToMany
	@JoinColumn(name="companyId")
	public Set<CommentBean> getCmb() {
		return cmb;
	}
	public void setCmb(Set<CommentBean> cmb) {
		this.cmb = cmb;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}	
	
}