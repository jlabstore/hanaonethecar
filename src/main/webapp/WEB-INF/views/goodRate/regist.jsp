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
            <c:if test ="${member == null}">    
                <button type="button" class="btn btn-outline-primary " onclick="setEmptyCheck()">등록</button>
            </c:if>
            <%-- <c:if test ="${member != null}">    
                <button type="button" class="btn btn-outline-primary " onclick="putEmptyCheck()">수정</button>
            </c:if> --%>
                <%-- <button type="button" class="btn btn-outline-dark "onclick="javascript:location.href='/member/list'">취소</button> --%>
        </div>
    </div>
    <br>
    <span>상품선택:</span>
    <select id="sortType" onchange="onclickSubmit()" name="sortType" aria-controls="dataTable" class="custom-select" style="width:130px">
        <option value="1QAutoLoan">1Q오토론</option>
        <option value="EVAutoLoan">EV오토론</option>
    </select>

    <%-- <select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm">
        <option value="">1Q오토론</option>
        <option value="">EV오토론</option>
    </select><br/> --%>
    <%-- <div class="card shadow mb-4">
        <form id="registForm" name="registForm">
            <div class="card-body">
                <div class="form-row">
                    <div class="form-group col-sm-6 col-md-3">
                        <label class="title-label">신차구입/신차대환</label>
                        <div class="input-group">
                            <c:if test="${member == null}">
                                <input
                                    style="border-bottom-right-radius: 5px;border-top-right-radius: 5px;"
                                    type="text"
                                    class="form-control"
                                    id="member_id" name="member_id"
                                    value="${member.member_id}"
                                />
                            </c:if>
                        </div>
                    </div>
                    <div class="form-group col-sm-6 col-md-3 ">
                        <label class="title-label" style="">중고차구입/중고차대환</label>
                        <div class="input-group">
                        <c:if test="${member == null}">
                            <input
                                type="password"
                                id="password" 
                                name="password"
                                class="form-control"
                            />
                        </c:if>
                        </div> 
                    </div>
                </div>
            </div>
        </form>
    </div> --%>
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
                    <input class="form-control" id="datepicker" name="datepicker" type="text" name="text" style="width:20%; "> 
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="datepicker2" name="datepicker2" type="text" name="text" style="width:20%;"> 
                </td>
            </tr>
            <tr>
                <th scope="row" style="text-align:center">기준금리</th>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="newCarBaseRate" type="text" name="text" style="width:20%;">
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="oldCarBaseRate" type="text" name="text" style="width:20%;">
                </td>
            </tr>
            <tr>
                <th scope="row" style="text-align:center">가산금리</th>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="newAddRate" type="text" name="text" style="width:20%;">
                </td>
                <td style="text-align:-webkit-center">
                    <input  class="form-control" id="oldAddRate" type="text" name="text" style="width:20%;">
                </td>
            </tr>
                <th scope="row" style="text-align:center">부수거래 감면금리</th>
                <td style="text-align:-webkit-center">
                    <input  class="form-control" type="text" name="text" style="width:20%;" disabled>
                </td>
                <td style="text-align:-webkit-center">
                    <input  class="form-control" type="text" name="text" style="width:20%;" disabled>
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
                <input class="form-control" id="newRate1"  type="text" name="text" style="width:20%; margin-right:13%"> 
            </td>
            <td style="text-align:-webkit-center">
                <input class="form-control"  id="oldRate1" type="text" name="text" style="width:20%; margin-right:4%"> 
            </td>
        </tr>
        <tr>
            <th scope="row" style="text-align:center">주택청약종합저축납입</th>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="newRate2" type="text" name="text" style="width:20%; margin-right:13%"> 
            </td>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="oldRate2" type="text" name="text" style="width:20%; margin-right:4%"> 
            </td>
        </tr>
        <tr>
            <th scope="row" style="text-align:center">제휴카드결제</th>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="newRate3" type="text" name="text" style="width:20%; margin-right:13%"> 
            </td>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="oldRate3" type="text" name="text" style="width:20%; margin-right:4%"> 
            </td>
        </tr>
            <th scope="row" style="text-align:center">기타자동이체</th>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="newRate4" type="text" name="text" style="width:20%; margin-right:13%"> 
            </td>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="oldRate4" type="text" name="text" style="width:20%; margin-right:4%"> 
            </td>
        </tr>
            <th scope="row" style="text-align:center">하나원큐이체</th>
            <td style="text-align:-webkit-center"> 
                <input class="form-control" id="newRate5" type="text" name="text" style="width:20%; margin-right:13%"> 
            </td>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="oldRate5" type="text" name="text" style="width:20%; margin-right:4%"> 
            </td>
        </tr>
            <th scope="row" style="text-align:center">적금상품납입</th>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="newRate6" type="text" name="text" style="width:20%; margin-right:13%"> 
            </td>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="oldRate6" type="text" name="text" style="width:20%; margin-right:4%"> 
            </td>
        </tr>
            <th scope="row" style="text-align:center">우대금리</th>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="newRate7" type="text" name="text" style="width:20%; margin-right:13%"> 
            </td>
            <td style="text-align:-webkit-center">
                <input class="form-control" id="oldRate7" type="text" name="text" style="width:20%; margin-right:4%"> 
            </td>
        </tr>
    </tbody>
    </table>
