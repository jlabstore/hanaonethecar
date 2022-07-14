package com.jlabsoft.hana.onethecar.onthecaradmin.model.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public enum Role {
        
    ROLE_ADMIN("ROLE_ADMIN"),
    ROLE_BANNER("ROLE_BANNER"),
    ROLE_BANK("ROLE_BANK"),
    ROLE_CAPITAL("ROLE_CAPITAL"),
    ROLE_CARD("ROLE_CARD");
    

    private String value;
}