<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<spring:eval expression="@environment.getProperty('image.path')" var="imagePath" />
<!DOCTYPE html>
<body class="main">
    <div id="wrap">
        <!-- main -->
	<section id="main">
	<%-------------------------------------- 배포후 주석처리 ---------------------------------%>
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
		<%-------------------------------------- 배포후 주석처리 hidden 삭제---------------------------------%>
		<div class="row topBanner" hidden>
			<ul id="bannerImg" class="slides" >
			</ul>
		</div>
		<div class="tab" id="randomTab">
			<ul id="tabUl">
			</ul>
		</div>
		<!-- contents -->
		<div class="contents">
		<!-- 동적 페이지 호출 -->
		<!-- bank -->
		<div id="bank" class="active">
			<ul class="content">
				<li class="oneQ_autoloan">
					<a href="bank/oneQAutoloan">
						<p class="title">1Q오토론</p>
						<p class="exp">신용한도 차감없는 1금융권 자동차 <br>대출! <strong>최장 10년 상환!</strong> 3년후부터 <br><strong>중도상환 수수료 없이!</strong></p>
						<p class="link">바로 대출 확인</p>
					</a>
				</li>
				<li class="ev_autoloan">
					<a href="bank/evAutoloan">
						<p class="title">EV오토론</p><p class="exp"><strong>하나카드 없이 빠르고 간편한 신차</strong> <br><strong>구입 방법!</strong> 새차 구입 계획은 저렴한 <br>금리 신차오토론으로 이용해보세요</p>
						<p class="link">바로 대출 확인</p>
					</a>
				</li>
			</ul>
			<ul class="comment">
				<li>
				</li>
			</ul>
		</div>
		<!-- //bank -->
		<!-- card -->
		<div id="card">
			<ul class="content">
			<li class="auto_installment">
				<a href="card/autoInstallment">
					<p class="title">오토할부</p>
					<p class="exp">빠르고 간편한 신차 구입 방법! <br>새차 구입 계획은 <strong>저렴한 할부금리</strong> <br><strong>신차오토할부</strong>로 이용해 보세요</p>
					<p class="link">상품 상세 보기</p>
				</a>
			</li>
			<li class="auto_loan">
				<a href="card/autoLoan">
					<p class="title">오토론</p>
					<p class="exp">빠르고 간편한 신차 구입 방법! <br>새차 구입 계획은 <strong>저렴한 할부금리</strong> <br><strong>신차오토할부</strong>로 이용해 보세요</p>
					<p class="link">상품 상세 보기</p>
				</a>
			</li>
			<li class="auto_cashback">
				<a href="card/autoCashback">
					<p class="title">오토캐시백</p>
					<p class="exp">자동차 일시불 결제 시 결제 금액의 <br><strong>1.0%~1.5% 캐쉬백</strong> 받는 서비스! <br>(단, 결제 건 별 300만원 이상 결제 시)</p>
					<p class="link">상품 상세 보기</p>
				</a>
			</li>
			</ul>
		</div>
		<!-- //card -->
		<!-- capital -->
		<div id="capital">
			<ul class="content">
				<li class="car_lease">
					<a href="capital/carLease">
						<p class="title">자동차리스</p>
						<p class="exp">다양한 혜택, 편리한 내차 이용 <br>새 차 <strong>구매 비용은 줄이고</strong> <br><strong>차량 유지 관리는 더 쉽게!</strong></p>
						<p class="link">상품 상세 보기</p>
					</a>
				</li>
				<li class="longterm_rental">
					<a href="capital/longtermRental">
						<p class="title">장기렌터카</p>
						<p class="exp">비용, 보험 걱정 없는 내 차 이용 <br><strong>차량유지 및 관리에 필요한</strong> <br><strong>다양한 혜택까지!</strong></p>
						<p class="link">상품 상세 보기</p>
					</a>
				</li>
			<li class="usedcar_loan">
				<a href="capital/usedcarLoan">
					<p class="title">중고차 오토론</p>
					<p class="exp">스마트한 중고차 구입! <br><strong>중고차가 필요한 나에게</strong> <br><strong>편리하고 저렴하게!</strong></p>
					<p class="link">상품 상세 보기</p>
				</a>
			</li>
		</ul>
		<!-- banner -->
		<div class="banner">
			<ul>
				<li class="usedcar">
					<a href="#">
						<p class="subSlogan">하나캐피탈 진단 중고차</p>
						<p class="slogan">믿을 수 있는 진단 차량, <br>안심 구매!</p>
						<p class="exp">하나캐피탈이 엄선한 무사고 차량을 <br>합리적인 가격에! 품질 보증까지!</p>
					</a>
				</li>
				<li class="longterm_rental">
					<a href="#">
						<p class="subSlogan">장기렌터카 특판 출고</p>
						<p class="slogan">대기 없이 <br>신차를 만나는 방법!</p>
						<p class="exp">특가는 기본, 대기 없이 차량을 이용하는 <br>장기렌터카 특판 출고!</p>
					</a>
				</li>
			</ul>
		</div>
		<!-- //banner -->
		</div>
		<!-- //capital -->
		</div>
			<ul class="comment">
				<li>※ 본 홍보사이트는 법령 및 내부통제기준에 따른 절차를 거쳐 제공됩니다.</li>
				<li>※ 본 홍보사이트는 2022년 12월 31일까지 유효합니다.</li>
				<li>※ 하나은행 준법감시인 심의필 제2022-광고-1105호(2022.01.06)</li>
				<li>※ CC브랜드 210806-0047</li>
			</ul>
		</div>
		<!-- //contents -->
	</section>
    <!-- //main -->
    </div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/4.0.1/mustache.min.js"></script>
