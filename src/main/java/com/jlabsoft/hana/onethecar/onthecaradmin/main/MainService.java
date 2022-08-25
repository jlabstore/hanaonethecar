package com.jlabsoft.hana.onethecar.onthecaradmin.main;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainService {
    
    @Autowired
    private MainMapper mainMapper;

    public List<Map<String,Object>> getMobileImage(){
        return mainMapper.getMobileImage();
    }

    public List<Map<String,Object>> getMobileCapitalImage(){
        return mainMapper.getMobileCapitalImage();
    }

    public List<Map<String,Object>> getMobileBankImage(){
        return mainMapper.getMobileBankImage();
    }

    public List<Map<String,Object>> getMobileCardImage(){
        return mainMapper.getMobileCardImage();
    }
    
}