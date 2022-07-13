package com.jlabsoft.hana.onethecar.onthecaradmin.model.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public enum Role {
        
    ADMIN("ADMIN"),
    BANNER("BANNER"),
    BANK("BANK"),
    CAPITAL("CAPITAL"),
    CARD("CARD");
    

    private String value;
}