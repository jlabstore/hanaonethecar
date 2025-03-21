package com.jlabsoft.hana.onethecar.onthecaradmin.main;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MainMapper {
    
    public List<Map<String, Object>> getMobileImage();
    public List<Map<String, Object>> getMobileCapitalImage();
    public List<Map<String, Object>> getMobileBankImage();
    public List<Map<String, Object>> getMobileCardImage();
}