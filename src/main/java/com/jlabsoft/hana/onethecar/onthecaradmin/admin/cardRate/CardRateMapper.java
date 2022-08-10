package com.jlabsoft.hana.onethecar.onthecaradmin.admin.cardRate;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CardRateMapper {
    
    public List<HashMap<String, Object>> getSelectCodes(HashMap<String,Object> param);

    //오토캐쉬백
    public HashMap<String,Object> getCashBackDetail(HashMap<String,Object> param);
    public int setCashBack(HashMap<String, Object> param);
    public int putCashBack(HashMap<String, Object> param);

    //오토카드할부
    public HashMap<String,Object> getAutoCardInstallmentDetail(HashMap<String,Object> param);
    public int setAutoCardInstallment(HashMap<String, Object> param);
    public int putAutoCardInstallment(HashMap<String, Object> param);

    
    //오토할부
    public HashMap<String,Object> getAutoInstallmentDetail(HashMap<String,Object> param);
    public int setAutoInstallment(HashMap<String, Object> param);
    public int putAutoInstallment(HashMap<String, Object> param);

    //오토론
    public HashMap<String,Object> getAutoLoanDetail(HashMap<String,Object> param);
    public int setAutoLoan(HashMap<String, Object> param);
    public int putAutoLoan(HashMap<String, Object> param);
}