package com.jlabsoft.hana.onethecar.onthecaradmin.goodsRate;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GoodRateService {

    @Autowired
    private GoodsRateMapper goodRatesMapper;

    public List<HashMap<String,Object>> getSelectCodes(HashMap<String, Object> param){
        return goodRatesMapper.getSelectCodes(param);
    }

    
    public void setGoodsRate(HashMap<String, Object> param) {

        List<HashMap<String,Object>> listMap = goodRatesMapper.selectRateCheck(param);
        int newChecked = 0;
        int oldChecked = 0;
        if(listMap != null){
            for(HashMap<String,Object> temp : listMap){
                if(temp.get("type").equals("old")){
                    //old update
                    oldChecked = 1;
                }else{
                    // new update
                    newChecked = 1;
                }
            }
        }

        HashMap<String,Object> temp = getGoodsRate("new", param);

        if(newChecked == 1) {
            //update문
        }else {
            goodRatesMapper.setGoodsRate(temp);
        }
        

        temp = getGoodsRate("old", param);
        if(oldChecked == 1) {
            //update문
        }else {
            goodRatesMapper.setGoodsRate(temp);
        }
    }


    public HashMap<String,Object> getGoodsRateDetail(HashMap<String,Object> param){
        return goodRatesMapper.getGoodsRateDetail(param);
    }





    public HashMap<String, Object> getGoodsRate(String type, HashMap<String, Object> oMap) {
        HashMap<String, Object> temp = new HashMap<String, Object>();
        temp.put("goodsId", oMap.get("goodsId"));
        temp.put("type", type);
        temp.put("rateDt", oMap.get(type + "RateDt"));
        temp.put("carBaseRate", oMap.get(type + "CarBaseRate"));
        temp.put("addRate", oMap.get(type + "AddRate"));
        temp.put("rate1", oMap.get(type + "Rate1"));
        temp.put("rate2", oMap.get(type + "Rate2"));
        temp.put("rate3", oMap.get(type + "Rate3"));
        temp.put("rate4", oMap.get(type + "Rate4"));
        temp.put("rate5", oMap.get(type + "Rate5"));
        temp.put("rate6", oMap.get(type + "Rate6"));
        temp.put("rate7", oMap.get(type + "Rate7"));
        return temp;
    }

}