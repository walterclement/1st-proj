package com.bakeecom.dao;
import java.io.Serializable;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bakeecom.model.Category;
import com.bakeecom.model.Supplier;
@Repository("categoryDao")

public class CategoryImpl implements CategoryDao{
	@Autowired
	 SessionFactory sessionFactory;
	
	@Transactional(propagation=Propagation.SUPPORTS) 
	 public int insertRow(Category category) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  session.saveOrUpdate(category);
	  tx.commit();
	  Serializable cid = session.getIdentifier(category);
	  session.close();
	  return (Integer) cid;
	 }

	@Transactional(propagation=Propagation.SUPPORTS) 
	 public List getList() {
	  Session session = sessionFactory.openSession();
	  @SuppressWarnings("unchecked")
	  List categoryList = session.createQuery("from Category")
	    .list();
	  session.close();
	  return categoryList;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public Category getRowById(int cid) {
	  Session session = sessionFactory.openSession();
	  Category category = (Category) session.load(Category.class, cid);
	  return category;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public int updateRow(Category category) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  session.saveOrUpdate(category);
	  tx.commit();
	  Serializable cid = session.getIdentifier(category);
	  session.close();
	  return (Integer) cid;
	}

	  @Transactional(propagation=Propagation.SUPPORTS)
	 public int deleteRow(int cid) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  Category category = (Category) session.load(Category.class, cid);
	  session.delete(category);
	  tx.commit();
	  Serializable ids = session.getIdentifier(category);
	  session.close();
	  return (Integer) ids;
	 }

	  @Transactional(propagation=Propagation.SUPPORTS)
	public List<Category> list() {
		@SuppressWarnings("unchecked")
		List<Category> listCategory=sessionFactory.getCurrentSession().createCriteria(Category.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listCategory;
	}

	
	 

}
