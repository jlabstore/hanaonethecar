package com.jlabsoft.hana.onethecar.onthecaradmin.intro;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class IntroController {
    
    @RequestMapping("/intro")
    public ModelAndView intro(HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        return mv;
    }

}