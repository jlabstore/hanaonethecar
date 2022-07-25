package com.jlabsoft.hana.onethecar.onthecaradmin.admin.banner;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jlabsoft.hana.onethecar.onthecaradmin.model.ImageManage;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BannerMapper {
    
    public List<HashMap<String, Object>> getImageManage(HashMap<String, Object> param);
    public void registImage(ImageManage imageManage);
    public int bannerSortChage(Map<String,Object> param);
    public int removeBanner(Map<String,Object>param);
    

}