package com.bakeecom.dao;

import java.util.List;

import com.bakeecom.model.Category;
public interface CategoryDao {
	public int insertRow(Category category);

	 public List getList();

	 public Category getRowById(int cid);

	 public int updateRow(Category category);

	 public int deleteRow(int cid);
	 
	 public List<Category> list();

    
}