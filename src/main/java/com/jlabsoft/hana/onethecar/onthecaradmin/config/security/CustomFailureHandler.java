package com.jlabsoft.hana.onethecar.onthecaradmin.config.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

@Configuration
public class CustomFailureHandler implements AuthenticationFailureHandler{
    
    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException, ServletException {
        
        String exceptionClas = exception.getClass().getSimpleName();
        String msg = "";
        if("UsernameNotFoundException".equals(exceptionClas)) {
            // 아이디가 잘못되었을때
            msg = "errorId";
        }else if("DisabledException".equals(exceptionClas)) {
            // 이메일 권한 체크를 안했을때
            msg = "errorEmailCheck";
        }else if("CredentialsExpiredException".equals(exceptionClas)) {
            // 소셜 아이디로 로그인 할때
            msg = "erroAccount";
        }else if("BadCredentialsException".equals(exceptionClas)) {
            // 비밀번호가 틀렸을때
            msg = "errorPassword";
        }else if ("AccountExpiredException".equals(exceptionClas)){
            // 개발자 권한이 아닐때
            msg = "errorRole";
        }
        
		response.sendRedirect("/login?errorType="+msg);
    }

}