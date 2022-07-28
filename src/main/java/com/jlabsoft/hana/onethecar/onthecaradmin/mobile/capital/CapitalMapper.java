package com.jlabsoft.hana.onethecar.onthecaradmin.mobile.capital;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CapitalMapper {
    
    public Map<String, Object> getCarLease();
    public Map<String, Object> getLongtermRental();
    public Map<String, Object> getUsedcarLoan();
}