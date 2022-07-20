package com.jlabsoft.hana.onethecar.onthecaradmin.banner;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty.Type;
import com.jlabsoft.hana.onethecar.onthecaradmin.model.Admin;
import com.jlabsoft.hana.onethecar.onthecaradmin.model.enums.ApiStatus;
import com.jlabsoft.hana.onethecar.onthecaradmin.model.enums.ImageType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/banner")
public class BannerController {
    
    @Autowired
    private BannerService bannerService;

    @RequestMapping(value = "/regist", method = RequestMethod.GET)
    public ModelAndView insertBanner(HttpServletRequest request, @AuthenticationPrincipal Admin admin)throws Exception{
        ModelAndView mav = new ModelAndView("onethecar.banner/regist");
        int idx = request.getParameter("idx") != null ? Integer.parseInt(request.getParameter("idx").toString()):0;
        try{
            String views = "";
            if("BANNER".equals(admin.getRole())){
                views = "메인배너 관리자";
            }else if("CAPITAL".equals(admin.getRole())){
                views = "하나캐피탈";
            }
            mav.addObject("topMenuName", views);
            // mav.addObject("image", bannerService.getImageManage(idx, ImageType.MAINPC));
        }catch(Exception e){
            e.printStackTrace();
        }
        return mav;
    }

    @RequestMapping(value = "/setBanner", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> registBanner(
                                            @RequestParam HashMap<String,Object> param, 
                                            MultipartHttpServletRequest multipartReq, 
                                            HttpServletRequest request, 
                                            HttpServletResponse response, 
                                            @AuthenticationPrincipal Admin admin ){
        Map<String,Object> resultHashMap = new HashMap<String,Object>();
        ApiStatus result = ApiStatus.BAD_REQUEST;
        try{
            param.put("userId", admin.getId());
            List<MultipartFile> files = multipartReq.getFiles("MainPCFiles");
            for(MultipartFile file : files){
                bannerService.setImage(file, ImageType.MAINPC, param);
            }
            List<MultipartFile> Mfiles = multipartReq.getFiles("MainMobileFiles");
            for(MultipartFile file : Mfiles){
                bannerService.setImage(file, ImageType.MAINMOBILE, param);
            }
            
            result = ApiStatus.OK;
        }catch(Exception e){
            e.printStackTrace();
        }
        resultHashMap.put(("result"), result);
        return resultHashMap;
    }


}