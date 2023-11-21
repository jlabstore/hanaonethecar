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
					<a href="javascript:void(0);" onClick="checkTimeHref('bank/oneQAutoloan')">
						<p class="title">원큐오토론</p>
						<p class="exp">신용한도 차감없는 1금융권 자동차 <br>대출! <strong>최장 10년 상환!</strong> 3년후부터 <br><strong>중도상환 수수료 없이!</strong></p>
						<p class="link">상품 상세 보기</p>
					</a>
				</li>
				<li class="ev_autoloan">
					<a href="javascript:void(0);" onClick="checkTimeHref('bank/evAutoloan')" >
						<p class="title">EV오토론</p><p class="exp"><strong>친환경차 구매 시 혜택받는</strong> <br>착한 자동차 대출!<br><strong>추가한도 500만원</strong>까지!</p>
						<p class="link">상품 상세 보기</p>
					</a>
				</li>
			</ul>
			<div class="row banner">
				<ul id="bankBannerImg">
				</ul>
			</div>
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
					<a href="javascript:void(0);" onClick="checkTimeHref('card/autoCardInstallment')">
						<p class="title">오토카드할부</p>
						<p class="exp">이제는 간편하게 카드할부로! <br>
						<strong>대출기록, 중도상환수수료 걱정 없는</strong> <br>
						<strong>오토카드할부</strong>로 이용해 보세요</p>
						<p class="link">상품 상세 보기</p>
					</a>
				</li>
				<li class="auto_installment">
					<a href="javascript:void(0);" onClick="checkTimeHref('card/autoInstallment')" >
						<p class="title">오토할부</p>
						<p class="exp"><strong>하나카드로 빠르고 간편하게</strong><br>새차 구입 계획은 저렴한 할부 금리 <br>신차 오토 할부로 이용해보세요</p>
						<p class="link">상품 상세 보기</p>
					</a>
				</li>
				<li class="auto_loan">
					<a href="javascript:void(0);" onClick="checkTimeHref('card/autoLoan')" >
						<p class="title">오토론</p>
						<p class="exp"><strong>하나카드 없이도 빠르고 간편한</strong><br>신차구입방법!</p>
						<p class="link">상품 상세 보기</p>
					</a>
				</li>
				<li class="auto_cashback">
					<a href="javascript:void(0);" onClick="checkTimeHref('card/autoCashback')"  >
						<p class="title">오토캐쉬백</p>
						<p class="exp">자동차 일시불 결제 시 결제 금액의 <br><strong>1.3% 캐쉬백</strong> 받는 서비스! <br>(단, 결제 건 별 300만원 이상 결제 시)</p>
						<p class="link">상품 상세 보기</p>
					</a>
				</li>
			</ul>
			<div class="row banner">
				<ul id="cardBannerImg">
				</ul>
			</div>
		</div>
		<!-- //card -->
		<!-- capital -->
		<div id="capital">
			<ul class="content">
				<li class="car_lease">
					<a href="javascript:void(0);" onClick="checkTimeHref('capital/carLease')" >
						<p class="title">자동차리스</p>
						<p class="exp">다양한 혜택, 편리한 자동차 이용 <br>새 차 <strong>구매 비용은 줄이고</strong> <br><strong>차량 유지 관리는 더 쉽게!</strong></p>
						<p class="link">상품 상세 보기</p>
					</a>
				</li>
				<li class="longterm_rental">
					<a href="javascript:void(0);" onClick="checkTimeHref('capital/longtermRental')" >
						<p class="title">장기렌터카</p>
						<p class="exp">부담은 줄이고, 편리함은 늘리고 <br><strong>차량유지 및 관리에 필요한</strong> <br><strong>다양한 혜택까지!</strong></p>
						<p class="link">상품 상세 보기</p>
					</a>
				</li>
				<li class="usedcar_loan">
					<a href="javascript:void(0);" onClick="checkTimeHref('capital/usedcarLoan')" >
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
				<li class="reference">하나은행은 예금자보호법상 부보금융기관이나 하나캐피탈, 하나카드는 부보금융기관이 아닙니다</li>
				<li class="reference">하나금융그룹 관계사는 상호 채무를 보증하지 않습니다.</li>
				<li class="reference">본 홍보물은 법령 및 내부통제기준에 따른 절차를 거쳐 제공됩니다.</li>
				<li class="reference">본 홍보물은 2024년 9월 30일까지 유효합니다.</li>
				<li class="reference">하나캐피탈 준법심의필 23-314 (2023.09.12 ~ 2024.09.11)</li>
				<li class="reference">하나카드 준법 심의필 A-23-1695(2023.09.13 ~ 2024.09.12)</li>
				<li class="reference">준법감시인 심의필 제2023-광고-06829호(2023.10.05)<br>
					CC브랜드220811-0086</li>
			</ul>
		</div>
		<!-- //contents -->
	</section>
    <!-- //main -->
	<a class="inline" href="#inline_content" style="display:none"></a>
	<div id="popup" style="display:none;">
	<div id="inline_content" >
		<div class="pop_head">
			<a href="javascript:void(0);" class="pop_close" onClick="popClose()">close</a>
		</div>
		<p class="pop_tit">서비스 안정화를 위한<br/>
		<strong>시스템 점검 안내</strong></p>
		<p class="pop_dash"></p>
		<p>하나카드의 원활한 서비스 이용을 위하여</p>
		<p class="date"><span class="highlight">2023년 11월 18일 00시 ~ 18시까지<br/>
		시스템 점검을 진행할 예정입니다.</span></p>
		<p>
		점검 기간동안 하나카드 서비스를 일시적으로<br/>
		이용하실 수가 없습니다. 빠른 시간 내 안정적인<br/>
		서비스를 제공할 수 있도록 노력하겠습니다.</p>
	</div>
	</div>
    </div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/4.0.1/mustache.min.js"></script>
