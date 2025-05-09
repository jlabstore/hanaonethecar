package com.jlabsoft.hana.onethecar.onthecaradmin.model.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum ApiStatus {
    
    OK(200),
    BAD_REQUEST(400);

    private int value;
}