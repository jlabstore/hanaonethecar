<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authentication var="user" property="principal" />
<sec:authentication var="auth" property="authorities"/>
<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">ONETHECAR</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider">


<c:if test="${user.role == 'BANNER' || user.role == 'CAPITAL'}">
    <li class="nav-item" id="cardNav">
        <a class="nav-link" href="/admin/banner/regist" >
            <i class="fa-image"></i>
            <span>배너관리</span>
        </a>
    </li>
</c:if>
<c:if test="${user.role == 'BANK'}">
    <li class="nav-item" id="cardNav">
        <a class="nav-link" href="/admin/goodRate/regist" >
            <i class="fa fa-money-bill"></i>
            <span>금리관리</span>
        </a>
    </li>
</c:if>
<c:if test="${user.role == 'CARD'}">
    <li class="nav-item" id="cardNav">
        <a class="nav-link" href="/admin/cardRate/autoCardInstallment" >
            <i class="fa fa-money-bill"></i>
            <span>금리관리</span>
        </a>
    </li>
</c:if>
<c:if test="${user.role == 'CAPITAL'}">
    <li class="nav-item" id="cardNav">
        <a class="nav-link" href="/admin/capitalRate/regist" >
            <i class="fa fa-money-bill"></i>
            <span>금리관리</span>
        </a>
    </li>
</c:if>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

</ul>

<script type="text/javascript">

    $(document).ready(function(){
        activeNavItem();
    });

    var activeNavItem = function(){

        var paths = (window.location.pathname).split("/");
        if(paths.length > 1){
            $('#'+paths[2]+'Nav').addClass('active');
        }
    }

</script>
<!-- End of Sidebar -->