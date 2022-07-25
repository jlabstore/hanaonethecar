<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
    <html lang="ko">
    <head>
    <!--해드 셋팅 정보 --> 
        <tiles:insertAttribute name="head"/>
    </head>
    <body class="main">
    <div id="wrap">
    <!-- header -->
    <tiles:insertAttribute name="header"/>
    <!-- //header -->
    <!-- main -->
    <section id="main">
        <!-- banner -->
        <!-- 동적 변경시 페이지 추가 처리 필요  -->
        <div class="topBanner">
            <ul class="slides">
                <li class="oneQ">
                    <a href="#">
                        <p class="subSlogan">신용 한도 차감 없는 1금융권 자동차 대출</p>
                        <p class="slogan">이제는 하나금융그룹 <br>
                        <strong>원더카</strong>에서 원큐에!</p>
                        <p class="link">바로 대출 확인</p>
                    </a>
                </li>
                <li class="oneQ">
                    <a href="#">
                        <p class="subSlogan">신용 한도 차감 없는 1금융권 자동차 대출</p>
                        <p class="slogan">이제는 하나금융그룹 <br>
                        <strong>원더카</strong>에서 원큐에!</p>
                        <p class="link">바로 대출 확인</p>
                    </a>
                </li>
                <li class="oneQ">
                    <a href="#">
                        <p class="subSlogan">신용 한도 차감 없는 1금융권 자동차 대출</p>
                        <p class="slogan">이제는 하나금융그룹 <br>
                        <strong>원더카</strong>에서 원큐에!</p>
                        <p class="link">바로 대출 확인</p>
                    </a>
                </li>
            </ul>
        </div>
    <script type="text/javascript">
        $(window).load(function() { 
            $('.topBanner').flexslider({
                animation: "slide",
                slideshowSpeed: 3000,
                animationSpeed: 600,
                directionNav: false,
                controlNav: true,
                after: function(slider) {
                    /* auto-restart player if paused after action */
                    if (!slider.playing) {
                        slider.play();
                    }
                }
            });
        });
    </script>
        <!-- //banner -->
        <!-- tab -->
        <!-- 동적 변경시 페이지 추가 처리 필요  -->
        <div class="tab">
            <ul>
                <li class="active"><a href="#bank"><span>하나은행</span></a></li>
                <li><a href="#card"><span>하나카드</span></a></li>
                <li><a href="#capital"><span>하나캐피탈</span></a></li>
            </ul>
        </div>
        <!-- //tab -->
        <!-- contents -->
        <div class="contents">
            <!-- 동적 페이지 호출 -->
            <tiles:insertAttribute name="body"/>
            <!-- 퍼블상 페이지에 고정 노출되는 코멘트면 해당 페이지 그대로 고정 아니라면 해당 메인페이지 이동 필요 -->
            <ul class="comment">
                <li>※ 본 홍보사이트는 법령 및 내부통제기준에 따른 절차를 거쳐 제공됩니다.</li>
                <li>※ 본 홍보사이트는 2022년 12월 31일까지 유효합니다.</li>
                <li>※ 하나은행 준법감시인 심의필 제2022-광고-1105호(2022.01.06)</li>
                <li>※ CC브랜드 210806-0047</li>
            </ul>
            <!-- //comment -->
        </div>
        <!-- //contents -->

    </section>
    <!-- //main -->

    <!-- footer -->
    <tiles:insertAttribute name="footer"/>
    <%-- <?php include "../include/footer.php" ?> --%>
    <!-- //footer -->

    </div>

    </body>
    </html>