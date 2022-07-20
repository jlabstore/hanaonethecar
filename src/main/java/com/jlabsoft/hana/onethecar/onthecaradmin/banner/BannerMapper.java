package com.jlabsoft.hana.onethecar.onthecaradmin.banner;

import java.util.List;

import com.jlabsoft.hana.onethecar.onthecaradmin.model.ImageManage;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BannerMapper {
    
    // public List<ImageManage> getImageManage(ImageManage imageManage);
    public void registImage(ImageManage imageManage);

}