<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<body>
    <div id="wrap">
        <!-- main -->
	<section id="body" class="bankEV">

	<h1>EV오토론</h1>
	<a href="/m/main" class="goBack">Back</a>
		<div class="topContent">

		<p class="topLogo"><img src="/mobile/images/common/logo-hanabank@2x.png" alt="하나은행"></p>
		<!-- summary -->
		<div class="summary">
			<!-- top -->
			<div class="top">
				<h2>EV오토론</h2>
				<p class="exp">
				#친환경차구매혜택 <br>
				<%-- #추가한도500만원 --%>
				</p>
			</div>
			<!-- //top -->
			<!-- info -->
			<div class="info">
				<p class="emp"><strong>친환경차 대상 구매혜택!</strong></p>
			</div>
			<!-- //info -->
			<!-- interest -->
			<div class="interest">
				<p class="title">대출 금리</p>
				<ul>
					<li>
						<p class="range">최저</p>
						<p class="rate">연 <span id="lowRate"></span>%~</p>
					</li>
					<li>
						<p class="range">최고</p>
						<p class="rate">연 <span id="highRate"></span>%</p>
					</li>
				</ul>
			</div>
			<!-- //interest -->
			<!-- feature -->
			<div class="feature">
				<ul>
					<li style="text-align: center;">
						<p class="icon"><img src="/mobile/images/common/icon-coin@2x.png" alt="대출 한도"></p>
						<p class="title">대출 한도</p>
						<p class="con">최대 6천만원</p>
					</li>
					<%-- <li>
						<p class="icon"><img src="/mobile/images/common/icon-sellcar@2x.png" alt="무료 보험 혜택"></p>
						<p class="title">무료 보험 혜택</p>
						<p class="con">교통사고 재해보험<br>가입!</p>
					</li> --%>
				</ul>
			</div>
			<!-- //feature -->
			<!-- link -->
			<div class="link">
				<a href="https://m.hanabank.com/cont/mybranch/0978/03/MYB09780018170/index.html" class="bankEv round btnFloat green" target="_blank"><span>한도 조회 하기</span></a>
			</div>
			<!-- //link -->
		</div>
		<!-- //summary -->

		<!-- additional -->
		<div class="additional">
			<p class="comment">[<span id="newBaseRateDt"></span>(현재)] 기준금리(금융채 6개월)<span id="newCarBaseRate"></span>% + 가산금리 <span id="newAddRate"></span>% - 부수거래 감면금리 <span id="newRate"></span>%* <br>
			*부수거래항목(
                    급여이체<span id="newRate1"></span>%,
                    주택청약종합저축납입<span id="newRate2"></span>%,
                    제휴카드결제<span id="newRate3"></span>%,
                    적금상품납입<span id="newRate6"></span>%,
                    하나원큐이체<span id="newRate5"></span>%,
                    기타자동이체<span id="newRate4"></span>%)<br>
					</p>
		</div>
		<!-- //additional -->

	</div>
	<!-- //top content -->

	<!-- detail -->
	<div class="detailContent">

		<ul class="accordion">

			<!-- 상품내용 및 금리 안내 -->
			<li>
				<div class="bar">
					<p class="title">상품내용 및 금리 안내</p>
				</div>
				<div class="content">
					<div class="con">
						<p class="title">대출자격</p>
						<ul class="dotList">
							<li>6개월 이상 재직(또는 1년 이상 사업영위) 및 소득증빙 가능한 만19세 이상 대한민국 국민으로서 다음의 용도로 자금이 필요한 손님</li>
							<li>신차구입 자금: <br>
							자동차 판매회사에서 신차를 구매하는 용도로 필요한 자금</li>
							<li>신차대환 자금: <br>
							은행을 제외한 금융회사(캐피탈 등)에서 받은 신차할부를 갚기 위한 자금</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">대상차량</p>
						<ul class="dotList">
							<li>전기,수소전기,하이브리드,플러그인하이브리드차량 <br>
							(단,승용차,승합차,적재5톤이하 화물차에 한함)</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">대출한도</p>
						<ul class="limit">
							<li>
								<p class="range">최대 <strong>6천만원</strong></p>
								<p class="title">신차구입/신차대환자금</p>
							</li>
						</ul>
						<ul class="dotList">
							<li>차량판매가격 또는 자동차 할부대출 상환액 이내. <br>
							단, 최저 취급금액은 3백만원 이상</li>
							<li class="reference">손님의 신용등급 및 연소득 기준으로 산출된 서울보증보험의 보증한도내에서 대출가능합니다.</li>
							<li class="reference">서울보증보험에서 정한 저연령&저신용자 등 취약손님은 위 한도에도 불구하고 차량가의 80%까지 대출 가능</li>
							<li class="reference">친환경차로 확인된 경우 서울보증보험 보증한도 내에서 5백만원 우대될 수 있음.</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">대출기간</p>
						<ul class="dotList">
							<li>12개월 ~120개월</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">담보</p>
						<ul class="dotList">
							<li>서울보증보험 담보 (100%)</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">샹환방식</p>
						<ul class="dotList">
							<li>원리금균등분할상환</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">담보</p>
						<ul class="dotList">
							<li>서울보증보험 담보 (100%)</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">금리안내</p>
						<div class="interest">
							<ul>
								<li>
									<p class="range">최저</p>
									<p class="rate">연<span id="lowRateD"></span>%~</p>
								</li>
								<li>
									<p class="range">최고</p>
									<p class="rate">연<span id="highRateD"></span>%</p>
								</li>
							</ul>
						</div>
						<table class="horizon">
							<tr>
								<td class="title">금리구분</td>
								<td class="right">금융채 6개월 변동</td>
							</tr>
							<tr>
								<td class="title">기준금리</td>
								<td class="rate"><span id="newCarBaseRateD"></span>%</td>
							</tr>
							<tr>
								<td class="title">가산금리</td>
								<td class="rate"><span id="newAddRateD"></span>%</td>
							</tr>
							<tr>
								<td class="title">부수거래 감면금리</td>
								<td class="rate"><span id="rateD"></span>%</td>
							</tr>
						</table>
						<ul class="dotList">
							<li class="reference">최저금리 기준: <br>
							2022.08.10 현재, 내부신용등급(ASS) 1등급, 대출기간 1년 부수거래 감면금리 적용시</li>
							<li class="reference">최고금리 기준: <br>
							2022.08.10 현재, 내부신용등급(ASS) 12등급, 대출기간 10년, 부수거래 감면금리 미적용시</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">부수거래 항목</p>
						<ul class="dotList">
							<li>급여이체 <strong><span id="newRate1D"></span>%</strong></li>
							<li>주택청약동합저축납입 <strong><span id="newRate2D"></span>%</strong></li>
							<li>제휴카드결제 <strong><span id="newRate3D"></span>%</strong></li>
							<li>기타자동이체 <strong><span id="newRate4D"></span>%</strong></li>
							<li>하나원큐이체 <strong><span id="newRate5D"></span>%</strong></li>
							<li>적금상품납입 <strong><span id="newRate6D"></span>%</strong></li>
						</ul>
					</div>
					<div class="con">
						<p class="title">부수거래 감면금리</p>
						<ul class="dotList">
							<li>부수거래는 매월 실적체크하여 미충족 할 경우 익월부터 해당 금리만큼 인상됩니다.</li>
						</ul>
					</div>
				<div class="con">
						<ul class="dotList">
							<li class="reference">이자 산정방법: 최저이율(기준금리 + 가산금리(ASS1등급) - 부수거래감면금리 ) / 최고이율(기준금리 + 가산금리(ASS11등급))</li>
							<li class="reference">가산금리는 신용등급, 대출기간, 대출금액 등에 따라 차등 적용됩니다.</li>
							<li class="reference">부수거래 항목별 감면금리: 대출 실행시 선택한 부수거래 항목의 감면금리가 적용되며, 이후에는 선택하지 않은 항목을 포함하여 모든 항목에 대해서 매월 감면조건을 충적하는 경우 1개월 단위로 금리가 감면되고, 매월 조건을 충족하지 않을 경우 감면 받은 금리가 자동으로 인상됩니다.</li>
							<li class="reference">대부업 등의 등록 및 금융이용자 보호에 관한 법률에 따른 법정 최고 금리는 연 20%입니다.</li>
							<li class="reference">연체이자율[대출이자율+연체가산이자율(연3%)]: <br>
							최고 연 15%입니다. <br>
							(상품에 따라 연체이자율이 일부 달라지는 경우가 있으므로 세부적인 사항은 대출거래약정서 등을 참고하시기 바랍니다.)</li>
							<li class="reference">이자의 부과시기: <br>
							후취방식 징구를 원칙으로 1개월 이내의 기간을 단위로 징수합니다. </li><br>
							<li class="reference">본 홍보물은 법령 및 내부통제기준에 따른 절차를 거쳐 제공됩니다.</li>
							<li class="reference"> 본 홍보물은 2023년 7월 31일까지 유효합니다.</li>
							<li class="reference"> 준법감시인 심의필 제2022-광고-6270호 (2022.08.12)</li>
							<li class="reference"> CC브랜드220811-0088</li>
						</ul>
						
					</div>
				</div>
			</li>
			<!-- //상품내용 및 금리 안내 -->

		</ul>

	</div>
	<!-- //detail -->
	</section>
    <!-- //main -->
    </div>
