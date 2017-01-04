package com.bakeecom.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
public class Category {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cid;
	@NotEmpty(message="Please Enter The category name")
//	@Column(unique=true)
	@Column(unique=true)
//	@Column(name="cname", unique=true)
	private String cname;
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	/*@Override
	public String toString() {
		return "Category [cid=" + cid + ", cname=" + cname + "]";
	}*/
	
	
	
}
