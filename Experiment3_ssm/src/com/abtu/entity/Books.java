package com.abtu.entity;

public class Books {
	Integer id;
	String isbn;
	String bookname;
	String anthor;
	String publish;
	String publishdate;
	Integer num;
	String price;
	String states;//0已经下架，1已经上架
	
	
	
	public Books() {
		super();
	}
	public Books(Integer id, String isbn,String bookname, String anthor, String publish, String publishdate, Integer num,
			String price, String states) {
		super();
		this.id = id;
		this.isbn = isbn;
		this.bookname = bookname;
		this.anthor = anthor;
		this.publish = publish;
		this.publishdate = publishdate;
		this.num = num;
		this.price = price;
		this.states = states;
	}
	
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getStates() {
		return states;
	}
	public void setStates(String states) {
		this.states = states;
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
	public String getPublish() {
		return publish;
	}
	public void setPublish(String publish) {
		this.publish = publish;
	}
	public String getPublishdate() {
		return publishdate;
	}
	public void setPublishdate(String publishdate) {
		this.publishdate = publishdate;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Books [id=" + id + ", isbn=" + isbn + ", bookname=" + bookname + ", anthor=" + anthor + ", publish="
				+ publish + ", publishdate=" + publishdate + ", num=" + num + ", price=" + price + ", states=" + states
				+ "]";
	}
	
}
