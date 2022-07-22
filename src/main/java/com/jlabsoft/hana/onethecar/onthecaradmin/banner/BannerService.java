package com.jlabsoft.hana.onethecar.onthecaradmin.banner;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jlabsoft.hana.onethecar.onthecaradmin.common.FileUtil;
import com.jlabsoft.hana.onethecar.onthecaradmin.model.ImageManage;
import com.jlabsoft.hana.onethecar.onthecaradmin.model.enums.ImageType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.multipart.MultipartFile;

@Service
public class BannerService {
    
    @Autowired
    private BannerMapper bannerMapper;

    @Value("${file.upload.path}")
    private String fileUploadPath;

    @Value("${image.path}")
    private String imagePath;

    @Value("${active.env}")
    private String activeEnv;


    public List<HashMap<String, Object>> getGoodsBanner(HashMap<String, Object> param) {
		return bannerMapper.getImageManage(param);
	}

    /**
     * 이미지 업로드 및 이미지 정보 DB 저장
     * @param file : 이미지 파일 
     * @param imageType : 이미지 타입 (null 허용)
     * @param param
     */
    public void setImage(MultipartFile file, ImageType imageType, String sort, String userId){
        String filePath =  imageType != null ? "/" + imageType.getValue() : "" ;

        if(!"".equals(file.getOriginalFilename())){
            try{

                List<String> fileNames = FileUtil.fileUpload(file, fileUploadPath + "/" + filePath);

                if(fileNames.size() > 0){
                    ImageManage imageManage = new ImageManage();
                    imageManage.setType(imageType != null ? imageType.name() : null);
                    imageManage.setPath(filePath);
                    imageManage.setOriginalFileName(fileNames.get(0));
                    imageManage.setMakingFileName(fileNames.get(1));
                    imageManage.setDelYn("N");
                    imageManage.setSelectSort(Integer.parseInt(sort));
                    imageManage.setRegId(userId);

                    bannerMapper.registImage(imageManage);
                }  
            }catch(IOException e){
                e.printStackTrace();
            }catch(Exception e){
                e.printStackTrace();
            }
        }
    }

    public int bannerSortChage(Map<String,Object> param){
        return bannerMapper.bannerSortChage(param);
    }

    public int removeBanner(Map<String,Object> param){
        return bannerMapper.removeBanner(param);
    }
}