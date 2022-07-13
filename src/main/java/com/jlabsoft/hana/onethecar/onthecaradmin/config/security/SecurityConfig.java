package com.jlabsoft.hana.onethecar.onthecaradmin.config.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import lombok.RequiredArgsConstructor;

@EnableWebSecurity
@RequiredArgsConstructor
public class SecurityConfig extends WebSecurityConfigurerAdapter{

    // @Autowired
    // CustomAuthenticationProvider customAuthenticationProvider;

    @Override
    public void configure(HttpSecurity security) throws Exception {
        security.headers().frameOptions().sameOrigin();

        //크로스사이트 위조 요청에대한 설정(RESTfull API 사용) - API사용이 없을시 제거 
        security.csrf().disable()                      
                .headers().frameOptions().disable(); 


        //페이지에 대한 인증처리 설정
        security.authorizeRequests()               //특정권한을 가진 사용자만 접근가능하도록 
                .antMatchers("/login").permitAll()  
                .antMatchers("/login/**").permitAll()
                .anyRequest().authenticated();

        //로그인  
        security.formLogin() 
            .loginPage("/login")                    //커스텀 로그인페이지 
            .defaultSuccessUrl("/main")
            .loginProcessingUrl("/login/auth"); // have to: Content-Type: multipart/form-data
            // .failureHandler(customFailureHandler);  


        //로그아웃
        security.logout()
            .invalidateHttpSession(true)            //로그아웃시 로그인정보 삭제
            .deleteCookies("JSESSIONID")            //쿠키 삭제 
            .logoutSuccessUrl("/login");            //로그아웃 후 보내질 페이지 
    }

    @Override
    public void configure(WebSecurity web) throws Exception
    {
        // static 디렉터리의 하위 파일 목록은 인증 무시 ( = 항상통과 )
        web.ignoring().antMatchers("/sbAdmin/**", "/js/**", "/css/**", "/img/**", "/image/**", "/lib/**", "/error");
    }
    
    
}