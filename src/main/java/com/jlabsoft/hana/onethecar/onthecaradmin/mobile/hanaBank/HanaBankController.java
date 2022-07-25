package com.jlabsoft.hana.onethecar.onthecaradmin.mobile.hanaBank;

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
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/m")
public class HanaBankController {
    
    @Autowired
    private HanaBankService hanaBankService;


    @RequestMapping(value = "/hanabank/list", method = RequestMethod.GET)
    public ModelAndView constructionTypeList(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView("hanabank/list");

        // mv.addObject("topMenuName", "공종메뉴 리스트");

        return mv;
    }


    //모바일 페이지 호출 예제 
    @RequestMapping(value="/main",method = RequestMethod.GET)
    public ModelAndView mobileMain(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView("mobile.hanaBank/hanabank");
        return mv;
    }

    // @RequestMapping(value = "/contactBook/list", method = RequestMethod.POST)
    // @ResponseBody
    // public HashMap<String,Object> selectSentenceList(HttpServletRequest request, HttpServletResponse response, @AuthenticationPrincipal Admin admin){
    //     HashMap<String, Object> map = new HashMap<>();
    //     map.put("userId", admin.getId());
    //     HashMap<String, Object> resultHashMap = new HashMap<>();
    //     ApiStatus result = ApiStatus.BAD_REQUEST;
        
    //         // List<Map<String, Object>> list = hanaBankService.selectContactBookList(map);
    //         result = ApiStatus.OK;
    //     resultHashMap.put("result",result);
    //     return resultHashMap;
    // }
}