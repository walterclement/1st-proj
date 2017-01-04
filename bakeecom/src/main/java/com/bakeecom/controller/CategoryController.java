package com.bakeecom.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bakeecom.model.Category;
import com.bakeecom.model.Supplier;
import com.bakeecom.services.CategoryService;
import com.bakeecom.services.SupplierService;
import com.bakeecom.validator.CatValid;

@Controller
public class CategoryController {
	
	public CategoryController(){
		
		System.out.println("inside category controller");
	}
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	CatValid catValid;
	
	@RequestMapping("/category")
	public ModelAndView gotoCategory(@ModelAttribute("cate")Category cate)
	{
	return new ModelAndView("category");
	}
	
	@RequestMapping(value="addCategory",method=RequestMethod.POST)
	public ModelAndView saveCategory(@Valid @ModelAttribute("cate")Category cate,BindingResult wind,Model w,HttpServletRequest req)
	
	{
		w.addAttribute("cate", cate);
		catValid.validate(cate, wind);
		if(wind.hasErrors())
		{
			return new ModelAndView ("category");
		}
		else
		{
			categoryService.insertRow(cate);
			return new ModelAndView("category").addObject("command", new Category());
		}
	}
	@RequestMapping("/categorylist")
	public ModelAndView listCategory(ModelMap m)
	{
	List<Category> categoryList=categoryService.getList();
	m.addAttribute("chkMsg", "hello");
	return new ModelAndView("categorylist","categoryList", categoryList);
	}
	@RequestMapping("/categoryedit")
	public ModelAndView categoryedit(@ModelAttribute("cate")Category cate,@RequestParam int id)
	{
		cate=categoryService.getRowById(id);
		ModelAndView mv=new ModelAndView("categoryedit","cateList",cate);
		mv.setViewName("categoryedit");
		
		return mv.addObject("command", cate);
	}
	
	@RequestMapping(value="updateCategory",method=RequestMethod.POST)
	public ModelAndView updateProd(@ModelAttribute("cate")Category cate)
	{
//	prod=dataService.getRowById(id);
	categoryService.updateRow(cate);
	return new ModelAndView("redirect:categorylist");
		
	}
	
@RequestMapping("/deleteCategory")
	public ModelAndView deleteCategory(@RequestParam int id)
	{
	categoryService.deleteRow(id);
		return new ModelAndView("redirect:categorylist");
	}

}
	


