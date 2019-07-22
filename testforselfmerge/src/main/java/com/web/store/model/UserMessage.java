package com.web.store.model;

public class UserMessage {
	 private String name;
	 private String msg;
	 private String coordinationId;
	public String getCoordinationId() {
		return coordinationId;
	}
	public void setCoordinationId(String coordinationId) {
		this.coordinationId = coordinationId;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
