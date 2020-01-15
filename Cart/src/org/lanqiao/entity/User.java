package org.lanqiao.entity;

public class User {
	private int id;//number(N)
	private String email;
	private String password;//varchar2(n)
	private String sex;
	private double height;//number(n,m)
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int id, String email, String password, String sex, double height) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
		this.sex = sex;
		this.height = height;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", email=" + email + ", password=" + password + ", sex=" + sex + ", height=" + height
				+ "]";
	}
	
	
}
