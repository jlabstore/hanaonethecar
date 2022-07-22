package com.jlabsoft.hana.onethecar.onthecaradmin.model.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter

public enum ImageType {
    
    MAINPC("mainPc"),
    MAINMOBILE("mainMobile");
    // CAPITALPC("capitalPc"),
    // CAPITALMOBILE("capitalMobile");
    
    private String value;

}