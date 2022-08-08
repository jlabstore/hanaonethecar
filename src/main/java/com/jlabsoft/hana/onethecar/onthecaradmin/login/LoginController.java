package com.jlabsoft.hana.onethecar.onthecaradmin.login;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
    
    @RequestMapping("/login")
    public ModelAndView lonin(HttpServletRequest request){
        ModelAndView mv = new ModelAndView("login/login");
        return mv;
    }
}