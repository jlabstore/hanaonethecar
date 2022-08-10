package com.jlabsoft.hana.onethecar.onthecaradmin.admin.capitalRate;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CapitalRateMapper {
    public List<HashMap<String, Object>> getSelectCodes(HashMap<String,Object> param);
    public HashMap<String,Object> getCapitalRateDetail(HashMap<String,Object> param);
    public int setCapitalRate(HashMap<String, Object> param);
    public int putCapitalRate(HashMap<String, Object> param);
}