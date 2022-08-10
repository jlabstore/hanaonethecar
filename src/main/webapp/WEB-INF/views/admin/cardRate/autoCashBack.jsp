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
            <button type="button" id="setCashBackBtn" class="btn btn-outline-primary " onclick="setCashBack()">등록</button>
            <button type="button" id="putCashBackBtn" class="btn btn-outline-primary " onclick="putCashBack()">수정</button>
        </div>
    </div>
    <br>
    <span>상품선택:</span>
    <select class="custom-select" id="goodsName" name="goodsName" aria-controls="dataTable" style="width:130px" onchange="detailCardRate()">
        <c:forEach var="item" items="${getSelectCodes}" varStatus="status">
            <option value="${item.goods_id}" <c:if test="${item.goods_id == 'CASHBACK'}">selected</c:if>><li>${item.goods_nm}</li></option>
        </c:forEach>
    </select>
        <table class="table" style="margin-top:10px">
            <thead class="thead-dark">
                <tr>
                    <th scope="row"></th>
                    <th scope="col" style="text-align:center">캐쉬백</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row" style="text-align:center">선입금 방식<br>- 3,000만원 미만</th>
                    <td style="text-align:-webkit-center">
                        <input class="form-control" id="rate1" type="text" style="width:20%; display:inline-block" onkeyup="imsi(this)"><span class="spacing">%</span>
                    </td>
                </tr>
                <tr>
                    <th scope="row" style="text-align:center">선입금 방식<br>- 3,000만원 이상</th>
                    <td style="text-align:-webkit-center">
                        <input class="form-control" id="rate2" type="text" style="width:20%; display:inline-block" onkeyup="imsi(this)"><span class="spacing">%</span>
                    </td>
                </tr>
                <tr>
                    <th scope="row" style="text-align:center">체크카드 방식<br>- 3,000만원 이상</th>
                    <td style="text-align:-webkit-center">
                        <input class="form-control" id="rate3" type="text" style="width:20%; display:inline-block" onkeyup="imsi(this)"><span class="spacing">%</span>
                    </td>
                </tr>
            </tbody>
        </table>
</div>
<script type='text/javascript'> 
    $(window).ready(function(){
        detailCashBack();
    });
    
    var detailCardRate = function(){
        var selectValue = $('#goodsName option:selected').val();
        // var selectValueNm = $('#goodsName option:selected').text();
            // 오토캐시백
            if(selectValue == 'CASHBACK'){
                window.location.href = '/admin/cardRate/autoCashBack';
            //오토카드할부
            }else if(selectValue == 'CARDINSTALLMENT' ){
                window.location.href = '/admin/cardRate/autoCardInstallment';

            //오토론
            }else if(selectValue == 'LONA' ){
                window.location.href = '/admin/cardRate/autoLoan';

            //오토할부
            }else if(selectValue == 'INSTALLMENT'){
                window.location.href = '/admin/cardRate/autoInstallment';
            }
    }

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
    function detailCashBack(){
        var goodsId = $("#goodsName").val();
        $.ajax({
            type: "POST",
            url : "/admin/cardRate/detailCashback",
            data: {"goodsId":goodsId},
            dataType: "json",
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            async: false,
            success : function(data){
                dataFormatingFun(data)
                if(data.detailCashback != null){
                    //수정
                    $("#putCashBackBtn").show();
                    $("#setCashBackBtn").hide();
                }else{
                    //등록
                    $("#setCashBackBtn").show();
                    $("#putCashBackBtn").hide();
                }
                
            },error : function(date){
                alert('문제가 발생했습니다. 관리자에게 문의하세요.');
            }
        });
    }

     var dataFormatingFun = function(data) {
        var temp = data.detailCashback != null ? true : false;

        var cashback1 = temp ? data.detailCashback.cashback1 : "";
        var cashback2 = temp ? data.detailCashback.cashback2 : "";
        var cashback3 = temp ? data.detailCashback.cashback3 : "";
        
        $("#rate1").val(cashback1);
        $("#rate2").val(cashback2);
        $("#rate3").val(cashback3);
    }

    //금리 등록 전송
    function setCashBack(){

        goodsId = $("#goodsName option:selected").val();

        var formData = {
            
            "goodsId": goodsId,
            "cashback1" : $('#rate1').val(),
            "cashback2" : $('#rate2').val(),
            "cashback3" : $('#rate3').val()
        }

        if(!confirm('등록을 완료하시겠습니까?')){
            alert('취소하셨습니다.')
        }else{
            $.ajax({
                type: "POST",
                url : "/admin/cardRate/setCashBack",
                data: formData,
                dataType: "json",
                contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                async: false,
                success : function(data){             
                    alert('등록이 완료되었습니다.');
                    detailCashBack();
                },error : function(date){
                    alert('문제가 발생했습니다. 관리자에게 문의하세요.');
                }
            });
        }
    }

    //금리 수정 전송
    function putCashBack(){

        goodsId = $("#goodsName option:selected").val();

        var formData = {
            "goodsId": goodsId,
            "cashback1" : $('#rate1').val(),
            "cashback2" : $('#rate2').val(),
            "cashback3" : $('#rate3').val()
        }

        if(!confirm('수정을 완료하시겠습니까?')){
            alert('취소하셨습니다.')
        }else{
            $.ajax({
            type: "POST",
            url : "/admin/cardRate/putCashBack",
            data: formData,
            dataType: "json",
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            async: false,
            success : function(data){
                alert('수정이 완료되었습니다.');
                detailCashBack();
            },error : function(date){
                alert('문제가 발생했습니다. 관리자에게 문의하세요.');
            }
        });
        }
        
    }
</script>
