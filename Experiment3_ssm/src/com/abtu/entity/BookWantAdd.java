package com.abtu.entity;

public class BookWantAdd {
	String bookname;
	String anthor;
	String num;
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
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public BookWantAdd(String bookname, String anthor, String num) {
		super();
		this.bookname = bookname;
		this.anthor = anthor;
		this.num = num;
	}
	public BookWantAdd() {
		super();
	}
	
}
