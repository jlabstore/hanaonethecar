package com.jlabsoft.hana.onethecar.onthecaradmin.mobile.card;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/m")
public class CardController {
    
    @Autowired
    private CardService cardService;

    //오토할부 View
    @RequestMapping(value="/card/autoInstallment",method = RequestMethod.GET)
    public ModelAndView autoInstallment(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView("mobile.card/autoInstallment");
        return mv;
    }
     //오토할부 Post
    @RequestMapping(value = "/getAutoInstallment", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> getAutoInstallment(HttpServletRequest request, HttpServletResponse response){
        Map<String,Object> result = new HashMap<>();
            Map<String,Object> listMap = cardService.getAutoInstallment();
            result.put("list", listMap);
        
        return result;
    }

    //오토론 View
    @RequestMapping(value="/card/autoLoan",method = RequestMethod.GET)
    public ModelAndView autoLoan(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView("mobile.card/autoLoan");
        return mv;
    }
    //오토론 Post
    @RequestMapping(value = "/getAutoLoan", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> getAutoLoan(HttpServletRequest request, HttpServletResponse response){
        Map<String,Object> result = new HashMap<>();
            Map<String,Object> listMap = cardService.getAutoLoan();
            result.put("list", listMap);
        
        return result;
    }

    //오토캐쉬백 View
    @RequestMapping(value="/card/autoCashback",method = RequestMethod.GET)
    public ModelAndView autoCashback(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView("mobile.card/autoCashback");
        return mv;
    }
    //오토캐쉬백 Post
    @RequestMapping(value = "/getAutoCashback", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> getAutoCashback(HttpServletRequest request, HttpServletResponse response){
        Map<String,Object> result = new HashMap<>();
            Map<String,Object> listMap = cardService.getAutoCashback();
            result.put("list", listMap);
        
        return result;
    }

}