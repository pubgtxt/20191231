package com.abtu.entity;

public class User {
	String id;
	String name;
	String pwd;
	String idcard;
	String part;//"0"表示管理员，“1”表示读者
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getPart() {
		return part;
	}
	public void setPart(String part) {
		this.part = part;
	}	
	
}
