package com.jlabsoft.hana.onethecar.onthecaradmin.admin.capitalRate;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import com.jlabsoft.hana.onethecar.onthecaradmin.model.Admin;
import com.jlabsoft.hana.onethecar.onthecaradmin.model.enums.ApiStatus;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin/capitalRate")
public class CapitalRateController {
    
    @Autowired
    private CapitalRateService capitalRateService;

    @GetMapping(value="/regist")
    public ModelAndView regist(@AuthenticationPrincipal Admin admin,@RequestParam HashMap<String,Object> param, HttpServletRequest request) throws Exception {
        ModelAndView mav = new ModelAndView("admin.capitalRate/regist");
        try{
            String views = "";
            if("BANK".equals(admin.getRole())) {
                views = "하나은행";
            }else if("CAPITAL".equals(admin.getRole())) {
                views = "하나캐피탈";
            }else if("CARD".equals(admin.getRole())){
                views = "하나카드";
            }
            param.put("type", admin.getRole());
            mav.addObject("topMenuName",views); 
            mav.addObject("getSelectCodes", capitalRateService.getSelectCodes(param));
        }catch(Exception e){
            e.printStackTrace();            
        }
        return mav;
    }

    //상세
    @RequestMapping(value = "/detailCapitalRate", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String, Object> getGoodsRateDetail(@RequestParam HashMap<String,Object> param){

            HashMap<String,Object> data = new HashMap<String,Object>();
        try{
            HashMap<String,Object> detailCapitalRate = capitalRateService.getCapitalRateDetail(param);
            if(detailCapitalRate != null){
                data.put("detailCapitalRate", detailCapitalRate);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return data;
    }

      //등록
    @RequestMapping(value = "/setCapitalRate", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String,Object> setCapitalRate(@RequestParam HashMap<String,Object> param, @AuthenticationPrincipal Admin admin) throws IOException{
        HashMap<String,Object> resultHashMap = new HashMap<String,Object>();
        ApiStatus result = ApiStatus.BAD_REQUEST;
        try{
            param.put("userId",admin.getId());
            capitalRateService.setCapitalRate(param);
            result = ApiStatus.OK;
        }catch(Exception e){
            e.printStackTrace();
        }
        resultHashMap.put(("result"), result);
        return resultHashMap;
    } 

    //수정
    @RequestMapping(value = "/putCapitalRate", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String,Object> putGoodsRate(@RequestParam HashMap<String,Object> param, @AuthenticationPrincipal Admin admin) throws IOException{
        HashMap<String,Object> resultHashMap = new HashMap<String,Object>();
        ApiStatus result = ApiStatus.BAD_REQUEST;
        try{
            param.put("userId",admin.getId());
            capitalRateService.putCapitalRate(param);
            result = ApiStatus.OK;
        }catch(Exception e){
            e.printStackTrace();
        }
        resultHashMap.put(("result"), result);
        return resultHashMap;
    } 
}