<script id="list-card" type="x-tmpl-mustache">
	{{#list}}
				<li class="">
					<a href="#">
						<p class=""></p>
						<p class=""><strong></strong></p> 
						<p class="link"></p>
						<img style="height:160px;" src="${imagePath}{{path}}/{{making_nm}}">
					</a>
				</li>
	{{/list}}
</script>
<script type="text/javascript">
	$(document).ready(function(){
		submitForm();
		randomTab();
	});

	var submitForm = function() {
        var result = getMainBannerList();
        if(result != null){
            var list = result.list;
            renderList(list);

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
        }
    };

	var renderList = function(list) {
        var template = document.getElementById('list-card').innerHTML;
        var rendered = Mustache.render(template, {list: list});
        document.getElementById('bannerImg').innerHTML = rendered;
    }

    var getMainBannerList = function(){
		var result = null; 
        $.ajax({
            type: 'POST',
            url: '/mobile/main',
            async: false,
            success: function(data) {
				result = data;
            },
            error: function(data) {
                alert('문제가 발생했습니다. 관리자에게 문의하세요.');
            }
        });
		return result;
    }


	var tabs = ['bank', 'card', 'capital'];
	var tabsName = {'bank':'하나은행', 'card':'하나카드', 'capital':'하나캐피탈'}
	var randomTab = function(){
		var newTabs = [];
		do {
			var randomNum = Math.floor(Math.random() * (3));
			if(newTabs.indexOf(tabs[randomNum]) === -1){
				newTabs.push(tabs[randomNum]);
			}
		}while (newTabs.length < 3); 

		var tabsHtml = "";
		for(var i = 0; i < newTabs.length; i++){
			tabsHtml+="<li><a href='#"+newTabs[i]+"'><span>"+tabsName[newTabs[i]]+"</span></a></li>";
		}
		$('#tabUl').html(tabsHtml);

		$('.tab ul li a').click(function(e) {
			e.preventDefault();
			$(this).parent('li').addClass('active').siblings().removeClass('active');
			setActiveContents();
		});
		

		$('.tab > ul').children().eq(0).addClass('active');
		setActiveContents();
	}


	var setActiveContents = function(){
		var target = $('.tab > ul').find('.active').find('a').attr('href');;
		var contents = $('.tab').siblings('.contents').children('div');
		$(contents).each(function(){
			if($(this).is(target)) {
				$(this).addClass('active');
			} else {
				$(this).removeClass('active');
			};
		});

	}
</script>