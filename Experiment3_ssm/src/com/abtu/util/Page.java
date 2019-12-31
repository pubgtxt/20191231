package com.abtu.util;

public class Page {
	private Integer nowpage = 0;
	private Integer size = 5;
	private Integer nextpage;
	private Integer lastpage;
	public Integer getNowpage() {
		return nowpage;
	}
	public void setNowpage(Integer nowpage) {
		this.nowpage = nowpage;
	}
	public Integer getNextpage() {
		return nextpage;
	}
	public void setNextpage(Integer nextpage) {
		this.nextpage =nextpage;
	}
	public Integer getLastpage() {
		return lastpage;
	}
	public void setLastpage(Integer lastpage) {
		this.lastpage = lastpage;
	}
	public Integer getSize() {
		return size;
	}
	public void setSize(Integer size) {
		this.size = size;
	}
	
	
}
