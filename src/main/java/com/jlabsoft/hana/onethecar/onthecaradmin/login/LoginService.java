package com.jlabsoft.hana.onethecar.onthecaradmin.login;

import com.jlabsoft.hana.onethecar.onthecaradmin.model.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
@Transactional
public class LoginService implements UserDetailsService{

    @Autowired
    private LoginMapper loginMapper;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Admin member = loginMapper.getUserById(username);
        
        if(member == null) {
            throw new UsernameNotFoundException(username);
        }
        return member;
    }

}