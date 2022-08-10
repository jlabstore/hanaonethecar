package com.jlabsoft.hana.onethecar.onthecaradmin.admin.cardRate;

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
@RequestMapping("/admin/cardRate")
public class CardRateController {
    
    @Autowired
    private CardRateService cardRateService;


    //오토캐쉬백
    @GetMapping(value = "/autoCashBack")
    public ModelAndView regist(@AuthenticationPrincipal Admin admin,@RequestParam HashMap<String,Object> param, HttpServletRequest request) throws Exception {
        ModelAndView mav = new ModelAndView("admin.cardRate/autoCashBack");
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
            mav.addObject("getSelectCodes", cardRateService.getSelectCodes(param));
        }catch(Exception e){
            e.printStackTrace();            
        }
        return mav;
    }

    //오토캐쉬백 상세
    @RequestMapping(value = "/detailCashback", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String, Object> getCardRateDetail(@RequestParam HashMap<String,Object> param){

            HashMap<String,Object> data = new HashMap<String,Object>();
        try{
            HashMap<String,Object> detailCashback = cardRateService.getCashBackDetail(param);
            if(detailCashback != null){
                data.put("detailCashback", detailCashback);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return data;
    }

    //오토캐쉬백 등록
    @RequestMapping(value = "/setCashBack", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String,Object> setCashBack(@RequestParam HashMap<String,Object> param, @AuthenticationPrincipal Admin admin) throws IOException{
        HashMap<String,Object> resultHashMap = new HashMap<String,Object>();
        ApiStatus result = ApiStatus.BAD_REQUEST;
        try{
            param.put("userId",admin.getId());
            cardRateService.setCashBack(param);
            result = ApiStatus.OK;
        }catch(Exception e){
            e.printStackTrace();
        }
        resultHashMap.put(("result"), result);
        return resultHashMap;
    } 

    //오토캐쉬백 수정
    @RequestMapping(value = "/putCashBack", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String,Object> putCashBack(@RequestParam HashMap<String,Object> param, @AuthenticationPrincipal Admin admin) throws IOException{
        HashMap<String,Object> resultHashMap = new HashMap<String,Object>();
        ApiStatus result = ApiStatus.BAD_REQUEST;
        try{
            param.put("userId",admin.getId());
            cardRateService.putCashBack(param);
            result = ApiStatus.OK;
        }catch(Exception e){
            e.printStackTrace();
        }
        resultHashMap.put(("result"), result);
		return resultHashMap;
    } 


     //오토카드할부
    @GetMapping(value = "/autoCardInstallment")
    public ModelAndView AutoCardInstallment(@AuthenticationPrincipal Admin admin,@RequestParam HashMap<String,Object> param, HttpServletRequest request) throws Exception {
        ModelAndView mav = new ModelAndView("admin.cardRate/autoCardInstallment");
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
            mav.addObject("getSelectCodes", cardRateService.getSelectCodes(param));
        }catch(Exception e){
            e.printStackTrace();            
        }
        return mav;
    }

    //오토카드할부 상세
    @RequestMapping(value = "/detailAutoCardInstallment", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String, Object> getAutoCardInstallmentDetail(@RequestParam HashMap<String,Object> param){

            HashMap<String,Object> data = new HashMap<String,Object>();
        try{
            HashMap<String,Object> detailAutoCardInstallment = cardRateService.getAutoCardInstallmentDetail(param);
            if(detailAutoCardInstallment != null){
                data.put("detailAutoCardInstallment", detailAutoCardInstallment);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return data;
    }

    //오토카드할부 등록
    @RequestMapping(value = "/setAutoCardInstallment", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String,Object> setAutoCardInstallment(@RequestParam HashMap<String,Object> param, @AuthenticationPrincipal Admin admin) throws IOException{
        HashMap<String,Object> resultHashMap = new HashMap<String,Object>();
        ApiStatus result = ApiStatus.BAD_REQUEST;
        try{
            param.put("userId",admin.getId());
            cardRateService.setAutoCardInstallment(param);
            result = ApiStatus.OK;
        }catch(Exception e){
            e.printStackTrace();
        }
        resultHashMap.put(("result"), result);
        return resultHashMap;
    } 

    //오토카드할부 수정
    @RequestMapping(value = "/putAutoCardInstallment", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String,Object> putAutoCardInstallment(@RequestParam HashMap<String,Object> param, @AuthenticationPrincipal Admin admin) throws IOException{
        HashMap<String,Object> resultHashMap = new HashMap<String,Object>();
        ApiStatus result = ApiStatus.BAD_REQUEST;
        try{
            param.put("userId",admin.getId());
            cardRateService.putAutoCardInstallment(param);
            result = ApiStatus.OK;
        }catch(Exception e){
            e.printStackTrace();
        }
        resultHashMap.put(("result"), result);
		return resultHashMap;
    } 


     //오토할부
    @GetMapping(value = "/autoInstallment")
    public ModelAndView AutoInstallment(@AuthenticationPrincipal Admin admin,@RequestParam HashMap<String,Object> param, HttpServletRequest request) throws Exception {
        ModelAndView mav = new ModelAndView("admin.cardRate/autoInstallment");
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
            mav.addObject("getSelectCodes", cardRateService.getSelectCodes(param));
        }catch(Exception e){
            e.printStackTrace();            
        }
        return mav;
    }
    
    //오토할부 상세
    @RequestMapping(value = "/detailAutoInstallment", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String, Object> getAutoInstallmentDetail(@RequestParam HashMap<String,Object> param){

            HashMap<String,Object> data = new HashMap<String,Object>();
        try{
            HashMap<String,Object> detailAutoInstallment = cardRateService.getAutoInstallmentDetail(param);
            if(detailAutoInstallment != null){
                data.put("detailAutoInstallment", detailAutoInstallment);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return data;
    }

    //오토할부 등록
    @RequestMapping(value = "/setAutoInstallment", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String,Object> setAutoInstallment(@RequestParam HashMap<String,Object> param, @AuthenticationPrincipal Admin admin) throws IOException{
        HashMap<String,Object> resultHashMap = new HashMap<String,Object>();
        ApiStatus result = ApiStatus.BAD_REQUEST;
        try{
            param.put("userId",admin.getId());
            cardRateService.setAutoInstallment(param);
            result = ApiStatus.OK;
        }catch(Exception e){
            e.printStackTrace();
        }
        resultHashMap.put(("result"), result);
        return resultHashMap;
    } 

    //오토카드할부 수정
    @RequestMapping(value = "/putAutoInstallment", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String,Object> putAutoInstallment(@RequestParam HashMap<String,Object> param, @AuthenticationPrincipal Admin admin) throws IOException{
        HashMap<String,Object> resultHashMap = new HashMap<String,Object>();
        ApiStatus result = ApiStatus.BAD_REQUEST;
        try{
            param.put("userId",admin.getId());
            cardRateService.putAutoInstallment(param);
            result = ApiStatus.OK;
        }catch(Exception e){
            e.printStackTrace();
        }
        resultHashMap.put(("result"), result);
        return resultHashMap;
    } 

    //오토론
    @GetMapping(value = "/autoLoan")
    public ModelAndView autoLoan(@AuthenticationPrincipal Admin admin,@RequestParam HashMap<String,Object> param, HttpServletRequest request) throws Exception {
        ModelAndView mav = new ModelAndView("admin.cardRate/autoLoan");
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
            mav.addObject("getSelectCodes", cardRateService.getSelectCodes(param));
        }catch(Exception e){
            e.printStackTrace();            
        }
        return mav;
    }

    //오토론 상세
    @RequestMapping(value = "/detailAutoLoan", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String, Object> getAutoLoanDetail(@RequestParam HashMap<String,Object> param){

            HashMap<String,Object> data = new HashMap<String,Object>();
        try{
            HashMap<String,Object> detailAutoLoan = cardRateService.getAutoLoanDetail(param);
            if(detailAutoLoan != null){
                data.put("detailAutoLoan", detailAutoLoan);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return data;
    }

    //오토론 등록
    @RequestMapping(value = "/setAutoLoan", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String,Object> setAutoLoan(@RequestParam HashMap<String,Object> param, @AuthenticationPrincipal Admin admin) throws IOException{
        HashMap<String,Object> resultHashMap = new HashMap<String,Object>();
        ApiStatus result = ApiStatus.BAD_REQUEST;
        try{
            param.put("userId",admin.getId());
            cardRateService.setAutoLoan(param);
            result = ApiStatus.OK;
        }catch(Exception e){
            e.printStackTrace();
        }
        resultHashMap.put(("result"), result);
        return resultHashMap;
    } 

    //오토론 수정
    @RequestMapping(value = "/putAutoLoan", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String,Object> putAutoLoan(@RequestParam HashMap<String,Object> param, @AuthenticationPrincipal Admin admin) throws IOException{
        HashMap<String,Object> resultHashMap = new HashMap<String,Object>();
        ApiStatus result = ApiStatus.BAD_REQUEST;
        try{
            param.put("userId",admin.getId());
            cardRateService.putAutoLoan(param);
            result = ApiStatus.OK;
        }catch(Exception e){
            e.printStackTrace();
        }
        resultHashMap.put(("result"), result);
		return resultHashMap;
    } 


}