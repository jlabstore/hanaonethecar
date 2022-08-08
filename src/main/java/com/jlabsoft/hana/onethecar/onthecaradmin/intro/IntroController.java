package com.jlabsoft.hana.onethecar.onthecaradmin.intro;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/m")
public class IntroController {
    
    // @RequestMapping(value="/intro",method = RequestMethod.GET)
    // public ModelAndView autoCardInstallment(HttpServletRequest request, HttpServletResponse response){
    //     ModelAndView mv = new ModelAndView("intro/intro");
    //     return mv;
    // }

    @RequestMapping("/intro")
    public ModelAndView intro(HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        return mv;
    }

}