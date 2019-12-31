package com.abtu.entity;

public class WantBook {
	Integer id;
	String bookname;
	String anthor;
	String userid;
	String username;
	String part;//0-正在申请1-申请成功
	String time;
	
	public WantBook() {
		super();
	}
	public WantBook(Integer id, String bookname, String anthor, String userid, String username, String part,String time) {
		super();
		this.id = id;
		this.bookname = bookname;
		this.anthor = anthor;
		this.userid = userid;
		this.username = username;
		this.part = part;
		this.time=time;
	}
	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAnthor() {
		return anthor;
	}
	public void setAnthor(String anthor) {
		this.anthor = anthor;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPart() {
		return part;
	}
	public void setPart(String part) {
		this.part = part;
	}
	
}
