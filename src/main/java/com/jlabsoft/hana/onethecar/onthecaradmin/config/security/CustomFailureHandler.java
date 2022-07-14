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
        // response.setContentType("application/json");
        // response.setCharacterEncoding("UTF-8");
        // response.getWriter().write("{\"result\": false, \"message\": \"" + exception.getMessage() + "\", \"type\": \"" + exception.getClass().getSimpleName() + "\"}");
        String exceptionClas = exception.getClass().getSimpleName();
        String msg = "";
        if("UsernameNotFoundException".equals(exceptionClas)) {
            // 아이디가 잘못되었을때
            msg = "errorId";
        }else if("BadCredentialsException".equals(exceptionClas)) {
            // 비밀번호가 틀렸을때
            msg = "errorPassword";
        }

        
		response.sendRedirect("/login?errorType="+msg);
    }

}