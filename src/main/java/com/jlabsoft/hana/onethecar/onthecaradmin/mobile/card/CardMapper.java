package com.jlabsoft.hana.onethecar.onthecaradmin.mobile.card;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CardMapper {
    
    public Map<String, Object> getAutoInstallment();
    public Map<String, Object> getAutoLoan();
    public Map<String, Object> getAutoCashback();

}