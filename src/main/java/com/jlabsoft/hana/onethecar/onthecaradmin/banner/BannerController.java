package com.jlabsoft.hana.onethecar.onthecaradmin.banner;

import java.io.IOException;
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
    public ModelAndView insertBanner(HttpServletRequest request, @AuthenticationPrincipal Admin admin,@RequestParam HashMap<String,Object> param)throws Exception{
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
            mav.addObject("idx", idx);
        }catch(Exception e){
            e.printStackTrace();
        }
        return mav;
    }

    @RequestMapping(value = "/saveBanner", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> registBanner(
                                            @RequestParam HashMap<String,Object> param, 
                                            MultipartHttpServletRequest multipartReq, 
                                            HttpServletRequest request, 
                                            HttpServletResponse response, 
                                            String[] selectSort,
                                            String[] selectSort_,
                                            @AuthenticationPrincipal Admin admin ){
        Map<String,Object> resultHashMap = new HashMap<String,Object>();
        ApiStatus result = ApiStatus.BAD_REQUEST;
        try{
            
            //메인피시 배너
            List<MultipartFile> files = multipartReq.getFiles("mainPCFiles");
                param.put("userId", admin.getId());
                for (int i = 0; i < selectSort.length; i++) {   
                    param.replace("selectSort", selectSort[i]);
                    bannerService.setImage(files.get(i), ImageType.MAINPC, param);
                  
                }
                
                // // 메인 모바일 배너
                List<MultipartFile> mfiles = multipartReq.getFiles("mainMobileFiles");
                for (int i = 0; i < selectSort_.length; i++) {   
                    param.replace("selectSort", selectSort_[i]);
                    bannerService.setImage(mfiles.get(i), ImageType.MAINMOBILE, param);
                }
            result = ApiStatus.OK;
        }catch(Exception e){
            e.printStackTrace();
        }
        
        resultHashMap.put(("result"), result);
        return resultHashMap;
    }

      //상세
    @RequestMapping(value = "/detailBanner", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String, Object> getGoodsRateDetail(@RequestParam HashMap<String,Object> param,@AuthenticationPrincipal Admin admin){

            HashMap<String,Object> data = new HashMap<String,Object>();
        try{
            param.put("userId",admin.getId());
            List<HashMap<String,Object>> getGoodsBanner = bannerService.getGoodsBanner(param);
            if(getGoodsBanner != null){
                data.put("getGoodsBanner", getGoodsBanner);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return data;
    }

    @RequestMapping(value = "/deleteByIdx", method=RequestMethod.POST)
    @ResponseBody
    public Map<String,Object>removeBanner(@RequestParam Map<String,Object> param,@AuthenticationPrincipal Admin admin, HttpServletResponse response) throws IOException{
        Map<String,Object> resultMap = new HashMap<>();

        ApiStatus result = ApiStatus.BAD_REQUEST;
        try{
            param.put("userId", admin.getId());
            int cnt = bannerService.removeBanner(param);
            if(cnt > 0){
                result = ApiStatus.OK;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        resultMap.put("result", result);
        return resultMap;
    }

}