<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<style>
	.table.horizon tr span{
		line-height: 16px;
		font-size: 10px;
		border-bottom: 1px solid #dbdbdb;
		padding: 10px 0;
	}
</style>
<body>
    <div id="wrap">
    <!-- main -->
<section id="body" class="autoCardInstallment">

	<h1>오토카드할부</h1>
	<a href="/m/main" class="goBack">Back</a>

	<!-- top content -->
	<div class="topContent">

		<p class="topLogo"><img src="/mobile/images/common/logo-hanacard@2x.png" alt="하나카드"></p>

		<!-- summary -->
		<div class="summary">
			<!-- top -->
			<div class="top">
				<h2>오토카드할부</h2>
				<p class="exp">
				중도상환수수료, <br>
				대출기록 없이 <br>
				신차 구매하세요!</p>
			</div>
			<!-- //top -->
			<!-- info -->
			<div class="info">
				<p class="emp"><strong>대출기록 걱정없이 최대 1억원까지</strong> 이용가능</p>
			</div>
			<!-- //info -->
			<!-- category -->
			<div class="category">
				<!-- 금리 -->
				<div class="lowInterest">
					<div class="type">
						<div class="con">
							<p class="exp">대상 : 하나개인신용카드 고객 <br>
							선입금 금액 1.2% 캐쉬백 <br>
							한도 : 3백만원 ~1억원(심사 후 확정)</p>
						</div>
					</div>
					<div class="rate">
						<p class="title arrow">저렴한 할부 수수료</p>
						<table class="horizon simple center">
							<tr>
								<td class="title">${autocardInstallment.month1}개월</td>
								<td class="title">${autocardInstallment.month2}개월</td>
								<td class="title">${autocardInstallment.month3}개월</td>
								<td class="title">${autocardInstallment.month4}개월</td>
							</tr>
							<tr>
								<td class="rateEmp" id="rate1">${autocardInstallment.rate1}%</td>
								<td class="rateEmp" id="rate2">${autocardInstallment.rate2}%</td>
								<td class="rateEmp" id="rate3">${autocardInstallment.rate3}%</td>
								<td class="rateEmp" id="rate4">${autocardInstallment.rate4}%</td>
							</tr>
							<tr>
								<td class="title" id="month5">${autocardInstallment.month5}개월</td>
								<td class="title" id="month6">${autocardInstallment.month6}개월</td>
								<td class="title" id="month7">${autocardInstallment.month7}개월</td>
							</tr>
							<tr>
								<td class="rateEmp" id="rate5">${autocardInstallment.rate5}%</td>
								<td class="rateEmp" id="rate6">${autocardInstallment.rate6}%</td>
								<td class="rateEmp" id="rate7">${autocardInstallment.rate7}%</td>
							</tr>
						</table>
					</div>
				</div>
				<!-- //금리 -->
			</div>
			<div class="process">
				<p class="title">빠르고 간편한 내 차 구매 프로세스</p>
				<ul>
					<li><span class="num">1</span>차량선택</li>
					<li><span class="num">2</span>모바일한도조회</li>
					<li><span class="num">3</span>전문상담원 안내</li>
					<li><span class="num">4</span>할부진행</li>
				</ul>
			</div>
			<!-- //process -->
			<!-- contact -->
			<div class="contact">
				<p class="title">자동차금융 상담센터</p>
				<p class="exp">평일 09:00 ~ 18:00</p>
				<a href="tel://18001221">1800-1221</a>
			</div>
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
						<p class="text">
						- 대상 : <strong>하나 개인 신용카드고객</strong>(토스/토스뱅크/MG 제휴카드, 가족카드 제외)<br>
						- 오토카드할부 이용금액은 일시불 승인 후 할부로 전환되어 청구됩니다.<br>
						- 오토카드할부 이용 고객의 경우 카드별 기본 서비스로 제공되는 포인트, 캐시백, 마일리지, 청구할인 등은 중복 적용되지 않습니다.<br>
						- 오토카드할부 이용금액 300만원 이상 시 선입금 금액에 대해 1.2% 캐시백 지급되며, 자동차 결제일+13영업일 이내 하나카드 결제계좌로 지급됩니다.<br>
						- 오토카드할부는 하나카드 개인신용평점 기준에 따른 우수신용고객에 한해 이용 가능한 상품입니다.<br>
						- 자세한 사항은 자동차금융 상담센터(1800-1221)로 문의 주시기 바랍니다.<br>
						- 신용도 변경에 따라 한도가 변경될 수 있으며 신청이 제한될 수 있습니다.<br>
						- 중도상환 수수료 및 취급수수료가 없습니다.<br>
						- 계약 체결 전 상품 설명서 및 상품 약관을 반드시 확인하시기 바랍니다.<br>
						- 신용카드 발급이 부적정한 경우(개인신용평점 낮음등) 카드발급이 제한될 수 있습니다.<br>
						- 카드이용대금과 이에 수반되는 모든 수수료를 지정된 대금결제일에 상환하여야합니다.<br>
						- 금융소비자는 해당 상품 또는 서비스에 대하여 설명을 받을 권리가 있습니다.<br>
						<strong>· 상환능력에 비해 신용카드 사용액이 과도할 경우, 귀하의 개인신용 평점이 하락할 수 있습니다. </strong><br>
						<strong>· 개인 신용평점 하락 시 금융거래와 관련된 불이익이 발생할 수 있습니다.</strong><br>
						<strong>· 일정 기간 원리금을 연체할 경우, 모든 원리금을 변제할 의무가 발생할 수 있습니다. </strong><br>
						<strong>· 연체이자율(약정이율+최대3%)은 회원별•이용상품별 차등 적용되며, 법정 최고금리(20%)를 초과하지 않습니다.</strong> <br>
						&nbsp[준법심의 A-24-3260 (2024.12.26 ~ 2025.12.31)]
					</div>
				</div>
			</li>
			<!-- //유의사항 -->
		</ul><br>
			<div class="link " style="text-align: center">
				<a href="https://m.hanacard.co.kr/MKAMCI1020M.web" class="cardCardInstallment round green btnLand" style="width: 100%;" target="_blank"><span>상품안내 및 한도 조회</span></a>
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