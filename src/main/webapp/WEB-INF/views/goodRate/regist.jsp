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
            <%-- <c:if test ="${member == null}">     --%>
                <button type="button" class="btn btn-outline-primary " onclick="setEmptyCheck()">등록</button>
            <%-- </c:if> --%>
            <%-- <c:if test ="${member != null}">    
                <button type="button" class="btn btn-outline-primary " onclick="putEmptyCheck()">수정</button>
            </c:if> --%>
                <%-- <button type="button" class="btn btn-outline-dark "onclick="javascript:location.href='/member/list'">취소</button> --%>
        </div>
    </div>
    <br>
    <span>상품선택:</span>
        <%-- getSelectCodes --%>
    <select class="codeSelecter" id="goodsName" name="goodsName" aria-controls="dataTable" class="custom-select" style="width:130px"  onchange="onclickSubmit()">
        <c:forEach var="item" items="${getSelectCodes}" varStatus="status">
            <option value="${item.goods_id}"><li>${item.goods_nm}</li></option>
        </c:forEach>
    </select>
    <%-- <select id="goodsNam2e" onchange="onclickSubmit()" name="goodsName" aria-controls="dataTable" class="custom-select" style="width:130px">
        <option value="CarLess">자동차리스</option>
        <option value="LongLent">장기렌터카</option>
        <option value="OldCarAutoLoan">중고차 오토론</option>
    </select> --%>
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
                    <input class="form-control" id="rateDate" name="rateDate" type="text"style="width:20%;"> 
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="rateDate2" name="rateDate2" type="text"style="width:20%;"> 
                </td>
            </tr>
            <tr>
                <th scope="row" style="text-align:center">기준금리</th>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="newCarBaseRate" type="text" style="width:20%;" onkeyup="imsi(this)">
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="oldCarBaseRate" type="text" style="width:20%;" onkeyup="imsi(this)">
                </td>
            </tr>
            <tr>
                <th scope="row" style="text-align:center">가산금리</th>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="newAddRate" type="text"style="width:20%;" onkeyup="imsi(this)">
                </td>
                <td style="text-align:-webkit-center">
                    <input  class="form-control" id="oldAddRate" type="text"style="width:20%;" onkeyup="imsi(this)">
                </td>
            </tr>
                <th scope="row" style="text-align:center">부수거래 감면금리</th>
                <td style="text-align:-webkit-center">
                    <input  class="form-control" type="text" style="width:20%;" disabled >
                </td>
                <td style="text-align:-webkit-center">
                    <input  class="form-control" type="text" style="width:20%;" disabled>
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
    <tbody>
        <tr>
            <th scope="row" style="text-align:center">급여이체</th>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="newRate1"  type="text" style="width:20%; margin-right:13%" onkeyup="imsi(this)"> 
            </td>
            <td style="text-align:-webkit-center">
                <input class="form-control"  id="oldRate1" type="text" style="width:20%; margin-right:4%" onkeyup="imsi(this)"> 
            </td>
        </tr>
        <tr>
            <th scope="row" style="text-align:center">주택청약종합저축납입</th>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="newRate2" type="text" style="width:20%; margin-right:13%" onkeyup="imsi(this)"> 
            </td>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="oldRate2" type="text"  style="width:20%; margin-right:4%" onkeyup="imsi(this)"> 
            </td>
        </tr>
        <tr>
            <th scope="row" style="text-align:center">제휴카드결제</th>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="newRate3" type="text" style="width:20%; margin-right:13%" onkeyup="imsi(this)"> 
            </td>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="oldRate3" type="text" style="width:20%; margin-right:4%" onkeyup="imsi(this)"> 
            </td>
        </tr>
            <th scope="row" style="text-align:center">기타자동이체</th>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="newRate4" type="text" style="width:20%; margin-right:13%" onkeyup="imsi(this)"> 
            </td>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="oldRate4" type="text" style="width:20%; margin-right:4%" onkeyup="imsi(this)"> 
            </td>
        </tr>
            <th scope="row" style="text-align:center">하나원큐이체</th>
            <td style="text-align:-webkit-center"> 
                <input class="form-control" id="newRate5" type="text" style="width:20%; margin-right:13%" onkeyup="imsi(this)"> 
            </td>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="oldRate5" type="text"  style="width:20%; margin-right:4%" onkeyup="imsi(this)"> 
            </td>
        </tr>
            <th scope="row" style="text-align:center">적금상품납입</th>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="newRate6" type="text"  style="width:20%; margin-right:13%" onkeyup="imsi(this)"> 
            </td>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="oldRate6" type="text"  style="width:20%; margin-right:4%" onkeyup="imsi(this)"> 
            </td>
        </tr>
            <th scope="row" style="text-align:center">우대금리</th>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="newRate7" type="text" style="width:20%; margin-right:13%" onkeyup="imsi(this)"> 
            </td>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="oldRate7" type="text"style="width:20%; margin-right:4%" onkeyup="imsi(this)"> 
            </td>
        </tr>
    </tbody>
    </table>
