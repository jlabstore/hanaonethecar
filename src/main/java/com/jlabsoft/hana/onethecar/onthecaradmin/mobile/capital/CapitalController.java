package com.jlabsoft.hana.onethecar.onthecaradmin.mobile.capital;

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
public class CapitalController {
    
    @Autowired
    private CapitalService capitalService;

    //자동차리스 View 
    @RequestMapping(value="/capital/carLease",method = RequestMethod.GET)
    public ModelAndView carLease(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView("mobile.capital/carLease");
        return mv;
    }
      //자동차리스 Post 
    @RequestMapping(value = "/getCarLease", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> getCarLease(HttpServletRequest request, HttpServletResponse response){
        Map<String,Object> result = new HashMap<>();
            Map<String,Object> listMap = capitalService.getCarLease();
            result.put("list", listMap);
        
        return result;
    }

    //장기렌터카 View
    @RequestMapping(value="/capital/longtermRental",method = RequestMethod.GET)
    public ModelAndView longtermRental(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView("mobile.capital/longtermRental");
        return mv;
    }
    //장기렌터카 Post
    @RequestMapping(value = "/getLongtermRental", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> getLongtermRental(HttpServletRequest request, HttpServletResponse response){
        Map<String,Object> result = new HashMap<>();
            Map<String,Object> listMap = capitalService.getLongtermRental();
            result.put("list", listMap);
        
        return result;
    }

    //중고차 오토론 View
    @RequestMapping(value="/capital/usedcarLoan",method = RequestMethod.GET)
    public ModelAndView usedcarLoan(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView("mobile.capital/usedcarLoan");
        return mv;
    }
    //중고차 오토론 Post
    @RequestMapping(value = "/getUsedcarLoan", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> getUsedcarLoan(HttpServletRequest request, HttpServletResponse response){
        Map<String,Object> result = new HashMap<>();
            Map<String,Object> listMap = capitalService.getUsedcarLoan();
            result.put("list", listMap);
        
        return result;
    }

}