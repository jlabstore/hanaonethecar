package com.jlabsoft.hana.onethecar.onthecaradmin.goodsRate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/goodRate")
public class GoodRateController {
    

    @Autowired
    private GoodRateService goodRateService;

    @GetMapping(value="/regist")
    public ModelAndView regist(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView("onethecar.goodRate/regist");
        mav.addObject("topMenuName","하나은행");  
        return mav;
    }

}