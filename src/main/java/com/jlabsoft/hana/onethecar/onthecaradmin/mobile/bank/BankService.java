package com.jlabsoft.hana.onethecar.onthecaradmin.mobile.bank;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BankService {

    @Autowired
    private BankMapper bankMapper;

    public Map<String,Object> getevAutoloan(){
        return bankMapper.getevAutoloan();
    }

    public Map<String,Object> getOneQAutoloan(){
        return bankMapper.getOneQAutoloan();
    }
}
