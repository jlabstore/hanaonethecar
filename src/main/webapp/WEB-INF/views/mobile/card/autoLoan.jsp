<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<body>
    <div id="wrap">
    <!-- main -->
<section id="body" class="cardLoan">

	<h1>오토론</h1>
	<a href="/m/main" class="goBack">Back</a>

	<!-- top content -->
	<div class="topContent">

		<p class="topLogo"><img src="/mobile/images/common/logo-hanacard@2x.png" alt="하나카드"></p>

		<!-- summary -->
		<div class="summary">
			<!-- top -->
			<div class="top">
				<h2>오토론</h2>
				<p class="exp">하나카드 없이 <br>
				#빠르게 <br>
				#간편하게 <br>
				#신차구입</p>
			</div>
			<!-- //top -->
			<!-- info -->
			<div class="info">
				<p class="emp"><strong>대출한도 최대 1억</strong><br>
				<strong>국산차 수입차 전 차종 넉넉한 대출한도 </strong></p>
			</div>
			<!-- //info -->
			<!-- interest -->
			<div class="interest topBar">
				<ul class="divide">
					<li>
						<p class="title">고정금리</p>
						<p class="rate">연${autoLoan.fixed_rate}%</p>
					</li>
					<li>
						<p class="title">상환개월수</p>
						<p class="month">3/6/12/24/36/<br>
						48/60/72</p>
					</li>
				</ul>
			</div>
			<!-- //interest -->
			<!-- link -->
			<%-- <div class="link">
				<a href="#" class="round green"><span>한도 조회 하기</span></a>
			</div> --%>
			<!-- //link -->
			<!-- process -->
			<div class="process">
				<p class="title">빠르고 간편한 내 차 구매 프로세스</p>
				<ul>
					<li><span class="num">1</span>차량선택</li>
					<li><span class="num">2</span>모바일한도조회</li>
					<li><span class="num">3</span>전문상담원 안내</li>
					<li><span class="num">4</span>대출진행</li>
					<li><span class="num">5</span>구매차량 등록</li>
				</ul>
			</div>
			<!-- //process -->
			<!-- contact -->
			<div class="contact">
				<p class="title">자동차금융 상담센터</p>
				<p class="exp">평일 09:00 ~ 18:00</p>
				<a href="tel://18001221">1800-1221</a>
			</div>
			<!-- //contact -->
		</div>
		<!-- //summary -->

	</div>
	<!-- //top content -->

	<!-- detail -->
	<div class="detailContent">

		<ul class="accordion">

			<!-- 유의사항 -->
			<li>
				<div class="bar">
					<p class="title">유의사항</p>
				</div>
				<div class="content">
					<div class="con">
						<p class="text">· 오토론 신청 후 매월 이자 납입일에 이자를 납부해야 합니다. <br>
						· 상품 신청 전 상품설명서 및 약관을 반드시 확인하시기 바랍니다. <br>
						· 대출 시점에 신용도 변경에 따라 한도가 변경될 수 있으며 신청이 제한될 수 있습니다. <br>
						· 대출취급일로부터 3년 이내 상한 시 잔여대출기간에 따라 상환원금의 2% 이내로 중도상환수수료가 발생합니다. <br>
						· 금리인하요구권 및 대출계약 철회권에 대한 자세한 사항은 홈페이지에서 확인하시기 바랍니다. <br>
						· 대출취급이 부적정한 경우 대출이 제한될 수 있습니다. <br>
						· 분할상환금(원리금균등)과 이에 수반되는 모든 수수료를 지정된 대금 결제일에 상환합니다. <br>
						· 해당 상품은 취급수수료가 없습니다. <br>
						· 금융소비자는 해당 상품에 대하여 설명을 받을 권리가 있으며, 그 설명을 듣고 내용을 충분히 이해한 후 거래하시기 바랍니다.</strong> <br>
						<strong>· 연체이자율은 [약정이자율 +3%]이며, 법정 최고금리(20%) 이내에서 적용됩니다.</strong> <br>
						<strong>· 상환능력에 비해 대출금이 과도할 경우, 귀하의 신용등급 또는 개인신용평점이 하락할 수 있습니다.</strong> <br>
						<strong>· 신용등급 또는 개인신용평점 하락 시 금융거래와 관련된 불이익이 발생할 수 있습니다.</strong> <br>
						<strong>· 일정기간 원리금을 연체할 경우, 모든 원리금을 변제할 의무가 발생할 수 있습니다.</strong> <br>
						· 여신금융협회 심의필 제2022-L1h-02438호(2022.03.30 ~ 2023.03.29)</p>
					</div>
				</div>
			</li>
			<!-- //유의사항 -->

		</ul><br>
			<div class="link" style="text-align: center">
				<a href="https://m.hanacard.co.kr/MKAMLO0010M.web" class="round green"  style="width: 100%;" target="_blank"><span>상품안내 및 한도 조회</span></a>
			</div>

	</div>
	<!-- //detail -->

</section>




    <!-- //main -->
    </div>
</body>
<script type="text/javascript">
	$(document).ready(function(){
	});
</script>