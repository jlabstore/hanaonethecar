<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<spring:eval expression="@environment.getProperty('image.path')" var="imagePath" />
<!DOCTYPE html>
<body class="main">
    <div id="wrap">
	<%-- <section id="header">
		
	</section> --%>
        <!-- main -->
	<section id="main">
		<div class="row topBanner">
			<ul id="bannerImg" class="slides">
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
						<p class="link">상품 상세 보기</p>
					</a>
				</li>
				<li class="ev_autoloan">
					<a href="bank/evAutoloan">
						<p class="title">EV오토론</p><p class="exp"><strong>친환경차 구매 시 혜택받는</strong> <br>착한 자동차 대출!<br><strong>추가한도 500만원</strong>까지!</p>
						<p class="link">상품 상세 보기</p>
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
				<li class="auto_card_installment">
					<a href="card/autoCardInstallment">
						<p class="title">오토카드할부</p>
						<p class="exp">이제는 간편하게 카드할부로! <br>
						<strong>대출기록, 중도상환수수료 걱정 없는</strong> <br>
						<strong>오토카드할부</strong>로 이용해 보세요</p>
						<p class="link">상품 상세 보기</p>
					</a>
				</li>
				<li class="auto_installment">
					<a href="card/autoInstallment">
						<p class="title">오토할부</p>
						<p class="exp"><strong>하나카드로 빠르고 간편하게</strong><br>새차 구입 계획은 저렴한 할부 금리 <br>신차 오토 할부로 이용해보세요</p>
						<p class="link">상품 상세 보기</p>
					</a>
				</li>
				<li class="auto_loan">
					<a href="card/autoLoan">
						<p class="title">오토론</p>
						<p class="exp"><strong>하나카드 없이도 빠르고 간편한</strong><br>신차구입방법!</p>
						<p class="link">상품 상세 보기</p>
					</a>
				</li>
				<li class="auto_cashback">
					<a href="card/autoCashback">
						<p class="title">오토캐쉬백</p>
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
			<div class="row banner">
			<ul id="capitalBannerImg">
			</ul>
		</div>
			<!-- //banner -->
		</div>
		<!-- //capital -->
		</div>
			<ul class="dotList">
				<li class="reference">본 홍보물은 법령 및 내부통제기준에 따른 절차를 거쳐 제공됩니다.</li>
				<li class="reference">본 홍보물은 2023년 7월 31일까지 유효합니다.</li>
				<li class="reference">하나캐피탈 준법심의필 22-1478(2022.07.22~2023.07.21)</li>
				<li class="reference">하나카드 준법심의 A-22-1090(2022.08.19 ~ 2023.08.18)</li>
				<li class="reference">하나은행 준법감시인 심의필 제2022-광고-6286호(2022.08.12) <br>
				CC브랜드220811-0086</li>
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
			<li>
				<a href="{{url}}" target="_blank">
					<img
						src="${imagePath}{{path}}/{{making_nm}}" 
						<%-- srcset="${imagePath}{{path}}/s_{{making_nm}} 320w",
							${imagePath}{{path}}/m_{{making_nm}} 480w,
							${imagePath}{{path}}/l_{{making_nm}} 800w --%>
					>
				</a>
			</li>
	{{/list}}
</script>
<script id="list-capital-card" type="x-tmpl-mustache">
	{{#capitalList}}
			<li>
				<a href="{{url}}" target="_blank">
					<img src="${imagePath}{{path}}/{{making_nm}}">
				</a>
			</li>
	{{/capitalList}}
</script>
<script type="text/javascript">
	$(document).ready(function(){
		submitForm();
		randomTab();
		// checkPcAndMobile();
		$('#classId').addClass('main');
		$('#header').append("<h2><a href='/m/main'>하나원더카</a></h2>");
	});

	var submitForm = function() {
        var result = getMainBannerList();
		var capitalResult = getCapitalBannerList();
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
		if(capitalResult != null){
			var capitalList = capitalResult.capitalList;
			renderCapitalList(capitalList);
		}
    };
		
	var renderList = function(list) {
        var template = document.getElementById('list-card').innerHTML;
        var rendered = Mustache.render(template, {list: list});
        document.getElementById('bannerImg').innerHTML = rendered;
    }

	var renderCapitalList = function(capitalList){
		var template = document.getElementById('list-capital-card').innerHTML;
        var rendered = Mustache.render(template, {capitalList: capitalList});
        document.getElementById('capitalBannerImg').innerHTML = rendered;
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

	var getCapitalBannerList = function(){
		var result = null; 
        $.ajax({
            type: 'POST',
            url: '/mobile/capital',
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

	
	function checkPcAndMobile(){
		//운영체제 종류 선언
		var filterOs = "win16|win32|win64|mac|macintel";
		
		//PC 및 모바일 접속 체크
		if(navigator.platform){
			if(0 < filterOs.indexOf(navigator.platform.toLowerCase())){				
					//PC 
					location.href ="/intro";
			}	  			    				    			
		}	
	};

</script>