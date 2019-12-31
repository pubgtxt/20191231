package com.abtu.entity;

public class BorrowBook {
	Integer id ;
	Integer bookid;
	String isbn;
	String bookname;
	String userid;
	String username;
	String borrowtime;
	String returntime;
	String part;//0-预借阅，1-已借阅，2-已归还，-1：不借
	String time;
	
	public BorrowBook() {
		super();
	}
	public BorrowBook(Integer id, Integer bookid, String isbn, String bookname, String userid, String username,
			String borrowtime, String returntime, String part,String time) {
		super();
		this.id = id;
		this.bookid = bookid;
		this.isbn = isbn;
		this.bookname = bookname;
		this.userid = userid;
		this.username = username;
		this.borrowtime = borrowtime;
		this.returntime = returntime;
		this.part = part;
		this.time = time;
	}
	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getBookid() {
		return bookid;
	}
	public void setBookid(Integer bookid) {
		this.bookid = bookid;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
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
	public String getBorrowtime() {
		return borrowtime;
	}
	public void setBorrowtime(String borrowtime) {
		this.borrowtime = borrowtime;
	}
	public String getReturntime() {
		return returntime;
	}
	public void setReturntime(String returntime) {
		this.returntime = returntime;
	}
	public String getPart() {
		return part;
	}
	public void setPart(String part) {
		this.part = part;
	}
	
}
