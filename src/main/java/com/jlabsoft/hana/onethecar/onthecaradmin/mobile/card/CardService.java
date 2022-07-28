package com.jlabsoft.hana.onethecar.onthecaradmin.mobile.card;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CardService {
    
    @Autowired
    private CardMapper cardMapper;

    public Map<String,Object> getAutoInstallment(){
        return cardMapper.getAutoInstallment();
    }

    public Map<String,Object> getAutoLoan(){
        return cardMapper.getAutoLoan();
    }

    public Map<String,Object> getAutoCashback(){
        return cardMapper.getAutoCashback();
    }
}