package com.jlabsoft.hana.onethecar.onthecaradmin.mobile.capital;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CapitalService {
    
    @Autowired
    private CapitalMapper capitalMapper;

    public Map<String,Object> getCarLease(){
        return capitalMapper.getCarLease();
    }

    public Map<String,Object> getLongtermRental(){
        return capitalMapper.getLongtermRental();
    }

    public Map<String,Object> getUsedcarLoan(){
        return capitalMapper.getUsedcarLoan();
    }
}