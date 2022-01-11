package com.user;

public class Doctor {

	private String id;
	private String name;
	private String email;
	private String mobile;
	private String special;
	private String pwd;
	private String cnfrmpwd;
	
	public Doctor(String id, String name, String email, String mobile, String special, String pwd, String cnfrmpwd) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.special = special;
		this.pwd = pwd;
		this.cnfrmpwd =cnfrmpwd;
		
	
	}

	public String getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getMobile() {
		return mobile;
	}

	public String getSpecial() {
		return special;
	}

	public String getPwd() {
		return pwd;
	}

	public String getCnfrmpwd() {
		return cnfrmpwd;
	}

	
}
