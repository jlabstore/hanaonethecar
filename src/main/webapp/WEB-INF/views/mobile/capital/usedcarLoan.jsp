<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<style>
	.topContent > .summary > .feature > ul > li span.con {
    line-height: 26px;
    font-size: 16px;
    color: #009178;
    font-weight: 800;
    padding: 2px 0;
	}
</style>
<body>
    <div id="wrap">
    <!-- main -->
<section id="body" class="capitalUsedcarLoan">

	<h1>중고차 오토론</h1>
	<a href="/m/main" class="goBack">Back</a>

	<!-- top content -->
	<div class="topContent">

		<p class="topLogo"><img src="/mobile/images/common/logo-hanacapital@2x.png" alt="하나캐피탈"></p>

		<!-- summary -->
		<div class="summary">

			<!-- top -->
			<div class="top">
				<h2>중고차 오토론</h2>
				<p class="exp">스마트한 중고차 <br>
				구입자금 대출</p>
			</div>
			<!-- //top -->
			<!-- info -->
			<div class="info">
				<p class="emp"><strong>중고차는 역시 하나캐피탈!</strong></p>
			</div>
			<!-- //info -->
			<!-- feature -->
			<div class="feature">
				<ul>
					<li style="white-space: nowrap;">
						<p class="icon"><img src="/mobile/images/common/icon-coin@2x.png" alt="최저 금리"></p>
						<p class="title">금리</p>
						<span class="con">연</span><span class="con" id="lowRateb"></span><span class="con">%</span><span class="con">~</span><span class="con" id="highRateb"></span><span class="con">%</span>
					</li>
					<li style="white-space: nowrap;">
						<p class="icon"><img src="/mobile/images/common/icon-duration@2x.png" alt="상환기간"></p>
						<p class="title">상환기간</p>
						<span class="con" id="lowRedemptionPeriod">24</span><span class="con">개월</span><span class="con">~<span><span id="highRedemptionPeriod" class="con">60</span><span class="con">개월</span>
					</li>
				</ul>
			</div>
			<!-- //feature -->
			<!-- link -->
			<div class="link">
				<a href="https://m.hanacapital.co.kr/car/info/used-car-loan.hnc?hfgInflow=loanUCar&gostate=N" class="capitalUsedCar round green btnFloat" target="_blank"><span>한도 조회하기</span></a>
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
							<li class="reference">사업자 또는 법인일 경우 전화상담 신청이 필요합니다.<br>
								[하나캐피탈 고객센터 : 1800-1110]
							 </li>
						</ul>
					</div>
					<div class="con">
						<p class="title">한도</p>
						<ul class="dotList">
							<li>차량 가격 이내 (개인신용평점 및 차량 가격에 따라 차등 적용)</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">금리</p>
						<ul class="dotList">
							<li style="font-weight:bold">고정금리 : 연 <span id="lowRate"></span> % ~ <span id="highRate"></span>%</li>
							<li style="font-weight:bold">연체이율 : 약정이율 + 3%(법정 최고금리 20% 이내)</li>
							<li class="reference">금융소비자의 개인신용평점에 따라 대출 한도 및 금리가 차등 적용 됩니다.</li>
							<li class="reference">대출 취급이 부적정한 경우(연체금 보유, 개인신용평점 낮음) 대출이 제한될 수 있습니다.</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">상환 기간</p>
						<ul class="dotList">
							<li>최소 <span id="lowRedemptionPeriodS"></span>개월 ~ 최대 <span id="highRedemptionPeriodS"></span>개월까지</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">이자 부과 시기</p>
						<ul class="dotList">
							<li>매월 후취</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">상환 방법</p>
						<ul class="dotList">
							<li>원리금균등분할상환</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">중도 상환 수수료</p>
						<ul class="dotList">
							<li>대출일로부터 3년 이내 상환 시 적용</li>
							<li>약정만기 1년 이상 : 중도상환원금 X 1% + 중도상환원금 X (중도상환수수료율-1%) X 잔존기간/(대출기간-30일)</li>
							<li>약정만기 1년 미만 : 중도상환원금 X (중도상환수수료율) X 잔존기간/(대출기간-30일)</li>
							<li class="reference">잔존기간 : 30일 미만 상환 시 ‘대출 사용기간’을 30일로 간주</li>
							<li class="reference">중도상환수수료율 : 최대 2%</li>
              <li class="reference">중도상환수수료율 1% 미만인 경우 ‘약정만기 1년 미만’ 산식 적용</li>
              <li class="reference">중도상환수수료율은 상품의 자금운용 기회비용, 모집·행정비용에 따라 산정됩니다.<br/>
                  본 대출의 중도상환수수료율은 약정서 ‘중도상환수수료’ 부분에서 확인 가능합니다.
              </li>
						</ul>
					</div>
					<div class="con">
						<p class="title">저당 설정</p>
						<ul class="dotList">
							<li>대출금액의 10%, 30% 50%</li>
							<li class="reference">근저당설정은 개인신용평점에 따라 차등 적용됩니다.</li>
							<li class="reference">설정비용은 당사가 부담하며 설정해지 비용은 금융소비자가 부담합니다.</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">기타 비용</p>
						<ul class="dotList">
							<li>인지세는 하나캐피탈과 금융소비자가 50%씩 부담합니다.</li>
						</ul>
						<table class="horizon">
							<tr>
								<td rowspan="2" class="title"></td>
								<td rowspan="2" class="title">인지세</td>
								<td colspan="2" class="title">인지세 부담</td>
							</tr>
							<tr>
								<td class="title">손님부담</td>
								<td class="title">은행부담</td>
							</tr>
							<tr>
								<td class="title">5천만원 이하</td>
								<td class="cost">비과세</td>
								<td class="cost">없음</td>
								<td class="cost">없음</td>
							</tr>
							<tr>
								<td class="title">5천만원 초과 <br/> ~ 1억원 이하</td>
								<td class="cost">70,000</td>
								<td class="cost">35,000</td>
								<td class="cost">35,000</td>
							</tr>
							<tr>
								<td class="title">1억원 초과 <br/> ~ 10억원 이하</td>
								<td class="cost">150,000</td>
								<td class="cost">75,000</td>
								<td class="cost">75,000</td>
							</tr>
							<tr>
								<td class="title">10억원 초과</td>
								<td class="cost light">350,000</td>
								<td class="cost">175,000</td>
								<td class="cost">175,000</td>
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
									<p class="text">‘중고차 오토론’ 상담을 신청합니다.</p>
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
									<p class="title">대출금 지급</p>
									<p class="text">고객 본인 계좌에 지급합니다.</p>
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
							<li class="reference">계약을 체결하기 전에 상품 설명서와 약관을 확인하시기 바랍니다.</li>
							<li class="reference emp">상환능력에 비해 대출금이 과도할 경우 귀하의 신용등급 또는 개인신용평점이 하락할 수 있습니다.</li>
							<li class="reference emp">개인신용평점 하락 시 금융거래와 관련된 불이익이 발생할 수 있습니다.</li>
							<li class="reference emp">일정기간 원리금을 연체할 경우, 모든 원리금을 변제할 의무가 발생할 수 있습니다.</li>
							<li class="reference">대출취급이 부적정한 경우(연체금 보유, 개인신용평점 낮음) 대출이 제한될 수 있습니다.</li>
							<li class="reference">담보물건, 담보종류 등에 따라 대출조건이 차등 적용되며 담보물이 부적합할 경우 대출이 제한될 수 있습니다.</li>
							<li class="reference">금융소비자는 해당 상품에 대하여 설명을 받을 권리가 있으며, 그 설명을 듣고 내용을 충분히 이해한 후 거래하시기 바랍니다.</li>
							<li class="reference">금융소비자의 개인신용평점에 따라 대출 한도 및 금리가 차등 적용됩니다.</li>
							<li class="reference">금리인하요구권 및 대출계약 철회권에 대한 자세한 사항은 하나캐피탈 홈페이지에서 확인하시기 바랍니다.</li>
							<li class="reference">하나캐피탈 준법심의필 25-26 (2025.01.31~2026.01.30)</li>
							<li class="reference">여신금융협회 심의필 제 2025-C1h-01418호<br/>
                (2025.02.10~2026.02.09)
							</li>
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
        getUsedcarLoan();
	});


    var getUsedcarLoan = function(){
		var result = null; 
        $.ajax({
            type: 'POST',
            url: '/m/getUsedcarLoan',
            async: false,
            success: function(data) {
				var temp = data.list != null ? true : false;
				var lowRate = temp ? data.list.low_rate : "";
				var highRate = temp ? data.list.high_rate : "";
				var lowRedemptionPeriod = temp ? data.list.low_redemption_period : "";
				var highRedemptionPeriod = temp ? data.list.high_redemption_period : "";

				$('#lowRateb').text(lowRate);
				$('#lowRate').text(lowRate);
				$('#highRateb').text(highRate); 
				$('#highRate').text(highRate); 
				$('#lowRedemptionPeriod').text(lowRedemptionPeriod); 
				$('#highRedemptionPeriod').text(highRedemptionPeriod); 
				$('#lowRedemptionPeriodS').text(lowRedemptionPeriod); 
				$('#highRedemptionPeriodS').text(highRedemptionPeriod); 
            },
            error: function(data) {
                alert('문제가 발생했습니다. 관리자에게 문의하세요.');
            }
        });
		return result;
    }
</script>