package com.abtu.entity;

public class UserAllMessage {
	private User user;
	private UserMessage um;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserMessage getUm() {
		return um;
	}
	public void setUm(UserMessage um) {
		this.um = um;
	}
	public UserAllMessage(User user, UserMessage um) {
		super();
		this.user = user;
		this.um = um;
	}
	public UserAllMessage() {
		super();
	}
	
}
