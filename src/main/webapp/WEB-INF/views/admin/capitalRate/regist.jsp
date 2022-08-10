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
            <button type="button" id="setCapitalRateBtn" class="btn btn-outline-primary " onclick="setCapitalRate()">등록</button>
            <button type="button" id="putCapitalRateBtn" class="btn btn-outline-primary " onclick="putCapitalRate()">수정</button>
        </div>
    </div>
    <br>
    <span>상품선택:</span>
    <select class="custom-select" id="goodsName" name="goodsName" aria-controls="dataTable" style="width:130px"  onchange="detailCapitalRate()">
        <c:forEach var="item" items="${getSelectCodes}" varStatus="status">
            <option value="${item.goods_id}"><li>${item.goods_nm}</li></option>
        </c:forEach>
    </select>
    <table class="table" style="margin-top:10px">
        <thead class="thead-dark">
            <tr>
                <th scope="row"></th>
                <th scope="col" style="text-align:center">금융리스</th>
            </tr>
        </thead>
            <tbody>
                <tr>
                    <th scope="row" style="text-align:center">최저</th>
                    <td style="text-align:-webkit-center">
                        <input class="form-control" id="lowRate" type="text" style="width:20%; display:inline-block" onkeyup="imsi(this)"><span class="spacing">%</span>
                    </td>
                </tr>
                <tr>
                    <th scope="row" style="text-align:center">최고</th>
                    <td style="text-align:-webkit-center">
                        <input class="form-control" id="highRate" type="text" style="width:20%; display:inline-block" onkeyup="imsi(this)"><span class="spacing">%</span>
                    </td>
                </tr>
            </tbody>
    </table>
</div>
<script type='text/javascript'> 
    $(window).ready(function(){
        detailCapitalRate();
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

    //상세 
    function detailCapitalRate(){
        var goodsId = $("#goodsName").val();
        $.ajax({
            type: "POST",
            url : "/admin/capitalRate/detailCapitalRate",
            data: {"goodsId":goodsId},
            dataType: "json",
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            async: false,
            success : function(data){
                dataFormatingFun(data)
                if(data.detailCapitalRate != null){
                    //수정
                    $("#putCapitalRateBtn").show();
                    $("#setCapitalRateBtn").hide();
                }else{
                    //등록
                    $("#setCapitalRateBtn").show();
                    $("#putCapitalRateBtn").hide();
                }
            },error : function(date){
                alert('문제가 발생했습니다. 관리자에게 문의하세요.');
            }
        });
    }

    var dataFormatingFun = function(data) {
        var temp = data.detailCapitalRate != null ? true : false;
        var lowRate = temp ? data.detailCapitalRate.low_rate : "";
        var highRate = temp ? data.detailCapitalRate.high_rate : "";
        
        $("#lowRate").val(lowRate);
        $("#highRate").val(highRate);
    }

     //금리 등록시 유효성 체크 후 저장 
    function setCapitalRate() {
        if($('#lowRate').val() == ""){
            alert('최저금리를 등록해주세요.');
            $('#lowRate').focus();
        }else if($('#highRate').val() == ""){
            alert('최고금리를 등록해주세요.');
            $('#highRate').focus();
        }else{
            addCapitalRate();
        }
    }

    //금리 등록 전송
    function addCapitalRate(){

        goodsId = $("#goodsName option:selected").val();
    
        var formData = {
            
            "goodsId": goodsId,
            "lowRate" : $('#lowRate').val(),
            "highRate" : $('#highRate').val()
        }

        if(!confirm('등록을 완료하시겠습니까?')){
            alert('취소하셨습니다.')
        }else{
            $.ajax({
                type: "POST",
                url : "/admin/capitalRate/setCapitalRate",
                data: formData,
                dataType: "json",
                contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                async: false,
                success : function(data){             
                    alert('등록이 완료되었습니다.');
                    detailCapitalRate();
                },error : function(date){
                    alert('문제가 발생했습니다. 관리자에게 문의하세요.');
                }
            });
        }
    }

    //금리 수정 전송
    function putCapitalRate(){

        goodsId = $("#goodsName option:selected").val();

        var formData = {
            "goodsId": goodsId,
            "lowRate" : $('#lowRate').val(),
            "highRate" : $('#highRate').val()
        }

        if(!confirm('수정을 완료하시겠습니까?')){
            alert('취소하셨습니다.')
        }else{
            $.ajax({
            type: "POST",
            url : "/admin/capitalRate/putCapitalRate",
            data: formData,
            dataType: "json",
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            async: false,
            success : function(data){
                alert('수정이 완료되었습니다.');
                detailCapitalRate();
            },error : function(date){
                alert('문제가 발생했습니다. 관리자에게 문의하세요.');
            }
        });
        }
        
    }

</script>
