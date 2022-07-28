package com.jlabsoft.hana.onethecar.onthecaradmin.mobile.bank;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BankMapper {
    
    public Map<String, Object> getevAutoloan();
    public Map<String, Object> getOneQAutoloan();


}