package com.jlabsoft.hana.onethecar.onthecaradmin.common;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileUtil {
    
    /**
     * 
     * @param files   파일 정보 
     * @param filePath  파일 저장 경로
     */
    public static List<String> fileUpload(MultipartFile files, String filePath) throws Exception {      //MultipartFile 사용자가 업로드한 파일을 쉽게 다를수 있게 해주는 Handler
                        
        File dir = new File(filePath);
        // 디렉토리들이 있는지 확인
        if(!dir.isDirectory()){                                                                    
            dir.mkdirs();
        }

        List<String> fileNames = new ArrayList<>();
        String originalFilename = files.getOriginalFilename();
        if(originalFilename.equals("")){
            return fileNames;
        }else {
            String extension = FilenameUtils.getExtension(originalFilename);
            String randowUUID = UUID.randomUUID().toString();
            String makingFileName = "";
            File destinationFile; 

            do { 
                makingFileName = randowUUID + (extension != null && !"".equals(extension) ? "."+extension : "");
                // destinationFileName = sourceRandomStringUtils+sourceFileNameExtension; 
                destinationFile = new File(filePath+"/"+ makingFileName); 

            } while (destinationFile.exists()); 

            destinationFile.getParentFile().mkdirs(); 
            files.transferTo(destinationFile); 
            // Runtime.getRuntime().exec("chmod 777 " + path+fileName); 

            fileNames.add(originalFilename);
            fileNames.add(makingFileName);
            return fileNames;
        }
    }

    public void fileDelete(String imgName, String assort, String filePath) {
        File file = new File(filePath + assort + "/" + imgName);

		if(file.exists() == true){
            file.delete();
        }
    }
}