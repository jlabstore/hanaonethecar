package com.jlabsoft.hana.onethecar.onthecaradmin.api;

import java.util.HashMap;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/api")
public class ApiController {
    
    @Autowired
    private PasswordEncoder passwordEncoder;
    
    @GetMapping("/passwordEnc")
    @RequestMapping(value =  "/passwordEnc", method = RequestMethod.GET)
    public String addMember(@RequestBody HashMap<String,Object> param ){
        String encPwd = passwordEncoder.encode(param.get("password").toString());
        System.out.println(encPwd);

        return encPwd;
    }
}   

