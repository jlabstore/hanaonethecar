package com.jlabsoft.hana.onethecar.onthecaradmin.goodsRate;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface GoodRateMapper {
    
    public int setGoodsRate(Map<String, Object> param);
    
}