package com.jlabsoft.hana.onethecar.onthecaradmin.admin.capitalRate;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CapitalRateService {
    
    @Autowired
    private CapitalRateMapper capitalRateMapper;

    //코드값
    public List<HashMap<String,Object>> getSelectCodes(HashMap<String, Object> param){
        return capitalRateMapper.getSelectCodes(param);
    }

      // 상세
    public HashMap<String,Object> getCapitalRateDetail(HashMap<String,Object> param){
        return capitalRateMapper.getCapitalRateDetail(param);
    }

    //등록
    public int setCapitalRate(HashMap<String,Object> param){
        return capitalRateMapper.setCapitalRate(param);
    } 

    //수정
    public int putCapitalRate(HashMap<String,Object> param){
        return capitalRateMapper.putCapitalRate(param);
    } 
}