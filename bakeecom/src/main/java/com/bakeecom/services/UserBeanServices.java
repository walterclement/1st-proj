package com.bakeecom.services;

import java.util.List;

import com.bakeecom.bean.UserBean;

public interface UserBeanServices {
	
	public int insertRow(UserBean p); 
	 public List getList();
	 public UserBean getRowById(int id);
	 public int updateRow(UserBean p);
	 public int deleteRow(int id);

}
