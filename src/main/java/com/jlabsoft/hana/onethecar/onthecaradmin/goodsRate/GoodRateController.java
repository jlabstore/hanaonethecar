package com.jlabsoft.hana.onethecar.onthecaradmin.goodsRate;

import java.io.IOException;
import java.util.HashMap;
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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/goodRate")
public class GoodRateController {
    

    @Autowired
    private GoodRateService goodRateService;

    
    @GetMapping(value="/regist")
    public ModelAndView regist(@AuthenticationPrincipal Admin admin,@RequestParam HashMap<String,Object> param) throws Exception {
        // @RequestParam HashMap<String,Object> param,
        ModelAndView mav = new ModelAndView("onethecar.goodRate/regist");

        try{
            // HashMap<String,Object> getGoodsRateDetail = goodRateService.getGoodsRateDetail(param);
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
            mav.addObject("getSelectCodes", goodRateService.getSelectCodes(param));
            // mav.addObject("getGoodsRateDetail",getGoodsRateDetail);
        }catch(Exception e){
            e.printStackTrace();            
        }
        return mav;
    }

    @RequestMapping(value = "/setGoodsRate", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String,Object> setGoodsRate(@RequestParam HashMap<String,Object> param, @AuthenticationPrincipal Admin admin) throws IOException{
        HashMap<String,Object> resultHashMap = new HashMap<String,Object>();
        ApiStatus result = ApiStatus.BAD_REQUEST;
        try{
            param.put("userId",admin.getId());
            goodRateService.setGoodsRate(param);
            result = ApiStatus.OK;
        }catch(Exception e){
            e.printStackTrace();
        }
        resultHashMap.put(("result"), result);
		return resultHashMap;
    } 



}