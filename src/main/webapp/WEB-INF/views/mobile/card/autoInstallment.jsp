<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<body class="main">
    <div id="wrap">
    <!-- main -->
<section id="body" class="cardInstallment">

	<h1>오토할부</h1>
	<a href="/m/main" class="goBack">Back</a>

	<!-- top content -->
	<div class="topContent">

		<p class="topLogo"><img src="/mobile/images/common/logo-hanacard@2x.png" alt="하나카드"></p>

		<!-- summary -->
		<div class="summary">
			<!-- top -->
			<div class="top">
				<h2>오토할부</h2>
				<p class="exp">
				초저금리 조건 비교하고 <br>
				추가 캐쉬백 혜택 받자!</p>
			</div>
			<!-- //top -->
			<!-- info -->
			<div class="info">
				<p class="emp"><strong>고객 맞춤형 캐쉬백 혜택</strong><br>
				<strong>2가지 유형 중 나에게 맞는 것으로 선택!</strong></p>
			</div>
			<!-- //info -->
			<!-- category -->
			<div class="category">
				<!-- 저금리형 -->
				<div class="lowInterest">
					<div class="type">
						<div class="top">
							<p class="sub">초 저금리 혜택</p>
							<p class="title">저금리형</p>
						</div>
						<div class="con">
							<p class="exp">선입금 금액 1.2% 캐쉬백 <br>
							할부신청금액 외 선입금 금액 대상으로 캐쉬백이 제공되며 낮은 금리로 월 납입금액 부담이 적어요</p>
						</div>
					</div>
					<div class="rate">
						<p class="title arrow">저금리형 할부 금리</p>
						<table class="horizon simple center">
							<tr>
								<td class="title">${autoInstallment.month1}개월</td>
								<td class="title">${autoInstallment.month2}개월</td>
								<td class="title">${autoInstallment.month3}개월</td>
								<td class="title">${autoInstallment.month4}개월</td>
							</tr>
							<tr>
								<td class="rateEmp">${autoInstallment.low_rate1}%</td>
								<td class="rateEmp">${autoInstallment.low_rate2}%</td>
								<td class="rateEmp">${autoInstallment.low_rate3}%</td>
								<td class="rateEmp">${autoInstallment.low_rate4}%</td>
							</tr>
							<tr>
								<td class="title">${autoInstallment.month5}개월</td>
								<td class="title">${autoInstallment.month6}개월</td>
								<td class="title">${autoInstallment.month7}개월</td>
								<td class="title">${autoInstallment.month8}개월</td>
							</tr>
							<tr>
								<td class="rateEmp">${autoInstallment.low_rate5}%</td>
								<td class="rateEmp">${autoInstallment.low_rate6}%</td>
								<td class="rateEmp">${autoInstallment.low_rate7}%</td>
								<td class="rateEmp">${autoInstallment.low_rate8}%</td>
							</tr>
						</table>
					</div>
				</div>
				<!-- //저금리형 -->
				<!-- 캐쉬백형 -->
				<div class="cashback">
					<div class="type">
						<div class="top">
							<p class="sub">더블 캐쉬백 혜택</p>
							<p class="title">캐쉬백형</p>
						</div>
						<div class="con">
							<p class="exp">할부금액 0.5% 추가 <br>
							할부신청금액 + 선입금 금액대상으로 캐쉬백 혜택이 커요!</p>
						</div>
					</div>
					<div class="rate">
						<p class="title arrow">캐쉬백형 할부 금리</p>
						<table class="horizon simple center">
							<tr>
								<td class="title">${autoInstallment.month1}개월</td>
								<td class="title">${autoInstallment.month2}개월</td>
								<td class="title">${autoInstallment.month3}개월</td>
								<td class="title">${autoInstallment.month4}개월</td>
							</tr>
							<tr>
								<td class="rateEmp">${autoInstallment.cashback_rate1}%</td>
								<td class="rateEmp">${autoInstallment.cashback_rate2}%</td>
								<td class="rateEmp">${autoInstallment.cashback_rate3}%</td>
								<td class="rateEmp">${autoInstallment.cashback_rate4}%</td>
							</tr>
							<tr>
								<td class="title">${autoInstallment.month5}개월</td>
								<td class="title">${autoInstallment.month6}개월</td>
								<td class="title">${autoInstallment.month7}개월</td>
								<td class="title">${autoInstallment.month8}개월</td>
							</tr>
							<tr>
								<td class="rateEmp">${autoInstallment.cashback_rate5}%</td>
								<td class="rateEmp">${autoInstallment.cashback_rate6}%</td>
								<td class="rateEmp">${autoInstallment.cashback_rate7}%</td>
								<td class="rateEmp">${autoInstallment.cashback_rate8}%</td>
							</tr>
						</table>
					</div>
				</div>
				<!-- //캐쉬백형 -->
			</div>
			<!-- //category -->
			<!-- link -->
			<!-- //link -->
			<!-- process -->
			<div class="process">
				<p class="title">빠르고 간편한 내 차 구매 프로세스</p>
				<ul>
					<li><span class="num">1</span>차량선택</li>
					<li><span class="num">2</span>모바일한도조회</li>
					<li><span class="num">3</span>전문상담원 안내</li>
					<li><span class="num">4</span>혜택받고 결제하기</li>
					<li><span class="num">5</span>구매차량 등록</li>
				</ul>
			</div>
			<!-- //process -->
			<!-- contact -->
			<div class="contact">
				<p class="title">자동차금융 상담센터</p>
				<p class="exp">평일 09:0 ~ 18:00</p>
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
						<p class="text">·오토할부 이용 고객의 경우 카드별 기본 서비스로 제공되는 포인트, 캐쉬백, 마일리지, 청구할인 등은 중복 적용되지 않습니다. <br>
						· 자세한 사항은 자동차금융 상담센터(1800-1221)로 문의 주시기 바랍니다. <br>
						· 상품 신청 전 상품설명서 및 약관을 반드시 확인하시기 바랍니다. <br>
						· 대출 시점에 신용도 변경에 따라 한도가 변경될 수 있으며 신청이 제한될 수 있습니다. <br>
						· 중도상환 시 잔여대출기간에따라 상환원금의 2% 이내로 중도상환수수료가 발생합니다. <br>
						· 금리인하요구권 및 대출계약 철회권에 대한 자세한 사항은 홈페이지에서 확인하시기 바랍니다. <br>
						· 대출취급이 부적정한 경우 대출이 제한될 수 있습니다. <br>
						· 분할상환금(원리금균등)과 이에 수반되는 모든 수수료를 지정된 대금 결제일에 상환합니다. <br>
						· 해당 상품은 취급수수료가 없습니다. <br>
						· 금융소비자는 해당 상품에 대하여 설명을 받을 권리가 있으며, 그 설명을 듣고 내용을 충분히 이해한 후 거래하시기 바랍니다.</p>
						<p class="text emp">· 연체이자율은 [약정이자율 +3%]이며, 법정 최고금리(20%) 이내에서 적용됩니다. <br>
						· 상환능력에 비해 대출금이 과도할 경우, 귀하의 신용등급 또는 개인신용평점이 하락할 수 있습니다. <br>
						· 신용등급 또는 개인신용평점 하락 시 금융거래와 관련된 불이익이 발생할 수 있습니다. <br>
						· 일정기간 원리금을 연체할 경우, 모든 원리금을 변제할 의무가 발생할 수 있습니다,</p>
					</div>
				</div>
			</li>
			<!-- //유의사항 -->

		</ul><br>
			<div class="link" style="text-align: center">
				<a href="#" class="round green"><span>상품안내 및 한도 조회</span></a>
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