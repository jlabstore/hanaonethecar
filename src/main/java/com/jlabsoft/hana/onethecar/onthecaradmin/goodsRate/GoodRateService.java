package com.jlabsoft.hana.onethecar.onthecaradmin.goodsRate;

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
        // if(param.get("goodsId") == null || param.get("goodsId") == ""){
        //     goodRatesMapper.setGoodsRate(param);
        // }else{
        //     goodRatesMapper.putGoodsRate(param);
        // }
        return goodRatesMapper.setGoodsRate(param);
    } 

    //수정
    public int putGoodsRate(HashMap<String,Object> param){
        return goodRatesMapper.putGoodsRate(param);
    } 
    



    //수정 v1
    // public void setGoodsRate(HashMap<String, Object> param) {

    //     List<HashMap<String,Object>> listMap = goodRatesMapper.selectRateCheck(param);
    //     int newChecked = 0;
    //     int oldChecked = 0;
    //     if(listMap.size() != 0){
    //         for(HashMap<String,Object> temp : listMap){
    //             if(temp.get("type").equals("old")){
    //                 oldChecked = 1;
    //             }else{
    //                 newChecked = 1;
    //             }
    //         }
    //     }

    //     HashMap<String,Object> temp = getGoodsRate("new", param);
    //     if(newChecked == 1) {
    //         goodRatesMapper.putGoodsRate(temp);
    //     }else {
            
    //         goodRatesMapper.setGoodsRate(temp);
    //     }
        

    //     temp = getGoodsRate("old", param);
    //     if(oldChecked == 1) {
    //         //update문
    //         goodRatesMapper.putGoodsRate(temp);
    //     }else {
    //         goodRatesMapper.setGoodsRate(temp);
    //     }
    // }

    // public HashMap<String, Object> getGoodsRate(String type, HashMap<String, Object> objMap) {
    //     HashMap<String, Object> temp = new HashMap<String, Object>();
    //     temp.put("goodsId", objMap.get("goodsId"));
    //     temp.put("type", type);
    //     temp.put("rateDt", objMap.get(type + "RateDt"));
    //     temp.put("carBaseRate", objMap.get(type + "CarBaseRate"));
    //     temp.put("addRate", objMap.get(type + "AddRate"));
    //     temp.put("rate1", objMap.get(type + "Rate1"));
    //     temp.put("rate2", objMap.get(type + "Rate2"));
    //     temp.put("rate3", objMap.get(type + "Rate3"));
    //     temp.put("rate4", objMap.get(type + "Rate4"));
    //     temp.put("rate5", objMap.get(type + "Rate5"));
    //     temp.put("rate6", objMap.get(type + "Rate6"));
    //     temp.put("rate7", objMap.get(type + "Rate7"));
    //     return temp;
    // }

}