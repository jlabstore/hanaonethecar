package com.jlabsoft.hana.onethecar.onthecaradmin.admin.goodsRate;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jlabsoft.hana.onethecar.onthecaradmin.model.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Service;

@Service
public class GoodRateService {

    @Autowired
    private GoodsRateMapper goodRatesMapper;

    //코드값
    public List<HashMap<String,Object>> getSelectCodes(HashMap<String, Object> param){
        return goodRatesMapper.getSelectCodes(param);
    }

    // 상세
    public HashMap<String,Object> getGoodsRateDetail(HashMap<String,Object> param){
        return goodRatesMapper.getGoodsRateDetail(param);
    }

    //등록
    public int setGoodsRate(HashMap<String,Object> param){
        return goodRatesMapper.setGoodsRate(param);
    } 

    //수정
    public int putGoodsRate(HashMap<String,Object> param){
        return goodRatesMapper.putGoodsRate(param);
    } 
}