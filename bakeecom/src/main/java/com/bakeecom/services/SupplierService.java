package com.bakeecom.services;
import java.util.List;


import com.bakeecom.model.Supplier;

public interface SupplierService {
	public int insertRow(Supplier supplier);

	 public List getList();

	 public Supplier getRowById(int sid);

	 public int updateRow(Supplier supplier);

	 public int deleteRow(int sid);

}