</div>
<script type='text/javascript'> 
    $(window).ready(function(){

    });
    
    $(function() {
        //input을 datepicker로 선언
        $("#datepicker, #datepicker2").datepicker({
            dateFormat: 'yy.mm.dd' //Input Display Format 변경
            ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
            ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
            ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
            ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
            ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
            ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트          
        });                                                
    });

    //회원 등록시 유효성 체크 후 저장 
    function setEmptyCheck() {
        if($('#datepicker').val() == ""){
            alert('회원 아이디를 입력해주세요');
            $('#datepicker').focus();
        }else if($('#memberCheck').val() != '1'){
            alert('회원 아이디 중복체크 해주세요');
        }else if($('#csmrid').val() == ""){
            alert('가맹점 아이디를 입력해주세요');
            $('#csmrid').focus();
        }else if($('#csmrCheck').val() != '1'){
            alert('가맹점 아이디 중복체크 해주세요');
        }else if($('#hrmsid').val() == ""){
            alert('헤르메스 아이디를 입력해주세요');
            $('#hrmsid').focus();
        }else if($('#hrmsCheck').val() != '1'){
            alert('헤르메스 아이디 중복체크 해주세요');
        }else if($('#password').val() == ''){
            alert('비밀번호를 입력해주세요');
            $('#password').focus();
        }else if(!($('input:radio[name=expr_dt_check]').val()=='Y' || $('input:radio[name=expr_dt_check]').val()=='N')){
            alert('만료일사용여부를 체크 해주세요');
        }else{
            addGoodsRate();
        }
    }

    //회원 등록 전송
    function addGoodsRate(){

        exprDate = $('#datepicker').val();
        exprDate2 = $('#datepicker2').val();

        var formData = {
            "member_id" : $('#member_id').val(),
            "password" : $('#password').val(),
            "csmrid" : $('#csmrid').val(),
            "hrmsid" : $('#hrmsid').val(),
            "name" : $('#name').val(),
            "prmt_num" :$('#prmt_num').val(),
            "serial_number" : $('#serial_number').val(),
            "version" : $('#version').val(),
            "expr_dt" : exprDate,
            "expr_dt2" : exprDate2,
        }

        $.ajax({
            type:"post",
            url : "/goodRate/setGoodsRate",
            contentType : "application/json",
            dataType: "text",
            data: JSON.stringify(formData),
            success : function(data){
                var cnt = data;
                if(cnt >= 1 ){
                    alert('금리 등록 성공');
                    location.href="/goodRate/regist"
                }else {
                    alert('저장에 실패했습니다.');
                    $(document).reset();
                }
            },error : function(date){
                alert('서버오류 ');
            }
        });
    }

    //회원정보 수정 정보 전송
    function putMember(){
        var exprDate = $('#datepicker').val();
        if($('input:radio[name=expr_dt_check]:checked').val()=='Y'){
            if($('#datepicker').val() == ''){
                alert('만료일을 입력해주세요');
                return false;
            }
        }

        if($('input:radio[name=expr_dt_check]:checked').val() == 'N'){
            exprDate = $('#datepicker').val('');
        }
        if($('input:radio[name=expr_dt2_check]:checked').val() == 'N'){
            exprDate2 = $('#datepicker2').val('');
        }

        exprDate = $('#datepicker').val();
        exprDate2 = $('#datepicker2').val();

        var formData = {
            "member_id" : $('#member_id').val(),
            "password" : $('#password').val(),
            "csmrid" : $('#csmrid').val(),
            "hrmsid" : $('#hrmsid').val(),
            "name" : $('#name').val(),
            "prmt_num" :$('#prmt_num').val(),
            "serial_number" : $('#serial_number').val(),
            "version" : $('#version').val(),
            "expr_dt" : exprDate,
            "expr_dt2" : exprDate2,
        }

        $.ajax({
            type:"post",
            url : "/goodRate/putGoodsRate",
            contentType : "application/json",
            dataType: "text",
            data: JSON.stringify(formData),
            success : function(data){
                var cnt = data;
                if(cnt >= 1 ){
                    alert('금리 등록 성공');
                    location.href="/goodRate/regist"
                }
            },error : function(date){
                alert('서버오류 ');
            }
        }); 
    }
</script>