</body>
<script type="text/javascript">
	$(document).ready(function(){
        getEvAutoloan();
	});


    var getEvAutoloan = function(){
		var result = null; 
        $.ajax({
            type: 'POST',
            url: '/m/getEvAutoloan',
            async: false,
            success: function(data) {
				result = data;        
                //기준금리일
                newBaseRateDt = result.list.new_base_rate_dt;
                //기준금리
                newCarBaseRate = result.list.new_base_rate;
                //최저 가산금리
                newAddRate = result.list.new_add_rate;
				//최고 가산금리
                // newAddRate2 = result.list.new_add_rate2;

                //부수거래 감면 금리 
                newRate1 = result.list.new_rate1;
                newRate2 = result.list.new_rate2;
                newRate3 = result.list.new_rate3;
                newRate4 = result.list.new_rate4;
                newRate5 = result.list.new_rate5;
                newRate6 = result.list.new_rate6;
                
                //우대금리
                newRate7 = result.list.new_rate7;
                
                //부수거래 감면 금리 총합
                var newRateDF = newRate1 + newRate2 + newRate3 + newRate4 + newRate5 + newRate6;
                var newRate = newRateDF ? (newRateDF.toFixed(3)) : "";

                //최저금리
                var lowRateDF = newCarBaseRate + newAddRate - newRate;
                var lowRate = lowRateDF ? (lowRateDF.toFixed(3)) : "";
                //최고금리
                var highRateDF = newCarBaseRate + newAddRate;
                var highRate = highRateDF ? (highRateDF.toFixed(3)) : "";

                $('#lowRate').text(lowRate);
                $('#highRate').text(highRate);
                $('#newBaseRateDt').text(newBaseRateDt);
                $('#newCarBaseRate').text(newCarBaseRate);
                $('#newAddRate').text(newAddRate);
				// $('#newAddRate2').text(newAddRate2);
				$('#newAddRateD2').text(newAddRate);
                $('#newRate1').text(newRate1);
                $('#newRate2').text(newRate2);
                $('#newRate3').text(newRate3);
                $('#newRate4').text(newRate4);
                $('#newRate5').text(newRate5);
                $('#newRate6').text(newRate6);
                $('#newRate7').text(newRate7);
                $('#newRate7-1').text(newRate7);
                $('#newRate').text(newRate);


                //////////상세 tab//////////
                $('#lowRateD').text(lowRate);
                $('#highRateD').text(highRate);
                $('#newCarBaseRateD').text(newCarBaseRate);
                $('#newAddRateD').text(newAddRate);
                $('#rateD').text(newRate);
                $('#newRate1D').text(newRate1);
                $('#newRate2D').text(newRate2);
                $('#newRate3D').text(newRate3);
                $('#newRate4D').text(newRate4);
                $('#newRate5D').text(newRate5);
                $('#newRate6D').text(newRate6);
            },
            error: function(data) {
                alert('문제가 발생했습니다. 관리자에게 문의하세요.');
            }
        });
		return result;
    }
</script>