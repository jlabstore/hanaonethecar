package com.jlabsoft.hana.onethecar.onthecaradmin.main;

import com.jlabsoft.hana.onethecar.onthecaradmin.model.Admin;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    @RequestMapping("/")
    public String root(@AuthenticationPrincipal Admin admin){
        return "redirect:/admin/main";
    }

    @RequestMapping("/admin/main")
    public ModelAndView main(@AuthenticationPrincipal Admin admin) {
        ModelAndView modelAndView = new ModelAndView();
        
        modelAndView.addObject("admin",admin);
        modelAndView.addObject("topMenuName","메인");
        modelAndView.setViewName("admin.main/main");
        return modelAndView;
    }
    
    
}