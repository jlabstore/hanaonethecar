<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
        <tiles:insertAttribute name="head"/>
    <body class="">
        <div id="">
            <tiles:insertAttribute name="header"/>
        <!-- main -->
        <section id="">
            <tiles:insertAttribute name="body"/>
        </section>
        <!-- //main -->
            <tiles:insertAttribute name="footer"/>
        </div>
    </body>
</html>

