package com.jlabsoft.hana.onethecar.onthecaradmin.admin.goodsRate;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface GoodsRateMapper {
    public List<HashMap<String, Object>> getSelectCodes(HashMap<String,Object> param);
    public List<HashMap<String, Object>> selectRateCheck(HashMap<String,Object> param);
    public int setGoodsRate(HashMap<String, Object> param);
    public HashMap<String,Object> getGoodsRateDetail(HashMap<String,Object> param);
    public int putGoodsRate(HashMap<String, Object> param);
}