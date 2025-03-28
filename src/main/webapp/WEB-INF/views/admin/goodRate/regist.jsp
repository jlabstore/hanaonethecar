<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<style>
    .title-label{
        width : 150px;
    }
    #passwordUpdateCancel{
        display : none;
        margin-left: 5px;
    }
    @media screen and (max-width: 480px){
        .buttonFont{
            font-size: 12px;
            padding : 1px;
        }
        .btn-primary{
            padding: 1px 4px 1px 4px;
        }
    }
    @media screen and (max-width:768px){
        .buttonFont{
            font-size: 14px;
            padding : 1px;
        }
        .btn-primary{
            padding: 1px 4px 1px 4px;
        }
    }
    .custom-select{
        display: inline-block;
        width: 100%;
        height: calc(1.5em + 0.75rem + 2px);
        padding: 0.375rem 1.75rem 0.375rem 0.75rem;
        font-size: 1rem;
        font-weight: 400;
        line-height: 1.5;
        color: #6e707e;
        vertical-align: middle;
        background: #fff url(data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='4' height='5' viewBox='0 0 4 5'%3e%3cpath fill='%235a5c69' d='M2 0L0 2h4zm0 5L0 3h4z'/%3e%3c/svg%3e) no-repeat right 0.75rem center/8px 10px;
        border: 1px solid #d1d3e2;
        border-radius: 0.35rem;
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
    }
    .spacing{
        margin-left: 10px;
    }

