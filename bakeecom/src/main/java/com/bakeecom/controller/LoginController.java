package com.bakeecom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bakeecom.bean.LoginBean;
 
@Controller
public class LoginController {
    @RequestMapping(value = "loginnew", method = RequestMethod.GET)
    public String init(Model model) {
        model.addAttribute("msg", "Please Enter Your Login Details");
        return "loginnew";
    }
 
    @RequestMapping(value="loginSubmit",method = RequestMethod.POST)
    public String submit(Model model, @ModelAttribute("loginBean") LoginBean loginBean) {
        if (loginBean != null && loginBean.getUserName() != null & loginBean.getPassword() != null) {
            if (loginBean.getUserName().equals("walter") && loginBean.getPassword().equals("clement")) {
                model.addAttribute("msg", "welcome" + loginBean.getUserName());
                return "home2";
            } else {
                model.addAttribute("error", "Invalid Details");
                return "loginnew";
            }
        } else {
            model.addAttribute("error", "Please enter Details");
            return "loginnew";
        }
    }
}
	

