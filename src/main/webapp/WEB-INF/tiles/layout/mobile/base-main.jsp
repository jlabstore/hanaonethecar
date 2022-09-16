<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
        <tiles:insertAttribute name="head"/>
    <body id="classId">
        <div>
            <tiles:insertAttribute name="header"/>
        <!-- main -->
        <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-58JV3WD" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->
        <section>
            <tiles:insertAttribute name="body"/>
        </section>        
        <!-- //main -->
            <tiles:insertAttribute name="footer"/>
        </div>
    </body>
</html>

