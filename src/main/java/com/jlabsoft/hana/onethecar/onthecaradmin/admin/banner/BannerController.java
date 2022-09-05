package com.jlabsoft.hana.onethecar.onthecaradmin.admin.banner;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
@RequestMapping("/admin/banner")
public class BannerController {
    
    @Autowired
    private BannerService bannerService;

    @RequestMapping(value = "/regist", method = RequestMethod.GET)
    public ModelAndView insertBanner(HttpServletRequest request, @AuthenticationPrincipal Admin admin,@RequestParam HashMap<String,Object> param)throws Exception{
        ModelAndView mav = new ModelAndView("admin.banner/regist");
        
        int idx = request.getParameter("idx") != null ? Integer.parseInt(request.getParameter("idx").toString()):0;
        try{
            String views = "";
            if("BANNER".equals(admin.getRole())){
                views = "메인배너 관리자";
            }else if("CAPITAL".equals(admin.getRole())){
                views = "하나캐피탈";
            }else if("BANK".equals(admin.getRole())){
                views = "하나은행";
            }else if("CARD".equals(admin.getRole())){
                views = "하나카드";
            }
            mav.addObject("topMenuName", views);
            mav.addObject("bannerType", admin.getRole());
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
                                            String[] pcFileSort,
                                            String[] moFileSort,
                                            String[] pcFileUrl,
                                            String[] moFileUrl,
                                            String[] changeSort,
                                            String[] delIdxs,
                                            @AuthenticationPrincipal Admin admin ){
        Map<String,Object> resultHashMap = new HashMap<String,Object>();
        ApiStatus result = ApiStatus.BAD_REQUEST;
        try{
            //1. 새로운 이미지 등록 
            //1-1. PC배너
            // List<MultipartFile> files = multipartReq.getFiles("pcFiles");
            // for (int i = 0; i < files.size() ; i++) {   
            //     if(pcFileSort.length > i){
            //         bannerService.setImage(files.get(i), ImageType.MAINPC, pcFileSort[i], pcFileUrl[i], admin.getId());
            //     }
            // }
            //1-2. 모바일 배너
            List<MultipartFile> mfiles = multipartReq.getFiles("moFiles");
            List<MultipartFile> mfiles2 = multipartReq.getFiles("moFiles2");
            List<MultipartFile> mfiles3 = multipartReq.getFiles("moFiles3");
            for (int i = 0; i < mfiles.size() ; i++) {   
                if(moFileSort.length > i && moFileUrl.length > i){
                    bannerService.setImage(mfiles.get(i), mfiles2.size() > i ?  mfiles2.get(i) : null, mfiles3.size() > i ? mfiles3.get(i): null, ImageType.MAINMOBILE, moFileSort[i], moFileUrl[i], admin.getId());
                }
            }

            //2. 기존 등록된 이미지에 대한 정렬 변경건 처리
            for(String idxSort :changeSort){
                String[] idxSorts = idxSort.split(":");
                if(idxSorts.length > 1){
                    param.put("idx",Integer.parseInt(idxSorts[0].toString()));
                    param.put("sort",Integer.parseInt(idxSorts[1].toString()));
                    bannerService.bannerSortChage(param);
                }
            }

            //3. 기존 등록된 이미지에 대한 삭제건 처리
            if(delIdxs.length > 0){
                param.put("delIdxs", delIdxs);
                bannerService.removeBanner(param);
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
}