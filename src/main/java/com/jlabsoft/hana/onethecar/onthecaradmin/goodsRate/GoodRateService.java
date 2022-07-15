package com.jlabsoft.hana.onethecar.onthecaradmin.goodsRate;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GoodRateService {

    @Autowired
    private GoodRateMapper goodRateMapper;

    public int setGoodsRate(Map<String, Object> param) {
        return goodRateMapper.setGoodsRate(param);
    }

}