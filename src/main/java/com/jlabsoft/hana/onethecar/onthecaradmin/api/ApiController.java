package com.jlabsoft.hana.onethecar.onthecaradmin.api;

import java.util.HashMap;

import com.jlabsoft.hana.onethecar.onthecaradmin.model.enums.ApiStatus;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/api")
public class ApiController {
    
    @Autowired
    private PasswordEncoder passwordEncoder;

    // @Autowired
    // private ApiService apiService;
    
    @GetMapping("/passwordEnc")
    @RequestMapping(value =  "/passwordEnc", method = RequestMethod.GET)
    public String addMember(@RequestBody HashMap<String,Object> param ){
        String encPwd = passwordEncoder.encode(param.get("password").toString());
        System.out.println(encPwd);

        return encPwd;
    }

    // @GetMapping("/passwordEnc")
    // @RequestMapping(value =  "/passwordEnc", method = RequestMethod.GET)
    // @ResponseBody
    // public ResponseEntity<Object> addMember(@RequestBody HashMap<String,Object> param ){

    //     String encPwd = passwordEncoder.encode(param.get("password").toString());
    //     // String role = param.get("role").toString();
        
    //     System.out.println(encPwd);
        
    //     return new ResponseEntity<>(ApiResponse.res(ApiStatus.OK.getValue(), ApiStatus.OK.name(), apiService.passwordEnc(encPwd)), HttpStatus.OK);
    // }
}   