<script id="list-card" type="x-tmpl-mustache">
	{{#list}}
			<li>
				<a href="{{url}}" target="_blank">
					<img
						src="${imagePath}{{path}}/{{making_nm}}" 
						srcset="${imagePath}{{path}}/{{making_nm}} 1000w,
							${imagePath}{{path}}/{{making_nm2}} 2000w,
							${imagePath}{{path}}/{{making_nm3}} 3000w"
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
<script id="list-bank-card" type="x-tmpl-mustache">
	{{#bankList}}
			<li>
				<a href="{{url}}" target="_blank">
					<img src="${imagePath}{{path}}/{{making_nm}}">
				</a>
			</li>
	{{/bankList}}
</script>
<script id="list-card-card" type="x-tmpl-mustache">
	{{#cardList}}
			<li>
				<a href="{{url}}" target="_blank">
					<img src="${imagePath}{{path}}/{{making_nm}}">
				</a>
			</li>
	{{/cardList}}
</script>
<script type="text/javascript">
	$(document).ready(function(){
		submitForm();
		randomTab();
		checkPcAndMobile();
		$('#classId').addClass('main');
		$('#header').append("<h2><a href='/m/main'>하나원더카</a></h2>");
	});

	var submitForm = function() {
        var result = getMainBannerList();
		var capitalResult = getCapitalBannerList();
		var bankResult = getBankBannerList();
		var cardResult = getCardBannerList();
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

		if(bankResult != null){
			var bankList = bankResult.bankList;
			renderBankList(bankList);
		}

		if(cardResult != null){
			var cardList = cardResult.cardList;
			renderCardList(cardList);
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

	var renderBankList = function(bankList){
		var template = document.getElementById('list-bank-card').innerHTML;
        var rendered = Mustache.render(template, {bankList: bankList});
        document.getElementById('bankBannerImg').innerHTML = rendered;
	}

	var renderCardList = function(cardList){
		var template = document.getElementById('list-card-card').innerHTML;
        var rendered = Mustache.render(template, {cardList: cardList});
        document.getElementById('cardBannerImg').innerHTML = rendered;
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

	var getBankBannerList = function(){
		var result = null; 
        $.ajax({
            type: 'POST',
            url: '/mobile/bank',
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

	var getCardBannerList = function(){
		var result = null; 
        $.ajax({
            type: 'POST',
            url: '/mobile/card',
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

	var scrollStop = function(){
		$('#wrap').on('scroll touchmove mousewheel',function(e){
			e.preventDefault();
			e.stopPropagation();
			return false;
		})
	}

	var scrollStart = function(){
		$('#wrap').off('scroll touchmove mousewheel')
	}

	var checkTimeHref = function(value ,time){
		var now = time != undefined ? new Date(time) : new Date();
		var startDt = new Date('2023-11-18 00:00:00.000');
		var endDt = new Date('2023-11-18 18:00:00.000');
		if(now >= startDt && now <= endDt){
			$(".inline").colorbox({ open:true, inline:true ,spped: 0, transition:'none'});
		}else{
			window.location.href = value
		}
	}

	var popClose = function(){
		$('.inline').colorbox.close();
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