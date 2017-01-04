package com.bakeecom.dao;

import java.io.Serializable;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bakeecom.model.Supplier;
@Repository("supplierDao")

public class SupplierImpl implements SupplierDao{
	@Autowired
	 SessionFactory sessionFactory;

	@Transactional(propagation=Propagation.SUPPORTS) 
	 public int insertRow(Supplier supplier) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  session.saveOrUpdate(supplier);
	  tx.commit();
	  Serializable sid = session.getIdentifier(supplier);
	  session.close();
	  return (Integer) sid;
	 }

	@Transactional(propagation=Propagation.SUPPORTS) 
	 public List getList() {
	  Session session = sessionFactory.openSession();
	  @SuppressWarnings("unchecked")
	  List supplierList = session.createQuery("from Supplier")
	    .list();
	  session.close();
	  return supplierList;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public Supplier getRowById(int sid) {
	  Session session = sessionFactory.openSession();
	  Supplier supplier = (Supplier) session.load(Supplier.class, sid);
	  return supplier;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public int updateRow(Supplier supplier) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  session.saveOrUpdate(supplier);
	  tx.commit();
	  Serializable sid = session.getIdentifier(supplier);
	  session.close();
	  return (Integer) sid;
	}

	  @Transactional(propagation=Propagation.SUPPORTS)
	 public int deleteRow(int sid) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  Supplier supplier = (Supplier) session.load(Supplier.class, sid);
	  session.delete(supplier);
	  tx.commit();
	  Serializable ids = session.getIdentifier(supplier);
	  session.close();
	  return (Integer) ids;
	 }
	 
}