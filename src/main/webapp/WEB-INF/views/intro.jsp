
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<!-- Google Tag Manager -->
<script>
	(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start': new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0], j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})
	(window,document,'script','dataLayer','GTM-58JV3WD');
</script>
<!-- End Google Tag Manager -->
<%-- 구글/네이버 검색도구 인증코드 --%>
<meta name="naver-site-verification" content="9b4d19f2757570f95d15ce859c28142dfb1cb3a3" />
<meta name="google-site-verification" content="IiYZPIny8e0azp4FCSEwpIoDbVMm8_udYkKO9jmD9GE" />

<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="author" content="jlab">
<meta name="keywords" content="하나원더카">
<meta name="description" content="자동차 금융의 모든것, 하나원더카">
<meta property="og:type" content="website">
<meta property="og:title" content="하나원더카">
<meta property="og:description" content="자동차 금융의 모든것, 하나원더카">
<meta property="og:image" content="/mobile/images/thumb-hanaonethecar.png">
<meta property="og:url" content="https://hanaonethecar.com/">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<title>하나원더카</title>
<link rel="canonical" href="https://www.hanaonethecar.com/m/main">
<link rel="stylesheet" type="text/css" href="/mobile/css/common.css" />
<link rel="stylesheet" type="text/css" href="/mobile/css/board.css" />
<link rel="stylesheet" type="text/css" href="/mobile/css/contents.css" />
<link rel="icon" href="/mobile/images/favicon.png">
<script src="/mobile/js/jquery-1.8.3.min.js"></script>
<script src="/mobile/js/jquery.flexslider-min.js"></script>
<script src="/mobile/js/style.js"></script>
</head>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-58JV3WD" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<body class="intro">

<div id="wrap">

<!-- intro -->
<section id="intro">

	<!-- mobile img -->
	<div class="mobile" id="radomDivImg">
		<p class="img"  id="randomImg" ><img  src="/mobile/images/intro/mobile_img.png" alt="하나원더카 모바일"></p>
	</div>
	<!-- //mobile img -->

	<!-- contents -->
	<div class="contents">
		<h1>하나 원더카</h1>
		<!-- slogan -->
		<div class="slogan" >
			<p class="main" id="randomHana"><strong >하나캐피탈,하나카드,하나은행</strong></p>
			<p class="sub">자동차와 관련된 모든 금융을 한번에! 편하게! <br>
			지금 모바일에서 경험하세요.</p>
		</div>
		<!-- //slogan -->
		<!-- qr code -->
		<div class="qr">
			<p class="img" ><img src="/mobile/images/intro/qr_code.png" alt="하나 원더카 QR코드"></p>
			<a>모바일 웹 QR코드</a>
		</div>
		<!-- //qr code -->
		<!-- notify -->
		<p class="notify">본 홍보물은 법령 및 내부통제기준에 따른 절차를 거쳐 제공됩니다. 본 홍보물은 2023년 7월 31일까지 유효합니다. <br>
		하나캐피탈 준법심의필 22-1478(2022.07.22 ~ 2023.07.21) / 하나카드 준법심의필 A-22-1090(2022.08.19 ~ 2023.08.18) / 하나은행 준법감시인 심의필 제2022-광고-6267호(2022.08.12) / CC브랜드220811-0085</p>
		<!-- //notify -->
	</div>
	<!-- //contents -->

	<!-- footer -->

	<!-- //footer -->

</section>
<!-- //intro -->

<!-- footer -->
<section id="pcFooter">
	<h1>하나금융그룹</h1>
	<ul class="info">
		<li>서울특별시 중구 을지로 66(을지로2가 181)</li>
		<li>하나금융그룹</li>
		<li>대표자 함영주</li>
		<li>사업자등록번호 107-86-71509</li>
		<li>COPYRIGHT ©HANA FINANCIAL GROUP 2012. ALL RIGHT RESERVED</li>
	</ul>
</section>
<!-- //footer -->

</div>

</body>
<script type="text/javascript">
	$(document).ready(function(){
		radomDivImg();
		checkPcAndMobile();
	});	


	var tabs = ['하나캐피탈','하나카드','하나은행'];
	var tabsName = {'bank':'하나은행', 'card':'하나카드', 'capital':'하나캐피탈'}
	var radomDivImg = function(){
		// 하나카드, 하나은행, 하나캐피탈 랜덤 배열 
		var randomNm = [];
		do{
			var randomNum = Math.floor(Math.random() * (3));
			if(randomNm.indexOf(tabs[randomNum]) === -1){
				randomNm.push(tabs[randomNum]);
			} 
		}while (randomNm.length < 3); 

		// 하나카드, 하나은행, 하나캐피탈 랜덤 텍스트
		var hanaHtml = "<strong>";
		for(var i=0 ; i< randomNm.length; i ++){
			if(i > 0)hanaHtml += ", "
			hanaHtml += randomNm[i];
		}
		hanaHtml += "</strong>";
		$('#randomHana').html(hanaHtml);
		
		// 하나카드, 하나은행, 하나캐피탈 랜덤 이미지
		var hanaImg = "";
		if(randomNm[0] == '하나은행'){
			hanaImg ="<img src ='/mobile/images/intro/pcmain-bank.png'>"
		}else if(randomNm[0] == '하나캐피탈'){
			hanaImg ="<img src ='/mobile/images/intro/pcmain-capital.png'>"	
		}else if(randomNm[0] == '하나카드'){
			hanaImg ="<img src ='/mobile/images/intro/pcmain-card.png'>"
		}
		$('#randomImg').html(hanaImg);
	}

	function checkPcAndMobile(){
		//운영체제 종류 선언
		var filterOs = "win16|win32|win64|mac|macintel";
		
		//PC 및 모바일 접속 체크
		if ( navigator.platform ) {
			if ( filterOs.indexOf(navigator.platform.toLowerCase()) < 0 ) {
				location.href="/m/main";
			} 
		}
	};

</script>
</html>