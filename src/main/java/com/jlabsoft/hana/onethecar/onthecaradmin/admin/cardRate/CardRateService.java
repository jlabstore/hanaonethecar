package com.jlabsoft.hana.onethecar.onthecaradmin.admin.cardRate;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CardRateService {


    @Autowired
    private CardRateMapper cardRatesMapper;

    //코드가져오기
    public List<HashMap<String,Object>> getSelectCodes(HashMap<String, Object> param){
        return cardRatesMapper.getSelectCodes(param);
    }

    //오토캐쉬백
    public HashMap<String,Object> getCashBackDetail(HashMap<String,Object> param){
        return cardRatesMapper.getCashBackDetail(param);
    }

    public int setCashBack(HashMap<String,Object> param){
        return cardRatesMapper.setCashBack(param);
    } 

    public int putCashBack(HashMap<String,Object> param){
        return cardRatesMapper.putCashBack(param);
    } 

    // 오토카드할부
    public HashMap<String,Object> getAutoCardInstallmentDetail(HashMap<String,Object> param){
        return cardRatesMapper.getAutoCardInstallmentDetail(param);
    }

    public int setAutoCardInstallment(HashMap<String,Object> param){
        return cardRatesMapper.setAutoCardInstallment(param);
    } 

    public int putAutoCardInstallment(HashMap<String,Object> param){
        return cardRatesMapper.putAutoCardInstallment(param);
    } 

    //오토할부
    public HashMap<String,Object> getAutoInstallmentDetail(HashMap<String,Object> param){
        return cardRatesMapper.getAutoInstallmentDetail(param);
    }
    public int setAutoInstallment(HashMap<String,Object> param){
        return cardRatesMapper.setAutoInstallment(param);
    } 
    
    public int putAutoInstallment(HashMap<String,Object> param){
        return cardRatesMapper.putAutoInstallment(param);
    } 
    
    // 오토론
    public HashMap<String,Object> getAutoLoanDetail(HashMap<String,Object> param){
        return cardRatesMapper.getAutoLoanDetail(param);
    }
    public int setAutoLoan(HashMap<String,Object> param){
        return cardRatesMapper.setAutoLoan(param);
    } 
    public int putAutoLoan(HashMap<String,Object> param){
        return cardRatesMapper.putAutoLoan(param);
    } 


    
}