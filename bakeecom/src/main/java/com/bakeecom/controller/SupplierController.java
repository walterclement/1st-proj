package com.bakeecom.controller;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bakeecom.model.Supplier;
import com.bakeecom.services.SupplierService;

@Controller
public class SupplierController {
	
	public SupplierController(){
		System.out.println("inside supplier controller");
	}
	@Autowired
	SupplierService supplierService;
	
	@RequestMapping("/supplier")
	public ModelAndView gotoSupplier(@ModelAttribute("supp")Supplier supp)
	{
	return new ModelAndView("supplier");
	}
	@RequestMapping(value="addSupplier",method=RequestMethod.POST)
	public ModelAndView saveSupplier(@ModelAttribute("supp")Supplier supp)
	{
	supplierService.insertRow(supp);
	return new ModelAndView("supplier").addObject("command", new Supplier());
	}
	
	@RequestMapping("/supplierlist")
	public ModelAndView listSupplier(ModelMap m)
	{
	List<Supplier> supplierList=supplierService.getList();
	m.addAttribute("chkMsg", "hello");
	return new ModelAndView("supplierlist","supplierList", supplierList);
	}
	@RequestMapping("/supplieredit")
	public ModelAndView supplieredit(@ModelAttribute("supp")Supplier supp,@RequestParam int id)
	{
		supp=supplierService.getRowById(id);
		ModelAndView mv=new ModelAndView("supplieredit","supList",supp);
		mv.setViewName("supplieredit");
		
		return mv.addObject("command", supp);
	}
	
	@RequestMapping(value="updateSupplier",method=RequestMethod.POST)
	public ModelAndView updateProd(@ModelAttribute("supp")Supplier supp)
	{
//	prod=dataService.getRowById(id);
	supplierService.updateRow(supp);
	return new ModelAndView("redirect:supplierlist");
//		return new ModelAndView("list","prod");
	}
	
@RequestMapping("/deleteSupplier")
	public ModelAndView deleteSupplier(@RequestParam int id)
	{
	supplierService.deleteRow(id);
		return new ModelAndView("redirect:supplierlist");
	}

}
