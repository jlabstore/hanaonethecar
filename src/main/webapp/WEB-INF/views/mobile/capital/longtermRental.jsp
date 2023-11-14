<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<body>
    <div id="wrap">
    <!-- main -->
<section id="body" class="capitalLongtermRental">

	<h1>장기렌터카</h1>
	<a href="/m/main" class="goBack">Back</a>

	<!-- top content -->
	<div class="topContent">

		<p class="topLogo"><img src="/mobile/images/common/logo-hanacapital@2x.png" alt="하나캐피탈"></p>

		<!-- summary -->
		<div class="summary">
			<!-- top -->
			<div class="top">
				<h2>장기렌터카</h2>
				<p class="exp">#부담은 줄이고<br>
				#편리함은 늘리고</p>
			</div>
			<!-- //top -->
			<!-- feature -->
			<div class="feature noBorder">
				<ul>
					<li>
						<p class="icon"><img src="/mobile/images/common/icon-savemoney@2x.png" alt="비용절감 혜택"></p>
						<p class="point">비용절감 혜택</p>
						<p class="exp">취득세4%, 자동차세 및 <br>
						보험료 영업용 차량 기준 적용</p>
					</li>
					<li>
						<p class="icon"><img src="/mobile/images/common/icon-calendar@2x.png" alt="365일, 24시간 손님 센터 운영"></p>
						<p class="point">365일, 24시간 <br>
						손님 센터 운영</p>
						<p class="exp">정비, 사고, 긴급출동 관련 상담 및 자동차 검사 대행까지 서비스 제공</p>
					</li>
					<li>
						<p class="icon"><img src="/mobile/images/common/icon-personal@2x.png" alt="개인신용평점 영향 없이 이용"></p>
						<p class="point">개인신용평점 <br>
						영향 없이 이용</p>
						<p class="exp">비금융상품으로 분류되어 <br>
						자산 또는 부채로 인식되지 않음</p>
					</li>
					<li>
						<p class="icon"><img src="/mobile/images/common/icon-transaction@2x.png" alt="간편한 비용 처리"></p>
						<p class="point">간편한 비용 처리</p>
						<p class="exp">월 납입금 비용 처리 가능 <br>
						(단, 업무용 승용차는 업무 사용분에 한함)</p>
					</li>
				</ul>
			</div>
			<!-- //feature -->
			<!-- link -->
			<div class="link">
				<a href="https://m.hanacapital.co.kr/cs/telephone/application.hnc?hfgInflow=rentNCar" class="capitalLongTerm round green btnFloat" target="_blank"><span>상담 신청하기</span></a>
			</div>
			<!-- //link -->
		</div>
		<!-- //summary -->

	</div>
	<!-- //top content -->

	<!-- detail -->
	<div class="detailContent">

		<ul class="accordion">

			<!-- 상품안내 -->
			<li>
				<div class="bar">
					<p class="title">상품안내</p>
				</div>
				<div class="content">
					<div class="con">
						<p class="title">대상</p>
						<ul class="dotList">
							<li>개인(사업자) 및 법인 사업자</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">가능차종</p>
						<ul class="dotList">
							<li>승용차 전 모델 (국산차, 수입차 포함)</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">납부시기</p>
						<ul class="dotList">
							<li>매월 후취</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">렌트료 포함 내역</p>
						<ul class="dotList">
							<li>취득세, 보험료, 자동차세, 정비료 <br>
							(단, 정비료는 계약 상품에 따라 포함 안될 수 있음)</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">정비 상품</p>
						<ul class="dotList">
							<li>Special 또는 Self (운행 패턴에 따라 고객 선택)</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">만기시 처리</p>
						<ul class="dotList">
							<li>계약 종료 후 고객의 의향에 따라 반환, 구매, 연장 가능</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">중도 해지 수수료</p>
						<ul class="dotList">
							<li>중도해지수수료율 = 잔여렌트료X해지위약금률</li>
							<li class="reference">잔여 렌트료='월렌트료'X(미청구 잔여개월수-1개월) <br>+해지시점 당월 잔여렌트료</li>
							<li class="reference">위약금률</li>
						</ul>
						<table class="tblBasic center">
							<tr>
								<td>2년이하</td>
								<td>3년이하</td>
								<td>4년이하</td>
								<td>4년초과</td>
							</tr>
							<tr>
								<td class="rate">35%</td>
								<td class="rate">30%</td>
								<td class="rate">25%</td>
								<td class="rate">20%</td>
							</tr>
						</table>
					</div>
				</div>
			</li>
			<!-- //상품안내 -->

			<!-- 진행절차 -->
			<li>
				<div class="bar">
					<p class="title">진행절차</p>
				</div>
				<div class="content">
					<div class="con">
						<ul class="processList">
							<li>
								<span class="num">1</span>
								<div class="info">
									<p class="title">상담 신청</p>
									<p class="text">‘장기렌터카’ 상담을 신청합니다.</p>
								</div>
							</li>
							<li>
								<span class="num">2</span>
								<div class="info">
									<p class="title">서류심사 및 결과통보</p>
									<p class="text">신청내용을 확인하여 결과를 통보합니다.</p>
								</div>
							</li>
							<li>
								<span class="num">3</span>
								<div class="info">
									<p class="title">계약서 작성</p>
									<p class="text">계약 시 온라인이나 오프라인 약정을 진행합니다.</p>
								</div>
							</li>
							<li>
								<span class="num">4</span>
								<div class="info">
									<p class="title">차량인도</p>
									<p class="text">고객님께 차량을 인도해 드립니다.</p>
								</div>
							</li>
							<li>
								<span class="num">5</span>
								<div class="info">
									<p class="title">차량유지 관리</p>
									<p class="text">소모품 주기별 교환 및 사고처리 대행서비스를 <br>
									제공해 드립니다. (장비 포함 상품 선택시)</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</li>
			<!-- //진행절차 -->

			<!-- 유의사항 -->
			<li>
				<div class="bar">
					<p class="title">유의사항</p>
				</div>
				<div class="content">
					<div class="con">
						<ul class="dotList">
							<li class="reference">렌터카 계약을 체결하기 전에 상품 설명서와 약관을 확인하시기 바랍니다.</li>
							<li class="reference">일정기간 렌탈료를 연체할 경우, 모든 렌탈료(원리금)를 변제할 의무가 발생할 수 있습니다. (연체이자 : 년 20%)</li>
							<li class="reference">렌터카 취급이 부적정한 경우(연체금 보유, 개인신용평점 낮음) 취급이 제한될 수 있습니다.</li>
							<li class="reference" style="color: red;">하나캐피탈 준법심의필 23-316 (2023.09.12 ~ 2024.09.11)</li>
						</ul>
					</div>
				</div>
			</li>
			<!-- //유의사항 -->

		</ul>

	</div>
	<!-- //detail -->
</section>

    <!-- //main -->
    </div>
</body>
<script type="text/javascript">
	$(document).ready(function(){
        getLongtermRental();
	});


    var getLongtermRental = function(){
		var result = null; 
        $.ajax({
            type: 'POST',
            url: '/m/getLongtermRental',
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
</script>