package com.bakeecom.controller;
import java.io.BufferedOutputStream;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bakeecom.dao.CategoryDao;
import com.bakeecom.model.Category;
import com.bakeecom.model.Product;
import com.bakeecom.services.CategoryService;
import com.bakeecom.services.ProductService;
import com.bakeecom.model.Supplier;
import com.bakeecom.services.SupplierService;
import com.bakeecom.validator.ProValid;
import com.google.gson.Gson;


@Controller
public class BakeryController {

	public BakeryController() {
		System.out.println("inside bakery controller");
	}
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	ProductService productService;
	
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	SupplierService supplierService;
	
	@ModelAttribute("ob")
	public Product construct(){
		return new Product();
	}
	
	@RequestMapping(value="/viewall")
	public String prod1(Map<String, Object>map)
	{
		Product productmodelResult = new Product();
		map.put("productModel",productmodelResult);
	    map.put("productmodelList", productService.getList());
	    
	return "hf";
	}
	
	@RequestMapping(value="/wat")
	public @ResponseBody List<Product> getList()
	{
		List<Product> p=null;
		System.out.print("hai");
	try{
			p=productService.getList();
		System.out.println(p);
		}
		catch(Exception e){
			p=null;
		}
	System.out.println(p);
		return p;
	}
	
	@RequestMapping(value="/edit/{pid}")
	public String edit(@PathVariable("pid")int id,@ModelAttribute Product productModel,Map<String, Object>map)
	{
		
		productModel=productService.getRowById(id);
		map.put("productModel",productModel);
	//	map.put("productmodelList", productservice.getAllProductModel());
	    return "product";
	}
	
	@RequestMapping(value="/delete/{pid}")
	public String delete(@PathVariable("pid")int id,@ModelAttribute Product productModel,Map<String, Object>map)
	{
		productService.deleteRow(id);
	return "redirect:/viewall";
	}
	
	@RequestMapping(value={"/productmodel","edit/productmodel"}, method=RequestMethod.POST)
	public String doActions(@Valid @ModelAttribute Product productModel, BindingResult result, @RequestParam String action, Map<String, Object>map){
		if(result.hasErrors())
		{
			System.out.println(result);
			return "product";
		}else
		{
		Product productmodelResult = new Product();
	    switch(action.toLowerCase()){
	    case "add":
	    	MultipartFile file= productModel.getFile();
	    	
	    	if (!file.isEmpty()) {
				try {
					
					// Creating the directory to store file
					File path = new File(servletContext.getRealPath("/") );
					File dir = new File(path + File.separator + "resources/admin/upload");
					if (!dir.exists())
						dir.mkdirs();

					// Create the file on server
					File serverFile = new File(dir
							+ File.separator + productModel.getImg()+".jpg");
		
					System.out.println(serverFile);
					file.transferTo(serverFile);
					System.out.println(file);
				}catch(Exception e)
				{
					System.out.println(e.getMessage());
				}
				
			
	    	}
	    	productService.insertRow(productModel);
	    	productmodelResult = productModel;
	    	break;
	    	
	    case "update":
	    	MultipartFile files= productModel.getFile();
	    	productService.updateRow(productModel);
	    	if (!files.isEmpty()) {
				try {
					
					// Creating the directory to store file
					File paths = new File(servletContext.getRealPath("/") );
					File dir = new File(paths + File.separator + "resources/admin/upload");
					if (!dir.exists())
						dir.mkdirs();

					// Create the file on server
					File serverFile = new File(dir
							+ File.separator + productModel.getImg()+".jpg");
		
					System.out.println(serverFile);
					files.transferTo(serverFile);
					System.out.println(files);
				}catch(Exception e)
				{
					System.out.println(e.getMessage());
				}
				
			
	    	}
	    	
	    	productmodelResult = productModel;
	    	break;
	    	
	    case "delete":
	    	productService.deleteRow(productModel.getPid());
	    	productmodelResult = new Product();
	    	break;
	    	
	    case "search":
	    	Product searchedProductModel = productService.getRowById(productModel.getPid());
	    	productmodelResult = searchedProductModel!=null ? searchedProductModel : new Product();
	    	break;
	    }
	    map.put("productModel",productmodelResult);
	    map.put("productmodelList", productService.getList());
	    
		
	}
		return "redirect:/product";
	}
	@RequestMapping(value="/viewproduct/{pid}")
	public String view(@PathVariable(value="pid")int id,@ModelAttribute Product productModel,Map<String, Object>map)
	{
		productModel=productService.getRowById(id);
		System.out.println("view"+productModel.getName());
		map.put("productModel",productModel);
		//map.put("productmodelList", productModel);
		return 	"singlepro";
	} 
	
	public void deleteproductstock(int id) {
		Product pm = productService.getRowById(id);
		int stock = pm.getQty();
		if (stock == 1) {
			pm.setQty(0);
			productService.updateRow(pm);
		} else {
			pm.setQty(stock - 1);
			productService.updateRow(pm);
		}
	}
	
	public void addproductstock(int productid,int cartquantity)
	{
		Product pm = productService.getRowById(productid);
		pm.setQty(pm.getQty()+cartquantity);
		productService.updateRow(pm);
	} 
	
	@RequestMapping("/product")
	public ModelAndView gotoProduct(ModelMap m)
	{
		
		 List<Category> lc=categoryService.getList();
		 List<Supplier> ls=supplierService.getList();
		 m.addAttribute("lstSupplier", ls);
		 m.addAttribute("lstCategory", lc);
		 return new ModelAndView("product");
	
	}

	 
	
	
	
	
	
	
	
	
	
	
	

	@RequestMapping("/")
	public String homePage() {
		return "homenew";
	}
	
	@RequestMapping("/homenew")
	public String menuPage() {
		return "homenew";
	}
	
	@RequestMapping("/payment")
	public String paymentPage() {
		return "payment";
	}
	
	
	@RequestMapping("/login")
	public String gotologin(@RequestParam(value="error",required = false) String error, @RequestParam(value="logout",required = false) String logout, Model model) 
	{
		
		if(error!=null)
		{
			model.addAttribute("error","Invalid credentials to enter");
		}
		if(logout!=null)
		{
			model.addAttribute("msg", "You logged out successfully...");
		}
		return  "login";
  	}
	
	
	
	
	@RequestMapping("/aboutus")
	public String gotoindex() {
		return "aboutus";
	}	
	@RequestMapping("/home1")
	public String gotohome1() {
		return "home1";
	}
	@RequestMapping("/login2")
	public String gotologin() {
		return "login2";
	}
	@RequestMapping("/regis2")
	public String gotoregis() {
		return "regis2";
	}
	@RequestMapping("/productviewnew")
	public String gotoproductviewnew() {
		return "productviewnew";
	}

	@RequestMapping("/gridlis")
	public@ResponseBody ModelAndView listProduct(ModelMap m)
	{
	List<Product> productList=productService.getList();
	/*m.addAttribute("chkMsg", "hello");*/
	 Gson gson = new Gson();
	 String conv = gson.toJson(productList);
	 m.addAttribute("prodat", conv);
	 System.out.println("Json"+conv);
	return new ModelAndView("gridlis","productList",productList);
	}
}