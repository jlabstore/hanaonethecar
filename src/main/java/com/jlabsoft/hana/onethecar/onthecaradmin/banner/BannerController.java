package com.jlabsoft.hana.onethecar.onthecaradmin.banner;

import javax.servlet.http.HttpServletRequest;

import com.jlabsoft.hana.onethecar.onthecaradmin.model.Admin;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/banner")
public class BannerController {
    


    @RequestMapping(value = "/regist", method = RequestMethod.GET)
    public ModelAndView insertBanner(HttpServletRequest request, @AuthenticationPrincipal Admin admin)throws Exception{
        ModelAndView mav = new ModelAndView("onethecar.banner/regist");

        try{
            String views = "";
            if("BANNER".equals(admin.getRole())){
                views = "배너 관리자";
            }else if("CAPITAL".equals(admin.getRole())){
                views = "하나캐피탈";
            }
            mav.addObject("topMenuName", views);
        }catch(Exception e){
            e.printStackTrace();
        }
        return mav;
    }
}