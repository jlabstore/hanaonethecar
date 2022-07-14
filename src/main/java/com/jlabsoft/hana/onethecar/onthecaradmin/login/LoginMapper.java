package com.jlabsoft.hana.onethecar.onthecaradmin.login;

import com.jlabsoft.hana.onethecar.onthecaradmin.model.Admin;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LoginMapper {

    public Admin getUserById(String id);

}