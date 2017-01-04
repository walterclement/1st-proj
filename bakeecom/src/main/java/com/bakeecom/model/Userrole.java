package com.bakeecom.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

import com.bakeecom.bean.UserBean;

@Entity
@Component
public class Userrole {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column
	private int roleid;
	@Column
	private String role_name;
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="NAME")
	private UserBean userbean;
	public int getRoleid() {
		return roleid;
	}
	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}
	public String getRole_name() {
		return role_name;
	}
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}
	public UserBean getUserbean() {
		return userbean;
	}
	public void setUserbean(UserBean userbean) {
		this.userbean = userbean;
	}

}