</div>
<script type='text/javascript'> 
    $(window).ready(function(){
    
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
            dateFormat: 'yy.mm.dd' //Input Display Format 변경
            ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
            ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
            ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
            ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
            ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
            ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트          
        });                                                
    });

     

    //금리 등록시 유효성 체크 후 저장 
    function setEmptyCheck() {
        // if($('#rateDate').val() == ""){
        //     alert('신차구입 금리 기준일을 등록해주세요');
        //     $('#rateDate').focus();
        // }else if($('#rateDate2').val() == ""){
        //     alert('중고차 구입 금리 기준일을 등록해주세요.');
        //     $('#rateDate2').focus();
        // }else if($('#newCarBaseRate').val() == ""){
        //     alert('신차구입 기준금리를 등록해주세요');
        //     $('#newCarBaseRate').focus();
        // }else if($('#oldCarBaseRate').val() == ""){
        //     alert('중고차구입 기준금리를 등록해주세요');
        //     $('#oldCarBaseRate').focus();
        // }else if($('#newAddRate').val() == ""){
        //     alert('신차기준 가산금리를 등록해주세요');
        //     $('#newAddRate').focus();
        // }else if($('#oldAddRate').val() == ""){
        //     alert('중고차기준 가산금리를 등록해주세요');
        //     $('#oldAddRate').focus();
        // }else if($('#newRate1').val() == ''){
        //     alert('신차기준 급여이체를 등록해주세요');
        //     $('#newRate1').focus();
        // }else if($('#oldRate1').val() == ''){
        //     alert('중고차기준 급여이체를 등록해주세요');
        //     $('#oldRate1').focus();
        // }else if($('#newRate2').val() == ''){
        //     alert('신차기준 주택청약종합저축납입금을 등록해주세요');
        //     $('#newRate2').focus();
        // }else if($('#oldRate2').val() == ''){
        //     alert('중고차기준 주택청약종합저축납입금을 등록해주세요');
        //     $('#oldRate2').focus();
        // }else if($('#newRate3').val() == ''){
        //     alert('신차기준 제휴카드결제 금액을 등록해주세요');
        //     $('#newRate3').focus();
        // }else if($('#oldRate3').val() == ''){
        //     alert('중고차기준 제휴카드결제 금액을 등록해주세요');
        //     $('#oldRate3').focus();
        // }else if($('#newRate4').val() == ''){
        //     alert('신차기준 기타자동이체 금액을 등록해주세요');
        //     $('#newRate4').focus();
        // }else if($('#oldRate4').val() == ''){
        //     alert('중고차기준 기타자동이체 금액을 등록해주세요');
        //     $('#oldRate4').focus();
        // }else if($('#newRate5').val() == ''){
        //     alert('신차기준 하나원큐이체 금액을 등록해주세요');
        //     $('#newRate5').focus();
        // }else if($('#oldRate5').val() == ''){
        //     alert('중고차기준 하나원큐이체 금액을 등록해주세요');
        //     $('#oldRate5').focus();
        // }else if($('#newRate6').val() == ''){
        //     alert('신차기준 적금상품납입 금액을 등록해주세요');
        //     $('#newRate6').focus();
        // }else if($('#oldRate6').val() == ''){
        //     alert('중고차기준 적금상품납입 금액을 등록해주세요');
        //     $('#oldRate6').focus();
        // }else if($('#newRate7').val() == ''){
        //     alert('신차기준 우대금리를 등록해주세요');
        //     $('#newRate7').focus();
        // }else if($('#oldRate7').val() == ''){
        //     alert('중고차기준 우대금리를 등록해주세요');
        //     $('#oldRate7').focus();
        // }else{
            addGoodsRate();
        // }
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
            "newRate1" : $('#newRate1').val(),
            "newRate2" : $('#newRate2').val(),
            "newRate3" :$('#newRate3').val(),
            "newRate4" : $('#newRate4').val(),
            "newRate5" : $('#newRate5').val(),
            "newRate6" : $('#newRate6').val(),
            "newRate7" : $('#newRate7').val(),

            "oldRateDt" : rateDate2,
            "oldCarBaseRate" : $('#oldCarBaseRate').val(),
            "oldAddRate" : $('#oldAddRate').val(),
            "oldRate1" : $('#oldRate1').val(),
            "oldRate2" : $('#oldRate2').val(),
            "oldRate3" : $('#oldRate3').val(),
            "oldRate4" : $('#oldRate4').val(),
            "oldRate5" : $('#oldRate5').val(),
            "oldRate6" : $('#oldRate6').val(),
            "oldRate7" : $('#oldRate7').val()
        }
        console.log(formData);
        $.ajax({
            type:"POST",
            url : "/goodRate/setGoodsRate",
            data: formData,
            dataType    :"json",
            contentType :"application/x-www-form-urlencoded; charset=UTF-8",
            async: false,
            success : function(data){
                // var cnt = data;
                // if(cnt >= 1 ){
                    alert('금리 등록 성공');
                    // location.href="/goodRate/regist"
                // }else {
                //     alert('저장에 실패했습니다.');
                //     // $(document).reset();
                // }
            },error : function(date){
                alert('서버오류 ');
            }
        });
    }

    //회원정보 수정 정보 전송
    // function putMember(){

    //     exprDate = $('#datepicker').val();
    //     exprDate2 = $('#datepicker2').val();

    //     var formData = {
    //         "member_id" : $('#member_id').val(),
    //         "password" : $('#password').val(),
    //         "csmrid" : $('#csmrid').val(),
    //         "hrmsid" : $('#hrmsid').val(),
    //         "name" : $('#name').val(),
    //         "prmt_num" :$('#prmt_num').val(),
    //         "serial_number" : $('#serial_number').val(),
    //         "version" : $('#version').val(),
    //         "expr_dt" : exprDate,
    //         "expr_dt2" : exprDate2,
    //     }

    //     $.ajax({
    //         type:"post",
    //         url : "/goodRate/putGoodsRate",
    //         contentType : "application/json",
    //         dataType: "text",
    //         data: JSON.stringify(formData),
    //         success : function(data){
    //             var cnt = data;
    //             if(cnt >= 1 ){
    //                 alert('금리 등록 성공');
    //                 location.href="/goodRate/regist"
    //             }
    //         },error : function(date){
    //             alert('서버오류 ');
    //         }
    //     }); 
    // }
</script>
