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
    
}