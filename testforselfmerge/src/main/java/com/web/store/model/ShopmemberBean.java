package com.web.store.model;

import java.io.Serializable;
import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name ="Shopmember")
public class ShopmemberBean implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer seqNo;

	private String memberid;

	private String password;

	private String username;

	private String email;

	private String phone;

	private String permission;

	private Date registeddate;

	private String unpaid;

	private String role;

	private String Status;
	private int productqty;
	
	public int getProductqty() {
		return productqty;
	}

	public void setProductqty(int productqty) {
		this.productqty = productqty;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	private Set<CartBean> cartBean=new HashSet<>();

	public ShopmemberBean(Integer seqNo, String memberid, String password, String companyName, String username, String email,
			String phone, String permission, java.sql.Date registeddate, String unpaid, String role, String Status) {
		this.seqNo = seqNo;
		this.memberid = memberid;
		this.password = password;
		this.username = username;
		this.email = email;
		this.phone = phone;
		this.permission = permission;
		this.registeddate = registeddate;
		this.unpaid = unpaid;
		this.role = role;
		this.Status = Status;
	}

	public ShopmemberBean() {
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "seqNo")
	public Integer getSeqNo() {
		return seqNo;
	}

	public void setSeqNo(Integer seqNo) {
		this.seqNo = seqNo;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	@Override
	public String toString() {
		return "ShopmemberBean [seqNo=" + seqNo + ", memberid=" + memberid + ", password=" + password + ", username="
				+ username + ", email=" + email + ", phone=" + phone + ", permission=" + permission + ", registeddate="
				+ registeddate + ", unpaid=" + unpaid + ", role=" + role + ", Status=" + Status + ", productqty="
				+ productqty + ", cartBean=" + cartBean + "]";
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPermission() {
		return permission;
	}

	public void setPermission(String permission) {
		this.permission = permission;
	}

	public java.sql.Date getRegisteddate() {
		return registeddate;
	}

	public void setRegisteddate(java.sql.Date registeddate) {
		this.registeddate = registeddate;
	}

	public String getUnpaid() {
		return unpaid;
	}

	public void setUnpaid(String unpaid)  {
		this.unpaid =unpaid;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

	@OneToMany
	@JoinColumn(name="shopperId")
	public Set<CartBean> getCartBean() {
		return cartBean;
	}

	public void setCartBean(Set<CartBean> cartBean) {
		this.cartBean = cartBean;
	}


	


}