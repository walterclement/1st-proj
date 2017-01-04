package com.bakeecom.bean;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.annotation.NumberFormat.Style;

public class RegvalidBean {
	@NotEmpty(message="Name field is mandatory.")
	private	String name ;
	@NotEmpty(message="Password field is mandatory.")
	private	String password;
	@NotEmpty(message="Emailid field is mandatory.")
	private	String emailid;
	@NotEmpty(message="Address field is mandatory.")
	private String address;
	@Length(max=10,min=10,message="Phone number is not valid. Should be of length 10.")
	@NotEmpty(message="Phone field is mendatory.") @NumberFormat(style= Style.NUMBER)
	private String mobile;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
}
