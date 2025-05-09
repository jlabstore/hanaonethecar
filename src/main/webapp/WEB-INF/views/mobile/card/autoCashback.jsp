<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<body >
    <div id="wrap">
    <!-- main -->
<section id="body" class="cardCashback">

	<h1>오토캐시백</h1>
	<a href="/m/main" class="goBack">Back</a>

	<!-- top content -->
	<div class="topContent">

		<p class="topLogo"><img src="/mobile/images/common/logo-hanacard@2x.png" alt="하나카드"></p>

		<!-- summary -->
		<div class="summary">
			<!-- top -->
			<div class="top">
				<h2>오토캐시백</h2>
				<p class="exp">자동차 일시불 결제 시 <br>
				결제금액의 <br>
				<%-- ${autoCashback.cashback3}%~${autoCashback.cashback2}% 캐시백!</p> --%>
				1.3% 캐시백!</p>
			</div><br>
				<%-- <strong><p class="exp">기간 </strong><br>
				${autoCashback.start_dt}~${autoCashback.end_dt}
				</p> --%>
			<!-- //top -->
			<!-- info -->
			<div class="info">
				<p class="emp"><strong>하나카드로 자동차 일시불 결제 시 </strong><br>
				<%-- <strong class="red">결제 금액의 ${autoCashback.cashback3}%~${autoCashback.cashback2}% 캐시백!</strong> --%>
				<strong class="red">결제 금액의 1.3% 캐시백!</strong>
				</p>
				<p class="text">(단, 결제 건 별 300만원 이상 결제 시에 적용)</p>
			</div>
			<!-- //info -->
			<!-- category -->
			<div class="category">
				<!-- 캐시백 서비스 -->
				<div class="cashback">
					<div class="type">
						<div class="top">
							<p class="sub">캐시백 서비스</p>
							<%-- <p class="title">${autoCashback.cashback3}%~${autoCashback.cashback2}% <br> --%>
							<p class="title">1.3% <br>
							<span>최대 500만원</span></p>
						</div>
					</div>
					<div class="info">
						<ul class="dotList green">
							<li>대상:하나 개인신용카드 고객 <br>
							(단,토스제휴,가족카드 제외)</li>
							<li>국산/수입신차/중고차 전 차종 신청 가능합니다.</li>
						</ul>
					</div>
				</div>
				<!-- //캐시백 서비스 -->
			</div>
			<!-- //category -->
			<!-- method -->
			<div class="method">
				<ul class="accordion simple">

					<!-- 선입금 방식 -->
					<li>
						<div class="bar">
							<p class="title">선입금 방식</p>
						</div>
						<div class="content">
							<div class="con">
								<p class="title">신청방법</p>
								<div class="roundBox">
									<ul class="stepList">
										<li><span class="step">Step 1</span><span class="title">신청</span>오토캐시백(선입금 방식)</li>
										<li><span class="step">Step 2</span><span class="title">가상계좌 부여</span>손님(개인)</li>
										<li><span class="step">Step 3</span><span class="title">특별한도 상향</span>입금(신청)한 금액만큼</li>
										<li><span class="step">Step 4</span><span class="title">일시불 결제</span>신용카드</li>
									</ul>
								</div>
							</div>
							<div class="con">
								<p class="title">캐시백 지급</p>
								<div class="interest">
									<ul class="divide">
										<%-- <li>
											<p class="rate green">${autoCashback.cashback1}%</p>
											<p class="text">300 ~3,000만원 미만 </p>
										</li>
										<li>
											<p class="rate">${autoCashback.cashback2}%</p>
											<p class="text">3,000만원 이상</p>
										</li> --%>
										<li>
											<p class="rate green">1.3%</p>
											<p class="text">300 만원 이상 </p>
										</li>
									</ul>
								</div>
								<div class="roundBox marginTop">
									<p class="text"><strong>자동차 결제일 +13영업일(휴일제외) 이내</strong><br>
									하나카드 결제계좌로 지급</p>
								</div>
							</div>
							<div class="con">
								<p class="title">이용안내</p>
								<ul class="dotList">
									<li>캐시백은 자동차결제 정상매입 기준으로 지급됩니다.</li>
									<li>선입금 방식의 경우, 특별한도는 입금 후 +15일간 유지됩니다.</li>
									<li>차량 특별한도는 한도 범위 내에서 자동차 결제가 가능하나 본인 이용한도와 합산하여 사용불가합니다.</li>
								</ul>
							</div>
						</div>
					</li>
					<!-- //선입금 방식 -->

					<!-- 체크카드 방식 -->
					<%-- <li>
						<div class="bar">
							<p class="title">체크카드 방식</p>
						</div>
						<div class="content">
							<div class="con">
								<p class="title">신청방법</p>
								<div class="roundBox">
									<ul class="stepList">
										<li><span class="step">Step 1</span><span class="title">신청</span>오토캐시백(체크카드 방식)</li>
										<li><span class="step">Step 2</span><span class="title">신청금액 입금</span>연동계좌에 신청금액 입금</li>
										<li><span class="step">Step 3</span><span class="title">체크카드 결제</span></li>
									</ul>
								</div>
							</div>
							<div class="con">
								<p class="title">캐시백 지급</p>
								<div class="interest">
									<ul class="divide">
										<li>
											<p class="rate">${autoCashback.cashback3}%</p>
											<p class="text">3,000만원 이상</p>
										</li>
									</ul>
								</div>
								<div class="roundBox marginTop">
									<p class="text"><strong>자동차 결제일 다음달 11일경</strong> <br>
									하나카드 결제계좌로 지급</p>
								</div>
							</div>
							<div class="con">
								<p class="title">이용안내</p>
								<ul class="dotList">
									<li>체크카드는 1일 한도 500만원, 월간 한도 2천만원까지 기본한도 제공됩니다.</li>
									<li>한도상향을 원하시는 고객은 오토서비스 고객센터(1599-5955) 또는 홈페이지 마이페이지 > 이용한도 > 체크카드 한도변경에서 한도 변경이 가능합니다.</li>
								</ul>
							</div>
						</div>
					</li> --%>
					<!-- //체크카드 방식 -->

				</ul>
			</div>
			<!-- //method -->
			<!-- link -->
			<!-- //link -->
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
						<p class="text">-대상 : 하나 개인 신용카드 고객 (토스/토스뱅크/MG 제휴카드, 가족카드 제외) <br>
										-캐시백 서비스 : 일시불 결제 시 1.3% 캐시백 (건별 300만원 이상, 최대 500 만원까지) <br>
										-기간 : 2024.12.01 ~ 2025.12.31 <br>
										-오토캐시백 이용 고객의 경우 카드별 기본서비스로 제공되는 포인트, 캐시백, 마일리지, <br>
										청구할인등은 중복 적용되지 않습니다. <br>
										-오토캐시백 서비스 이용 후 특별한도 기간 내 별도 신청없이 자동차 판매 업종에서 추
										가로 결제하시면 300만원 이상 결제건 1.0%, 300만원 미만 결제건 0.5% 캐시백 적용됩
										니다. (단, 체크카드 결제 건 제외) <br>
										-선입금방식의 경우, 특별한도는 입금 후 15일간 유지됩니다. <br>
										-특별한도 상향(가상계좌 입금) 후 기간 내 최소 300만원 이상 결제 건에 한하여 캐시백이 지급됩니다.(300만원 미만 결제 시 특별한도 이용 불가)<br>
                    -특별한도 범위내에서 자동차 결제가 가능하며, 특별한도와 본인이용한도 합산 사용은 불가합니다.<br>
										-모바일카드 결제 시 자동차판매점에서 key-in 결제방식으로 처리됩니다. (단, 수입차 판매점 일부 제외) <br>
										-매출취소 시 캐시백 대상에서 제외되며 기지급된 캐시백은 환급금 지급 전 회수합니다. <br>
										-카드탈회 및 카드해지 시 캐시백 대상에서 제외됩니다. <br>
										-상기 서비스는 하나카드의 영업정책이나 제휴업체의 사정으로 변경 또는 중단될 수 있습니다. <br>
										-캐시백에 대한 자세한 상담은 오토서비스 고객센터(1599-5955)로 문의하여 주시기 바랍니다. <br>
										-매출취소 시 오토서비스 고객센터 (1599-5955) 앞으로 환급요청을 하셔야 환급이 가능하며, 매출취소 후 재결제시에도 오토서비스 고객센터 (1599-5955) 앞으로 문의 후 진행하셔야 캐시백 지급이 가능합니다. <br>
                    -캐시백은 최대 500만원까지 입니다.<br>
										-캐시백은 자동차결제 정상매입 기준으로 자동차 결제일+13영업일 이내 하나카드 결제계좌로 지급됩니다. <br>
										-신청채널 및 이용상품(결제금액/유형)에 따라 별도 캐시백률로 운영 됩니다. <br>
										-계약체결 전 상품설명서 및 상품약관을 반드시 확인하시기 바랍니다. <br>
										-신용카드 발급이 부적정한 경우(개인신용평점 낮음 등) 카드발급이 제한 될 수 있습니다. <br>
										-카드 이용대금과 이에 수반되는 모든 수수료를 지정된 대금 결제일에 상환하여야 합니다. <br>
										-금융소비자는 해당 상품 또는 서비스에 대하여 설명을 받을 권리가 있습니다. <br>
						<strong>-상환능력에 비해 신용카드 사용액이 과도할 경우, 귀하의 개인신용 평점이 하락할 수 있습니다.</strong><br>
						<strong>-개인 신용평점 하락 시 금융거래와 관련된 불이익이 발생할 수 있습니다.</strong><br>
						<strong>-일정 기간 원리금을 연체할 경우, 모든 원리금을 변제할 의무가 발생할 수 있습니다.</strong><br>
						<strong>-연체이자율(약정이율+최대3%)은 회원별•이용상품별 차등 적용되며, 법정 최고금리(20%)를 초과하지 않습니다.</strong><br>
						</span>
						※준법심의 A-24-3259 (2024.12.26~2025.12.31)
						</p>
					</div>
				</div>
			</li>
			<!-- //유의사항 -->

		</ul><br>
			<div class="link" style="text-align: center">
				<a href="https://m.hanacard.co.kr/MKAMCB4010M.web?from=hfg" class="cardCashBack round green btnLand"  style="width: 100%;" target="_blank"><span>오토캐시백 신청하기</span></a>
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