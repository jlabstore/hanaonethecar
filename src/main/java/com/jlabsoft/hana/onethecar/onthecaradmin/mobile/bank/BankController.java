package com.jlabsoft.hana.onethecar.onthecaradmin.mobile.bank;

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
public class BankController {
    
    @Autowired
    private BankService bankService;


    //모바일 페이지 호출 예제 
    @RequestMapping(value="/main",method = RequestMethod.GET)
    public ModelAndView mobileMain(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView("mobile.main/main");
        return mv;
    }

    //ev오토론View
    @RequestMapping(value="/bank/evAutoloan",method = RequestMethod.GET)
    public ModelAndView evAutoLoan(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView("mobile.bank/evAutoloan");
        return mv;
    }
     //ev오토론Post
    @RequestMapping(value = "/getEvAutoloan", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> getevAutoloan(HttpServletRequest request, HttpServletResponse response){
        Map<String,Object> result = new HashMap<>();
            Map<String,Object> listMap = bankService.getevAutoloan();
            result.put("list", listMap);
        
        return result;
    }
    
    //원큐오토론View
    @RequestMapping(value="/bank/oneQAutoloan",method = RequestMethod.GET)
    public ModelAndView oneQAutoloan(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView("mobile.bank/oneQAutoloan");
        return mv;
    }
    //원큐오토론Post
    @RequestMapping(value = "/getOneQAutoloan", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> getOneQAutoloan(HttpServletRequest request, HttpServletResponse response){
        Map<String,Object> result = new HashMap<>();
            Map<String,Object> listMap = bankService.getOneQAutoloan();
            result.put("list", listMap);
        return result;
    }



}