package com.jlabsoft.hana.onethecar.onthecaradmin.config.security;

import com.jlabsoft.hana.onethecar.onthecaradmin.login.LoginService;
import com.jlabsoft.hana.onethecar.onthecaradmin.model.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.password.PasswordEncoder;

import lombok.RequiredArgsConstructor;

@Configuration
@RequiredArgsConstructor
public class CustomAuthenticationProvider implements AuthenticationProvider{
    
    @Autowired
    private LoginService loginService;
    
    @Autowired
    private PasswordEncoder passwordEncoder;
    
    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String username = (String) authentication.getPrincipal();
        String password = (String) authentication.getCredentials();
        
        Admin member = (Admin) loginService.loadUserByUsername(username);
        
        if(!passwordEncoder.matches(password, member.getPassword()) ) {
            throw new BadCredentialsException(username);
        }
        return new UsernamePasswordAuthenticationToken(member, password, member.getAuthorities());
    }


    @Override
    public boolean supports(Class<?> authentication) {
        return true;
    }
}