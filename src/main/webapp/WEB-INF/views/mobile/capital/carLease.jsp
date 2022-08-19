<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<body>
    <div id="wrap">
    <!-- main -->
<section id="body" class="capitalCarLease">

	<h1>자동차리스</h1>
	<a href="/m/main" class="goBack">Back</a>

	<!-- top content -->
	<div class="topContent">

		<p class="topLogo"><img src="/mobile/images/common/logo-hanacapital@2x.png" alt="하나캐피탈"></p>

		<!-- summary -->
		<div class="summary">
			<!-- top -->
			<div class="top">
				<h2>자동차리스</h2>
				<p class="exp">#편리한_내차 <br>
				#다양한 혜택</p>
			</div>
			<!-- //top -->
			<!-- feature -->
			<div class="feature noBorder">
				<ul>
					<li>
						<p class="icon"><img src="/mobile/images/common/icon-save@2x.png" alt="초기비용 부담절감"></p>
						<p class="point">초기비용 부담절감</p>
						<p class="exp">취득세, 자동차세, 공채 등이 월 납입금에 포함 <br>
						(보험 제외)</p>
					</li>
					<li>
						<p class="icon"><img src="/mobile/images/common/icon-transaction@2x.png" alt="간편한 비용 처리"></p>
						<p class="point">간편한 비용 처리</p>
						<p class="exp">월 납입금 비용 처리 가능 <br>
						(단, 업무용 승용차는 업무 사용분에 한함)</p>
					</li>
					<li>
						<p class="icon"><img src="/mobile/images/common/icon-insurance@2x.png" alt="보험 경력 인정"></p>
						<p class="point">보험 경력 인정</p>
						<p class="exp">손님 기준으로 보험가입 <br>
						경력을 인정해 <br>
						보험요율 산정</p>
					</li>
					<li>
						<p class="icon"><img src="/mobile/images/common/icon-setting@2x.png" alt="간편한 차량 유지 관리"></p>
						<p class="point">간편한 <br>
						차량 유지 관리</p>
						<p class="exp">차량 등록부터 범칙금, <br>
						과태료 납부 대행</p>
					</li>
				</ul>
			</div>
			<!-- //feature -->
			<!-- link -->
			<div class="link">
				<a href="https://m.hanacapital.co.kr/cs/telephone/application.hnc?hfgInflow=leasNCar" class="round green"><span>상담 신청하기</span></a>
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
					<div class="con" >
						<p class="title">금리</p>
						<ul class="dotList" style= "font-weight :bold">
							<li>금융리스 : <br>
							최저 연 <span id="lowRate"></span>% ~ 최고 연 <span id="highRate"></span>% <br>
							(금융 소비자의 개인신용평점에 따라 차등 적용)</li>
							<li>연체 이자율 : <br>
								<ul class="numList">
									<li>
										<p class="num">1)</p>
										<div class="info">금융리스 <br>
										- 유이자 : 약정이률 + 3% <br>
										- 무이자 : 상사약정금리 + 3%(법정 최고 금리 20% 이내) <br>
										<br>
										단, 연체 발생 시점에 약정금리가 없는 경우는 <br>
										아래의 사항을 적용함. <br>
										<br>
										약정 금리는 상법상 상사법정이율과 상호금융 <br>
										가계자금대출금리* 중 높은 금리 적용 <br>
										<br>
										* 한국은행에서 매월 발표하는 가장 최근의 <br>
										비은행 금융기관 가중평균 대출 금리</div>
									</li>
									<li>
										<p class="num">2)</p>
										<div class="info">운용리스 연 20% </div>
									</li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">기간</p>
						<ul class="dotList">
							<li>12개월 ~ 60개월</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">상환 방법</p>
						<ul class="dotList">
							<li>원리금균등분할상환</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">이자부과시기</p>
						<ul class="dotList">
							<li>매월 후취</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">차량소유권</p>
						<ul class="dotList">
							<li>하나캐피탈 (단, 이용자명의 리스 시 저당설정 추가)</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">수수료</p>
						<ul class="numList">
							<li>
								<p class="num">1.</p>
								<div class="info"><span class="remark">주1)</span> 중도해지손해배상금 <br>
								미회수원금 X 중도해지손해배상금률 <br>
								- 미회수원금 X 최고요율(80)% X (잔여기간 월수/리스기간 전체월수)</div>
							</li>
							<li>
								<p class="num">2.</p>
								<div class="info"><span class="remark">주2)</span> 규정손해배상금(차랑인수-운용리스) <br>
								미회수원금 X 규정손해배상금률 <br>
								- 미회수원금 X 최고요율(20)% X (잔여기간 월수/리스기간 전체월수)</div>
							</li>
							<li>
								<p class="num">3.</p>
								<div class="info">규정손해배상금(차량인수-금융리스) <br>
								미회수원금 X 규정손해배상금률 <br>
								- 미회수원금 X 최고요율(3)% X (잔여기간 월수/리스기간 전체월수) <br>
								※ 단, 금융리스의 경우 대부업법에서 정하는 최고이자율을 초과하지 않는 범위로 합니다.</div>
							</li>
						</ul>
						<div class="remarkBox">
							<ul class="numList">
								<li>
									<p class="num"><span class="remark">주1)</span></p>
									<div class="info">‘중도해지손해배상금’은 고객이 계약의 중도해지를 이유로 자동차를 반환하고자 할 때 ‘자동차리스 표준약관’ 제24조에 따라 금융회사에 발생한 손해를 배상하기 위하여 지급해야 하는 금액을 의미합니다.</div>
								</li>
								<li>
									<p class="num"><span class="remark">주2)</span></p>
									<div class="info">‘규정손해배상금’은 고객이 계약의 중도해지를 이유로 자동차를 매입하고자 할 때 ‘자동차리스 표준약관’ 제23조에 따라 금융회사에 발생한 손해를 배상하기 위하여 지급해야 하는 금액을 의미합니다.</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="con">
						<p class="title">승계 수수료</p>
						<ul class="dotList">
							<li>운용리스, 금융리스 <br>
							미회수원금의 1%(승계수수료 최고 요율) X (잔여기간 월수/리스기간 전체 월수) <br>
							(min : 500,000원, max : 900,000원) <br>
							※ 단, 금융리스의 경우 대부업법에서 정하는 최고이자율을 초과하지 않는 범위로 합니다.</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">기타 비용</p>
						<ul class="dotList">
							<li>저당설정 (이용자명의 시 저당설정 추가) <br>
							- 설정금액 : 대출원금의 0~100% <br>
							※ 근저당설정은 개인신용평점에 따라 차등 적용 <br>
							※ 근저당설정비용 당사 부담 / 해지비용 금융소비자 부담</li>
							<li>인지세 <br>
							- 하나캐피탈과 금융소비자 각각 50% 부담(1만원)</li>
						</ul>
					</div>
					<div class="con">
						<p class="title">기타</p>
						<ul class="dotList">
							<li>만기시 차량을 매입하실 경우 손님의 명의로 이전하는데 필요한 취득세 등의 제세공과금이 발생할 수 있으며, 이는 손님이 부담하셔야 합니다. <br>
							운용리스의 경우, 만기 차량 반납시 사고이력 또는 약정주행거리 초과에 따라 별도의 감가비용이 추가로 발생 할 수 있습니다. <br>
							차량 반납시 유의사항을 꼭 확인하여 주시기 바랍니다.</li>
						</ul>
					</div>
					<div class="con">
						<a href="/mobile/pdf/하나원더카 자동차리스_차량 반납 시 유의사항.pdf" target="_blank" class="underline">차량 반납시 유의사항</a>
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
									<p class="text">‘오토리스’ 상담을 신청합니다.</p>
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
									<p class="title">차량구입 및 리스 실행</p>
									<p class="text">차량을 구입 후 고객님께 인도합니다.</p>
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
							<li class="reference">금융소비자의 개인신용평점에 따라 대출한도 및 금리가 차등 적용됩니다.</li>
							<li class="reference">금융소비자는 해당상품에 대하여 설명을 받을 권리가 있으며, 그 설명을 듣고 내용을 충분히 이해한 후 거래하시기 바랍니다.</li>
							<li class="reference">금리인하요구권 및 대출계약 철회권에 대한 자세한 사항은 하나캐피탈 홈페이지에서 확인하시기 바랍니다.</li>
							<li class="reference">하나캐피탈 준법심의필 22-1479(2022.07.22 ~ 2023.07.21)</li>
							<li class="reference">여신금융협회 심의필 제 2022-C1h-06623 (2022.08.02~2023.07.21)</li>
						</ul>
					</div>
				</div>
			</li>
			<!-- //유의사항 -->

		</ul>

	</div>
	<!-- //detail -->

	<!-- button -->
	<div class="bottomLink btnFloat">
		<a href="https://m.hanacapital.co.kr/cs/telephone/application.hnc?hfgInflow=leasNCar" class="box red"><span>상담 신청하기</span></a>
	</div>
	<!-- //button -->

</section>
    <!-- //main -->
    </div>
</body>
<script type="text/javascript">
	$(document).ready(function(){
        getCarLease();
	});


    var getCarLease = function(){
		var result = null; 
        $.ajax({
            type: 'POST',
            url: '/m/getCarLease',
            async: false,
            success: function(data) {
				var temp = data.list != null ? true : false;
				var lowRate = temp ? data.list.low_rate : "";
				var highRate = temp ? data.list.high_rate : "";

				$('#lowRate').text(lowRate);
				$('#highRate').text(highRate);
            },
            error: function(data) {
                alert('문제가 발생했습니다. 관리자에게 문의하세요.');
            }
        });
		return result;
    }
</script>