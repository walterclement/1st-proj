package com.bakeecom.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bakeecom.dao.CategoryDao;

import com.bakeecom.model.Category;


@Service("categoryService")
public class CategoryServiceImpl implements CategoryService 
{
	@Autowired
	CategoryDao categoryDao;

	@Transactional(propagation = Propagation.SUPPORTS)
	public int insertRow(Category category) {
		return categoryDao.insertRow(category);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public List getList() {
		return categoryDao.getList();
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public Category getRowById(int cid) {
		return categoryDao.getRowById(cid);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int updateRow(Category category) {
		return categoryDao.updateRow(category);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int deleteRow(int cid) {
		return categoryDao.deleteRow(cid);
	}

}
