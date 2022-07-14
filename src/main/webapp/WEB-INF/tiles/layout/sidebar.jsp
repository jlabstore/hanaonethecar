<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/main">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">ONETHECAR</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <li class="nav-item" id="cardNav">
        <a class="nav-link" href="/banner/regist" >
            <i class="fa-image"></i>
            <span>배너관리</span>
        </a>
    </li>
    <li class="nav-item" id="cardNav">
        <a class="nav-link" href="/goodRate/regist" >
            <i class="fa fa-money-bill"></i>
            <span>금리관리</span>
        </a>
    </li>
    <%-- <li class="nav-item" id="cardNav">
        <a class="nav-link" href="/card/list" >
            <i class="fas fa-fw fa-credit-card"></i>
            <span>하나카드</span>
        </a>
    </li> --%>

    <%-- <li class="nav-item"  id="bankNav">
        <a class="nav-link" href="/bank/list" >
            <i class="fa fa-university"></i>
            <span> 하나은행</span>
        </a>
    </li> --%>

    <%-- <li class="nav-item"  id="capitalNav">
        <a class="nav-link"  href="/capital/list">
            <i class="fa fa-money-bill"></i>
            <span>하나캐피탈</span></a>
    </li> --%>
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
            $('#'+paths[1]+'Nav').addClass('active');
        }
    }

</script>
<!-- End of Sidebar -->