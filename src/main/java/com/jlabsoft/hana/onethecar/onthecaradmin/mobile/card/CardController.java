package com.jlabsoft.hana.onethecar.onthecaradmin.mobile.card;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/m")
public class CardController {
    
    @Autowired
    private CardService cardService;

    //오토카드할부 view
    @RequestMapping(value="/card/autoCardInstallment",method = RequestMethod.GET)
    public ModelAndView autoCardInstallment(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView("mobile.card/autoCardInstallment");
        Map<String,Object> autocardInstallment = cardService.getAutoCardInstallment();
        mv.addObject("autocardInstallment", autocardInstallment);
        return mv;
    }

    //오토할부 View
    @RequestMapping(value="/card/autoInstallment",method = RequestMethod.GET)
    public ModelAndView autoInstallment(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView("mobile.card/autoInstallment");
        Map<String,Object> autoInstallment = cardService.getAutoInstallment();
        mv.addObject("autoInstallment", autoInstallment);
        return mv;
    }

    //오토론 View
    @RequestMapping(value="/card/autoLoan",method = RequestMethod.GET)
    public ModelAndView autoLoan(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView("mobile.card/autoLoan");
        Map<String,Object> autoLoan = cardService.getAutoLoan();
        mv.addObject("autoLoan", autoLoan);
        return mv;
    }

    //오토캐쉬백 View
    @RequestMapping(value="/card/autoCashback",method = RequestMethod.GET)
    public ModelAndView autoCashback(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView("mobile.card/autoCashback");
        Map<String,Object> autoCashback = cardService.getAutoCashback();
        mv.addObject("autoCashback", autoCashback);
        return mv;
    }

}