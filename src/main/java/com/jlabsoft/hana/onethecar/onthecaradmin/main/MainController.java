package com.jlabsoft.hana.onethecar.onthecaradmin.main;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jlabsoft.hana.onethecar.onthecaradmin.model.Admin;
import com.jlabsoft.hana.onethecar.onthecaradmin.model.enums.ApiStatus;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    @Autowired
    private MainService mainService;

    @RequestMapping("/")
    public String root(@AuthenticationPrincipal Admin admin){
        if(admin != null){
            return "redirect:/admin/main";
        }
            return "redirect:/mobile/main";
    }

    @RequestMapping("/admin/main")
    public ModelAndView main(@AuthenticationPrincipal Admin admin) {
        ModelAndView modelAndView = new ModelAndView();
        
        modelAndView.addObject("admin",admin);
        modelAndView.addObject("topMenuName","메인");
        modelAndView.setViewName("admin.main/main");
        return modelAndView;
    }

    @RequestMapping("/m/main")
    public ModelAndView mobile(){
        ModelAndView mv = new ModelAndView();

        mv.setViewName("mobile.m/main");
        return mv;
    }
    
    //mobile 메인 배너 가져오기
    /**
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/mobile/main",method=RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> getMobileBannerList(HttpServletRequest request, HttpServletResponse response) {
        Map<String,Object> result = new HashMap<>();

            List<Map<String,Object>> list= mainService.getMobileImage();
        
            result.put("list", list);
        
        result.put("result", ApiStatus.OK);
        return result; 
    }

    //mobile 메인 배너 가져오기
    /**
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/mobile/capital",method=RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> getMobileCapitalBannerList(HttpServletRequest request, HttpServletResponse response) {
        Map<String,Object> result = new HashMap<>();

            List<Map<String,Object>> capitalList= mainService.getMobileCapitalImage();
        
            result.put("capitalList", capitalList);
        
        result.put("result", ApiStatus.OK);
        return result; 
    }

    

}