</style>
<div class="container-fluid" style="margin-left: unset;">
    <div style="
        display: flex;
        margin-bottom: 6px;
        justify-content: space-between;
        align-items: flex-end;
    ">
        <h4 style="margin-bottom: 0px;">금리 관리</h4>
        <div>
            <button type="button" id="setGoodsRateBtn" class="btn btn-outline-primary " onclick="setGoodsRate()">등록</button>
            <button type="button" id="putGoodsRateBtn" class="btn btn-outline-primary " onclick="putGoodsRate()">수정</button>
        </div>
    </div>
    <br>
    <span>상품선택:</span>
    <select class="custom-select" id="goodsName" name="goodsName" aria-controls="dataTable" style="width:130px"  onchange="detailGoodsRate()">
        <c:forEach var="item" items="${getSelectCodes}" varStatus="status">
            <option value="${item.goods_id}"><li>${item.goods_nm}</li></option>
        </c:forEach>
    </select>
    <table class="table" style="margin-top:10px">
        <thead class="thead-dark">
            <tr>
                <th scope="row"></th>
                <th scope="col" style="text-align:center" >신차구입/신차대환</th>
                <th scope="col" style="text-align:center">중고차구입/중고차대환</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row" style="text-align:center">금리기준일</th>
                <td style="text-align:-webkit-center"> 
                    <input class="form-control" id="rateDate" name="rateDate" type="text"style="width:27%; " readOnly> 
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="rateDate2" name="rateDate2" type="text"style="width:27%;" readOnly> 
                </td>
            </tr>
            <tr>
                <th scope="row" style="text-align:center">기준금리</th>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="newCarBaseRate" type="text" style="width:20%; display:inline-block" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="usedCarBaseRate" type="text" style="width:20%; display:inline-block" onkeyup="imsi(this)" ><span class="spacing">%</span>
                </td>
            </tr>
            <tr id="evBaseRate">
                <th scope="row" style="text-align:center">가산금리</th>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="newAddRate" type="text" style="width:20%; display:inline-block" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="usedAddRate" type="text" style="width:20%; display:inline-block" onkeyup="imsi(this)" ><span class="spacing">%</span>
                </td>
            </tr>
            <tr id="oneqBaseRate">
                <th scope="row" style="text-align:center">가산금리</th>
                <td style="text-align:center">
                    <input class="form-control" id="newAddRate3" placeholder="최저금리" type="text"style="width:20%; display:inline-block" onkeyup="imsi(this)"><span class="spacing">%</span>
                    <span> ~ </span>
                    <input class="form-control" id="newAddRate2" placeholder="최고금리" type="text"style="width:20%; display:inline-block" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
                <td style="text-align:center">
                    <input  class="form-control" id="usedAddRate3"  placeholder="최저금리" type="text"style="width:20%; display:inline-block" onkeyup="imsi(this)"><span class="spacing">%</span>
                    <span> ~ </span>
                    <input  class="form-control" id="usedAddRate2" placeholder="최고금리" type="text"style="width:20%; display:inline-block" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
            </tr>

                <th scope="row" style="text-align:center">부수거래 감면금리</th>
                <td style="text-align:-webkit-center">
                    <input  class="form-control" type="text" style="width:20%; display:inline-block"  id="newRate"  disabled><span class="spacing">%</span>
                </td>
                <td style="text-align:-webkit-center">
                    <input  class="form-control" type="text" style="width:20%; display:inline-block"  id="usedRate" disabled><span class="spacing">%</span>
                </td>
            </tr>
        </tbody>
    </table><br>

    <table class="table">
        <thead class="thead-light">
            <tr>
                <th scope="row"></th>
                <th scope="col" style="text-align:center">부수거래 감면금리</th>
                <th scope="col"></th>
            </tr>
        </thead>
        <tbody style="background-color:#eaecf4;">
            <tr>
                <th scope="row" style="text-align:center">급여이체</th>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="newRate1"  type="text" style="width:20%; display:inline-block;" onkeyup="imsi(this)" value="${getGoodsRateDetail.new_rate1}"><span class="spacing">%</span>
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control"  id="usedRate1" type="text" style="width:20%; display:inline-block;" onkeyup="imsi(this)" value="${data.new_rate1}"><span class="spacing">%</span>
                </td>
            </tr>
            <tr>
                <th scope="row" style="text-align:center">주택청약종합저축납입</th>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="newRate2" type="text" style="width:20%; display:inline-block;" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="usedRate2" type="text"  style="width:20%; display:inline-block;" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
            </tr>
            <tr>
                <th scope="row" style="text-align:center">제휴카드결제</th>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="newRate3" type="text" style="width:20%; display:inline-block;" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="usedRate3" type="text" style="width:20%; display:inline-block;" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
            </tr>
            <tr>
                <th scope="row" style="text-align:center">기타자동이체</th>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="newRate4" type="text" style="width:20%; display:inline-block;" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="usedRate4" type="text" style="width:20%; display:inline-block;" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
            </tr>
            <tr>
                <th scope="row" style="text-align:center">하나원큐이체</th>
                <td style="text-align:-webkit-center"> 
                    <input class="form-control" id="newRate5" type="text" style="width:20%; display:inline-block;" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="usedRate5" type="text"  style="width:20%; display:inline-block;" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
            </tr>
            <tr>
                <th scope="row" style="text-align:center">적금상품납입</th>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="newRate6" type="text"  style="width:20%; display:inline-block;" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="usedRate6" type="text"  style="width:20%; display:inline-block;" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
            </tr>
            <tr style="background-color:#f8f9fc;">
                <th scope="row" style="text-align:center">우대금리</th>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="newRate7" type="text" style="width:20%; display:inline-block;" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="usedRate7" type="text"style="width:20%; display:inline-block;" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
            </tr>
        </tbody>
    </table>
