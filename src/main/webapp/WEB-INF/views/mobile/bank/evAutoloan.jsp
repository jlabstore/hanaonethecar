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
				<h2><em style="color:#dc231e;">EV</em>오토론</h2>
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
						<p class="range" style="color: black;">최저</p>
						<p class="rate">연 <span id="lowRate"></span>%~</p>
					</li>
					<li>
						<p class="range" style="color: black;">최고</p>
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
			<p class="comment">[<span id="newBaseRateDt"></span>(현재)] 기준금리(금융채 6개월)<span id="newCarBaseRate"></span>% + <br>가산금리 <span id="newAddRate"></span>% ~ 3.776% - 부수거래 감면금리 <span id="newRate"></span>%* <br>
				*부수거래항목 :
				급여이체(<span id="newRate1"></span>%)+ 
				주택청약종합저축 월 5만원 납입 또는 적금상품 월 10만원 납입(<span id="newRate2"></span>%)+ 
				[기본]제휴카드 월 30만원이상 결제(<span id="newRate3"></span>%)+ 
				[추가]제휴카드 월 70만원 결제<span></span>(0.1%)
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
						<p class="title">상환방식</p>
						<ul class="dotList">
							<li>원리금균등분할상환</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">중도상환해약금</p>
						<ul class="dotList">
							<li>중도상환대출금액 X 중도상환해약금률 0.7% X (중도상환약정잔여일수 ÷ 중도상환약정기간)으로 하며, 최초 대출일로부터 3년까지 적용합니다. (단, 대출잔여기간 3개월 이내 상환 시 면제)</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">대출관련비용</p>
						<ul class="dotList">
							<li>인지세법에 의해 대출약정 체결시 납부하는 세금으로 대출금액에 따라 세액이 차등 적용되며, 은행과 손님이 각 50%씩 부담합니다.</li>
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
								<td class="title">5천만원 초과 <br/>~ 1억원 이하</td>
								<td class="cost">70,000</td>
								<td class="cost">35,000</td>
								<td class="cost">35,000</td>
							</tr>
							<tr>
								<td class="title">1억원 초과</td>
								<td class="cost">150,000</td>
								<td class="cost">75,000</td>
								<td class="cost">75,000</td>
							</tr>
						</table>
					</div>
					<div class="con">
						<p class="title">필요서류</p>
						<ul class="dotList">
							<li>매매계약서, 재직/소득 확인서류, 자동차등록원부 (오토바이는 이륜차사용신고필증) 등 대출상담 시 추가서류가 필요할 수 있으며, 캠핑카는 캠핑카임이 명시된 자동차보험가입서류가 필요할 수 있습니다.</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">금리인하요구권</p>
						<ul class="dotList">
							<li>본인의 신용상태가 개선되었다고 판단되는 경우(예 : 취업, 승진, 재산증가, 개인신용평점 상승) 증빙자료를 첨부한 금리인하신청서를 은행에 제출하여 금리인하를 요구할 수 있습니다.</li>
							<li>금리인하 요구를 받은 날부터 10영업일 이내(고객에게 자료의 보완을 요구하는 날부터 자료가 제출되는 날까지의 기간은 포함되지 않습니다)에 금리인하요구 수용 여부를 통지해드립니다.</li>
							<li class="reference">신용상태가 금리에 영향을 미치지 않는 상품은 금리인하요구 대상에서 제외되며 CSS(개인신용평가시스템) 평가결과, 은행 내부정책 등에 따라 금리인하요구가 수용되지 않을 수 있습니다.</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">대출계약철회권</p>
						<ul class="dotList">
							<li>대출금 수령일로부터 14일(기간의 말일이 휴일인 경우 다음 영업일)까지 은행에 서면, 전화, 컴퓨터 통신으로 철회의사를 표시하고 원금, 이자 및 부대비용을 전액 반환한 경우 대출계약을 철회할 수 있습니다.	</li>
							<li>대출계약 철회권 남용 시 불이익: 당행에서 최근 1개월 내에 2회 이상 대출계약을 철회하는 경우, 신규대출·만기연장 거절, 대출한도 축소, 금리우대 제한 등 불이익이 발생할 수 있습니다.</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">위법계약해지권</p>
						<ul class="dotList">
							<li>은행이 「금융소비자 보호에 관한 법률」에서 정하는 적합성원칙, 적정성원칙 및 설명의무를 위반하였거나, 불공정영업행위 혹은 부당권유행위를 하여 대출계약을 체결한 경우, '법 위반사실을 안 날'부터<br>
								 1년(계약체결일로부터 5년 이내의 범위에 있어야 합니다.) 이내에 해당 계약의 해지를 요구할 수 있습니다.</li>
							<li>은행은 해지를 요구받은 날부터 10일 이내에 고객에게 수락여부를 통지하며, 거절할 때에는 그 사유를 함께 통지합니다.</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">금리안내</p>
						<div class="interest">
							<ul>
								<li>
									<p class="range"style="color: black;">최저</p>
									<p class="rate">연<span id="lowRateD"></span>%~</p>
								</li>
								<li>
									<p class="range"style="color: black;">최고</p>
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
								<td class="rate"><span id="newAddRateD"></span>% ~ 3.776%</td>
							</tr>
							<tr>
								<td class="title">부수거래 감면금리</td>
								<td class="rate"><span id="rateD"></span>%</td>
							</tr>
						</table>
						<ul class="dotList">
							<li class="reference">최저금리 기준: <br>
							2024.09.12 현재, 내부신용등급(ASS) 1등급, 대출기간 1년, 부수거래 감면금리 적용시</li>
							<li class="reference">최고금리 기준: <br>
								2024.09.12 현재, 내부신용등급(ASS) 11등급, 대출기간 5년 초과, 부수거래 감면금리 미적용시</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">부수거래 항목</p>
						<ul class="dotList">
							<li>급여이체 <strong><span id="newRate1D"></span>%</strong></li>
							<li>주택청약동합저축 월 5만원 납입<br>
								또는 적극상품 월 10만원 납입 <strong><span id="newRate2D"></span>%</strong></li>
							<li>[기본]제휴카드 월 30만원이상 결제 <strong><span id="newRate3D"></span>%</strong></li>
							<li>[추가]제휴카드 월 70만원 결제 <strong><span></span>0.1%</strong></li>
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
							<li class="reference">가산금리는 내부신용등급, 대출신청조건, 대출신청일, 대내외 정책 등에 따라 달라질 수 있습니다.</li>
							<li class="reference">부수거래 항목별 감면금리: 대출 실행시 선택한 부수거래 항목의 감면금리가 적용되며, 이후에는 선택하지 않은 항목을 포함하여 모든 항목에 대해서 매월 감면조건을 충적하는 경우 1개월 단위로 금리가 감면되고, 매월 조건을 충족하지 않을 경우 감면 받은 금리가 자동으로 인상됩니다. 항목별 감면조건 세부기준은 추가약정서(가계대출 금리감면용) 및  대출금리산정내역서를 참조해 주시기 바랍니다.</li>
							<li class="reference">대부업 등의 등록 및 금융이용자 보호에 관한 법률에 따른 법정 최고 금리는 연 20%입니다.</li>
							<li class="reference">연체이자율[대출이자율+연체가산이자율(연3%)]: <br>
							최고 연 15%입니다. <br>
							(상품에 따라 연체이자율이 일부 달라지는 경우가 있으므로 세부적인 사항은 대출거래약정서 등을 참고하시기 바랍니다.)</li>
							<li class="reference">이자의 부과시기: <br>
							후취방식 징구를 원칙으로 1개월 이내의 기간을 단위로 징수합니다. </li><br>
							
						</ul>
					</div>
					<div class="con">
						<p class="title">유의사항</p>
						<ul class="dotList">
							<li>손님의 신용도 또는 부채현황에 따라 대출한도 또는 대출금리가 차등 적용될 수 있으며 대출취급이 제한될 수도 있습니다.</li>
							<li>상기 대출금리는 기준일 현재의 적용금리이며 기준금리 변동 시 금리가 변경될 수 있고 최저금리는 부수거래 약정을 통해 최대로 감면받을 경우의 금리이므로 부수거래 조건 미충족시 개인별 대출금리는 달라질 수 있습니다.</li>
							<li>가산금리는 내부신용등급, 대출신청조건, 대출신청일, 대내외 정책 등에 따라 달라질 수 있습니다.</li>
							<li>대출 원리금 납부지연 또는 미납발생 시 연체이자 부과, 신용등급 하락, 재산압류 및 경매등의 조치가 취해질 수 있으므로 유의바랍니다.</li>
							<li>신차구입 및 중고차구입 대출의 경우 대출자의 이름으로 차량이 최초등록(신차) 또는 이전등록(중고차) 되어야 하며 대출실행일로 부터 5영업일 이내 은행으로 자동차등록원부 등을 제출해야 합니다.</li>
							<li>신차대환 및 중고차대환 대출의 경우 대출실행일 다음날까지 은행으로 완제영수증 등을 제출해야 합니다.</li>
							<li>최근 6개월 이내 대출이 실행된 차대번호와 동일한 차대번호로 신청된 대출은 진행이 불가합니다.</li>
							<li>대출실행일로부터 6개월 이내에 자동차를 제3자에게 매도시 대출금을 상환해야 합니다.</li>
							<li>금융상품에 관한 계약을 체결하기 전에 금융상품 설명서 및 약관을 읽어 보시기 바랍니다.</li>
							<li>상환능력에 비해 대출금이 과도할 경우 귀하의 신용점수가 하락할 수 있습니다.</li>
							<li>신용등급 또는 개인신용평점의 하락으로 금융거래 관련 불이익을 받을 수 있습니다.</li>
							<li>원리금 연체 시 계약만료 기한 전에 모든 원리금을 변제해야할 의무가 발생될 수 있습니다.</li>
							<li class="reference">자세한 내용은 상품설명서 및 하나은행 홈페이지(www.kebhana.com)를 참조하시거나 하나은행 고객센터(1599-2222) 또는 영업점에 문의바랍니다.</li>
						</ul>
					</div>
					<div class="con">
						<ul class="dotList">
							<li class="reference">금융소비자는 해당 상품 또는 서비스에 대하여 설명받을 권리가 있습니다.</li>
							<li class="reference">본 홍보물은 법령 및 내부통제기준에 따른 절차를 거쳐 제공됩니다.</li>
							<li class="reference">본 홍보물은 2025년 8월 31일까지 유효합니다.</li>
							<li class="reference">하나은행 준법감시인  제2024-광고-08017호(2023.09.23)</li>
							<li class="reference">CC브랜드240919-0190</li>
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
                var newRate = newRateDF ? (newRateDF.toFixed(1)) : "";

                //최저금리
                var lowRateDF = newCarBaseRate + newAddRate - newRate;
                var lowRate = lowRateDF ? (lowRateDF.toFixed(3)) : "";
                //최고금리
                var highRateDF = newCarBaseRate + newAddRate;
                // var highRate = highRateDF ? (highRateDF.toFixed(3)) : "";
				var highRate = '7.192'

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