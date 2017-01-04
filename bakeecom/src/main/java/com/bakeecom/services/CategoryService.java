package com.bakeecom.services;
import java.util.List;

import com.bakeecom.model.Category;


public interface CategoryService {
	public int insertRow(Category category);

	 public List getList();

	 public Category getRowById(int cid);

	 public int updateRow(Category category);

	 public int deleteRow(int cid);

}