</div>
<script type='text/javascript'> 
    $(window).ready(function(){
        detailGoodsRate();
    });
    
    //소수점 작성
    var prev = "";
    var regexp = /^\d*(\.\d{0,4})?$/;
    function imsi(obj) {
        if(obj.value.search(regexp)== -1) {
            obj.value = prev;
        }
        else {
            prev = obj.value;
        }
    }

    $(function() {
        //input을 datepicker로 선언
        $("#rateDate, #rateDate2").datepicker({
            dateFormat: 'yy-mm-dd' //Input Display Format 변경
            ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
            ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
            ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
            ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
            ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
            ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트          
        });                                                
    });


    //금리 등록시 유효성 체크 후 저장 
    function setGoodsRate() {
        // if($('#rateDate').val() == ""){
        //     alert('신차구입 금리 기준일을 등록해주세요');
        //     $('#rateDate').focus();
        // }else if($('#rateDate2').val() == ""){
        //     alert('중고차 구입 금리 기준일을 등록해주세요.');
        //     $('#rateDate2').focus();
        // }else if($('#newCarBaseRate').val() == ""){
        //     alert('신차구입 기준금리를 등록해주세요');
        //     $('#newCarBaseRate').focus();
        // }else if($('#usedCarBaseRate').val() == ""){
        //     alert('중고차구입 기준금리를 등록해주세요');
        //     $('#usedCarBaseRate').focus();
        // }else if($('#newAddRate').val() == ""){
        //     alert('신차기준 최저가산금리를 등록해주세요');
        //     $('#newAddRate').focus();
        // }else if($('#newAddRate2').val() == ""){
        //     alert('신차기준 최고가산금리를 등록해주세요');
        //     $('#newAddRate2').focus();
        // }else if($('#usedAddRate').val() == ""){
        //     alert('중고차기준 가산금리를 등록해주세요');
        //     $('#usedAddRate').focus();
        // }else if($('#usedAddRate2').val() == ""){
        //     alert('중고차기준 가산금리를 등록해주세요');
        //     $('#usedAddRate2').focus();
        // }else if($('#newRate1').val() == ''){
        //     alert('신차기준 급여이체를 등록해주세요');
        //     $('#newRate1').focus();
        // }else if($('#usedRate1').val() == ''){
        //     alert('중고차기준 급여이체를 등록해주세요');
        //     $('#usedRate1').focus();
        // }else if($('#newRate2').val() == ''){
        //     alert('신차기준 주택청약종합저축납입금을 등록해주세요');
        //     $('#newRate2').focus();
        // }else if($('#usedRate2').val() == ''){
        //     alert('중고차기준 주택청약종합저축납입금을 등록해주세요');
        //     $('#usedRate2').focus();
        // }else if($('#newRate3').val() == ''){
        //     alert('신차기준 제휴카드결제 금액을 등록해주세요');
        //     $('#newRate3').focus();
        // }else if($('#usedRate3').val() == ''){
        //     alert('중고차기준 제휴카드결제 금액을 등록해주세요');
        //     $('#usedRate3').focus();
        // }else if($('#newRate4').val() == ''){
        //     alert('신차기준 기타자동이체 금액을 등록해주세요');
        //     $('#newRate4').focus();
        // }else if($('#usedRate4').val() == ''){
        //     alert('중고차기준 기타자동이체 금액을 등록해주세요');
        //     $('#usedRate4').focus();
        // }else if($('#newRate5').val() == ''){
        //     alert('신차기준 하나원큐이체 금액을 등록해주세요');
        //     $('#newRate5').focus();
        // }else if($('#usedRate5').val() == ''){
        //     alert('중고차기준 하나원큐이체 금액을 등록해주세요');
        //     $('#usedRate5').focus();
        // }else if($('#newRate6').val() == ''){
        //     alert('신차기준 적금상품납입 금액을 등록해주세요');
        //     $('#newRate6').focus();
        // }else if($('#usedRate6').val() == ''){
        //     alert('중고차기준 적금상품납입 금액을 등록해주세요');
        //     $('#usedRate6').focus();
        // }else if($('#newRate7').val() == ''){
        //     alert('신차기준 우대금리를 등록해주세요');
        //     $('#newRate7').focus();
        // }else if($('#usedRate7').val() == ''){
        //     alert('중고차기준 우대금리를 등록해주세요');
        //     $('#usedRate7').focus();
        // }else{
        //     addGoodsRate();
        // }
        addGoodsRate();
    }

    //상세 
    function detailGoodsRate(){

        if($('#goodsName').val() == 'EV'){
            $('#evBaseRate').css('display','');
            $('#oneqBaseRate').css('display','none');

        }else if($('#goodsName').val() == 'ONEQ'){
            $('#evBaseRate').css('display','none');
            $('#oneqBaseRate').css('display','');
        }

        var goodsId = $("#goodsName").val();
        $.ajax({
            type: "POST",
            url : "/admin/goodRate/detailGoodsRate",
            data: {"goodsId":goodsId},
            dataType: "json",
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            async: false,
            success : function(data){
                dataFormatingFun(data)
                if(data.detailGoodsRate != null){
                    //수정
                    $("#putGoodsRateBtn").show();
                    $("#setGoodsRateBtn").hide();
                }else{
                    //등록
                    $("#setGoodsRateBtn").show();
                    $("#putGoodsRateBtn").hide();
                }
            },error : function(date){
                alert('문제가 발생했습니다. 관리자에게 문의하세요.');
            }
        });
    }

    var dataFormatingFun = function(data) {
        var temp = data.detailGoodsRate != null ? true : false;



        var new_rate1 = temp ? data.detailGoodsRate.new_rate1 : "";
        var new_rate2 = temp ? data.detailGoodsRate.new_rate2 : "";
        var new_rate3 = temp ? data.detailGoodsRate.new_rate3 : "";
        var new_rate4 = temp ? data.detailGoodsRate.new_rate4 : "";
        var new_rate5 = temp ? data.detailGoodsRate.new_rate5 : "";
        var new_rate6 = temp ? data.detailGoodsRate.new_rate6 : "";
        var new_rate7 = temp ? data.detailGoodsRate.new_rate7 : "";

        var used_rate1 = temp ? data.detailGoodsRate.used_rate1 : "";
        var used_rate2 = temp ? data.detailGoodsRate.used_rate2 : "";
        var used_rate3 = temp ? data.detailGoodsRate.used_rate3 : "";
        var used_rate4 = temp ? data.detailGoodsRate.used_rate4 : "";
        var used_rate5 = temp ? data.detailGoodsRate.used_rate5 : "";
        var used_rate6 = temp ? data.detailGoodsRate.used_rate6 : "";
        var used_rate7 = temp ? data.detailGoodsRate.used_rate7 : "";
        
        $("#rateDate").val(temp ? data.detailGoodsRate.new_base_rate_dt : "");
        $("#newCarBaseRate").val(temp ? data.detailGoodsRate.new_base_rate : "");
        $("#newAddRate").val(temp ? data.detailGoodsRate.new_add_rate : "");
        $("#newAddRate2").val(temp ? data.detailGoodsRate.new_add_rate2 : "");
        $("#newAddRate3").val(temp ? data.detailGoodsRate.new_add_rate : "");
        $("#newRate1").val(new_rate1);
        $("#newRate2").val(new_rate2);
        $("#newRate3").val(new_rate3);
        $("#newRate4").val(new_rate4);
        $("#newRate5").val(new_rate5);
        $("#newRate6").val(new_rate6);
        $("#newRate7").val(new_rate7);

        $("#rateDate2").val(temp ? data.detailGoodsRate.used_base_rate_dt : "");
        $("#usedCarBaseRate").val(temp ? data.detailGoodsRate.used_base_rate : "");
        $("#usedAddRate").val(temp ? data.detailGoodsRate.used_add_rate : "");
        $("#usedAddRate2").val(temp ? data.detailGoodsRate.used_add_rate2 : "");
        $("#usedAddRate3").val(temp ? data.detailGoodsRate.used_add_rate : "");
        $("#usedRate1").val(used_rate1);
        $("#usedRate2").val(used_rate2);
        $("#usedRate3").val(used_rate3);
        $("#usedRate4").val(used_rate4);
        $("#usedRate5").val(used_rate5);
        $("#usedRate6").val(used_rate6);
        $("#usedRate7").val(used_rate7);

        var new_rate = new_rate1 + new_rate2 + new_rate3 + new_rate4 + new_rate5 +new_rate6 
        var user_rate =  used_rate1 + used_rate2 + used_rate3 + used_rate4 + used_rate5+ used_rate6 
        var fnew_rate = new_rate ? (new_rate.toFixed(2)) : "" ; 
        var fuser_rate = user_rate ? (user_rate.toFixed(2)) : "";

        //부수거래 감면금리 계산액
        // $("#newRate").val(new_rate);
        // $("#usedRate").val(user_rate);
        $("#newRate").val(fnew_rate);
        $("#usedRate").val(fuser_rate);
    }

    //금리 등록 전송
    function addGoodsRate(){

        goodsId = $("#goodsName option:selected").val();
        rateDate = $('#rateDate').val();
        rateDate2 = $('#rateDate2').val();

        var formData = {
            
            "goodsId": goodsId,
            "newRateDt" : rateDate,
            "newCarBaseRate" : $('#newCarBaseRate').val(),
            "newAddRate" : $('#newAddRate').val(),
            "newAddRate2" : $('#newAddRate2').val(),
            "newAddRate3" : $('#newAddRate3').val(),
            "newRate1" : $('#newRate1').val(),
            "newRate2" : $('#newRate2').val(),
            "newRate3" :$('#newRate3').val(),
            "newRate4" : $('#newRate4').val(),
            "newRate5" : $('#newRate5').val(),
            "newRate6" : $('#newRate6').val(),
            "newRate7" : $('#newRate7').val(),

            "usedRateDt" : rateDate2,
            "usedCarBaseRate" : $('#usedCarBaseRate').val(),
            "usedAddRate" : $('#usedAddRate').val(),
            "usedAddRate2" : $('#usedAddRate2').val(),
            "usedAddRate3" : $('#usedAddRate3').val(),
            "usedRate1" : $('#usedRate1').val(),
            "usedRate2" : $('#usedRate2').val(),
            "usedRate3" : $('#usedRate3').val(),
            "usedRate4" : $('#usedRate4').val(),
            "usedRate5" : $('#usedRate5').val(),
            "usedRate6" : $('#usedRate6').val(),
            "usedRate7" : $('#usedRate7').val()
        }

        if(!confirm('등록을 완료하시겠습니까?')){
            alert('취소하셨습니다.')
        }else{
            $.ajax({
                type: "POST",
                url : "/admin/goodRate/setGoodsRate",
                data: formData,
                dataType: "json",
                contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                async: false,
                success : function(data){             
                    alert('등록이 완료되었습니다.');
                    detailGoodsRate();
                },error : function(date){
                    alert('문제가 발생했습니다. 관리자에게 문의하세요.');
                }
            });
        }
    }

    //금리 수정 전송
    function putGoodsRate(){

        goodsId = $("#goodsName option:selected").val();
        rateDate = $('#rateDate').val();
        rateDate2 = $('#rateDate2').val();

        var formData = {
            "goodsId": goodsId,
            "newRateDt" : rateDate,
            "newCarBaseRate" : $('#newCarBaseRate').val(),
            "newAddRate" : $('#newAddRate').val(),
            "newAddRate2" : $('#newAddRate2').val(),
            "newAddRate3" : $('#newAddRate3').val(),
            "newRate1" : $('#newRate1').val(),
            "newRate2" : $('#newRate2').val(),
            "newRate3" :$('#newRate3').val(),
            "newRate4" : $('#newRate4').val(),
            "newRate5" : $('#newRate5').val(),
            "newRate6" : $('#newRate6').val(),
            "newRate7" : $('#newRate7').val(),

            "usedRateDt" : rateDate2,
            "usedCarBaseRate" : $('#usedCarBaseRate').val(),
            "usedAddRate" : $('#usedAddRate').val(),
            "usedAddRate2" : $('#usedAddRate2').val(),
            "usedAddRate3" : $('#usedAddRate3').val(),
            "usedRate1" : $('#usedRate1').val(),
            "usedRate2" : $('#usedRate2').val(),
            "usedRate3" : $('#usedRate3').val(),
            "usedRate4" : $('#usedRate4').val(),
            "usedRate5" : $('#usedRate5').val(),
            "usedRate6" : $('#usedRate6').val(),
            "usedRate7" : $('#usedRate7').val()
        }

        if(!confirm('수정을 완료하시겠습니까?')){
            alert('취소하셨습니다.')
        }else{
            $.ajax({
            type: "POST",
            url : "/admin/goodRate/putGoodsRate",
            data: formData,
            dataType: "json",
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            async: false,
            success : function(data){
                alert('수정이 완료되었습니다.');
                detailGoodsRate();
            },error : function(date){
                alert('문제가 발생했습니다. 관리자에게 문의하세요.');
            }
        });
        }
        
    }

</script>
