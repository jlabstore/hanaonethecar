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
            <button type="button" id="setAutoCardInstallmentBtn" class="btn btn-outline-primary " onclick="setAutoCardInstallment()">등록</button>
            <button type="button" id="putAutoCardInstallmentBtn" class="btn btn-outline-primary " onclick="putAutoCardInstallment()">수정</button>
        </div>
    </div>
    <br>
    <span>상품선택:</span>
    <select class="custom-select" id="goodsName" name="goodsName" aria-controls="dataTable" style="width:130px" onchange="detailCardRate()" >
        <c:forEach var="item" items="${getSelectCodes}" varStatus="status">
            <option id="cardSelected" value="${item.goods_id}" <c:if test="${item.goods_id == 'CARDINSTALLMENT'}">selected</c:if>><li>${item.goods_nm}</li></option>
        </c:forEach>
    </select>
    <table class="table" style="margin-top:10px">
        <thead class="thead-dark">
            <tr>
                <th scope="row"></th>
                <th scope="col" style="text-align:center">할부수수료</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="month1" type="text" style="width:10%; display:inline-block" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"><span class="spacing">개월</span>
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="rate1" type="text" style="width:20%; display:inline-block" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
            </tr>
                <tr>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="month2" type="text" style="width:10%; display:inline-block" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"><span class="spacing">개월</span>
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="rate2" type="text" style="width:20%; display:inline-block" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
            </tr>
                <tr>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="month3" type="text" style="width:10%; display:inline-block" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"><span class="spacing">개월</span>
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="rate3" type="text" style="width:20%; display:inline-block" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
            </tr>
                <tr>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="month4" type="text" style="width:10%; display:inline-block" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"><span class="spacing">개월</span>
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="rate4" type="text" style="width:20%; display:inline-block" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
            </tr>
                <tr>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="month5" type="text" style="width:10%; display:inline-block" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"><span class="spacing">개월</span>
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="rate5" type="text" style="width:20%; display:inline-block" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
            </tr>
                <tr>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="month6" type="text" style="width:10%; display:inline-block" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"><span class="spacing">개월</span>
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="rate6" type="text" style="width:20%; display:inline-block" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
            </tr>
                <tr>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="month7" type="text" style="width:10%; display:inline-block" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"><span class="spacing">개월</span>
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="rate7" type="text" style="width:20%; display:inline-block" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
            </tr>
                <tr>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="month8" type="text" style="width:10%; display:inline-block" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"><span class="spacing">개월</span>
                </td>
                <td style="text-align:-webkit-center">
                    <input class="form-control" id="rate8" type="text" style="width:20%; display:inline-block" onkeyup="imsi(this)"><span class="spacing">%</span>
                </td>
            </tr>
        </tbody>
    </table>
</div>
<script type='text/javascript'> 
    $(window).ready(function(){
        detailAutoCardInstallment();
    });

    var detailCardRate = function(){
            var selectValue = $('#goodsName option:selected').val();
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
    function imsi(obj) {
        var regexp = /^\d*(\.\d{0,4})?$/;
            if(obj.value.search(regexp)== -1) {
                obj.value = prev;
            }
            else {
                prev = obj.value;
            }
    }
    
    //상세 
    function detailAutoCardInstallment(){
        var goodsId = $("#goodsName").val();
        $.ajax({
            type: "POST",
            url : "/admin/cardRate/detailAutoCardInstallment",
            data: {"goodsId":goodsId},
            dataType: "json",
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            async: false,
            success : function(data){
                dataFormatingFun(data)
                if(data.detailAutoCardInstallment != null){
                    //수정
                    $("#putAutoCardInstallmentBtn").show();
                    $("#setAutoCardInstallmentBtn").hide();
                }else{
                    //등록
                    $("#setAutoCardInstallmentBtn").show();
                    $("#putAutoCardInstallmentBtn").hide();
                }
                
            },error : function(date){
                alert('문제가 발생했습니다. 관리자에게 문의하세요.');
            }
        });
    }

    var dataFormatingFun = function(data) {
        var temp = data.detailAutoCardInstallment != null ? true : false;

        var month1 = temp ? data.detailAutoCardInstallment.month1 : "";
        var month2 = temp ? data.detailAutoCardInstallment.month2 : "";
        var month3 = temp ? data.detailAutoCardInstallment.month3 : "";
        var month4 = temp ? data.detailAutoCardInstallment.month4 : "";
        var month5 = temp ? data.detailAutoCardInstallment.month5 : "";
        var month6 = temp ? data.detailAutoCardInstallment.month6 : "";
        var month7 = temp ? data.detailAutoCardInstallment.month7 : "";
        var month8 = temp ? data.detailAutoCardInstallment.month8 : "";
        var rate1 = temp ? data.detailAutoCardInstallment.rate1 : "";
        var rate2 = temp ? data.detailAutoCardInstallment.rate2 : "";
        var rate3 = temp ? data.detailAutoCardInstallment.rate3 : "";
        var rate4 = temp ? data.detailAutoCardInstallment.rate4 : "";
        var rate5 = temp ? data.detailAutoCardInstallment.rate5 : "";
        var rate6 = temp ? data.detailAutoCardInstallment.rate6 : "";
        var rate7 = temp ? data.detailAutoCardInstallment.rate7 : "";
        var rate8 = temp ? data.detailAutoCardInstallment.rate8 : "";

        
        $("#month1").val(month1);
        $("#month2").val(month2);
        $("#month3").val(month3);
        $("#month4").val(month4);
        $("#month5").val(month5);
        $("#month6").val(month6);
        $("#month7").val(month7);
        $("#month8").val(month8);

        $("#rate1").val(rate1);
        $("#rate2").val(rate2);
        $("#rate3").val(rate3);
        $("#rate4").val(rate4);
        $("#rate5").val(rate5);
        $("#rate6").val(rate6);
        $("#rate7").val(rate7);
        $("#rate8").val(rate8);
    }

    //금리 등록 전송
    function setAutoCardInstallment(){

        goodsId = $("#goodsName option:selected").val();
        console.log(goodsId);
        var formData = {
            
            "goodsId": goodsId,
            "month1" : $("#month1").val(),
            "month2" : $("#month2").val(),
            "month3" : $("#month3").val(),
            "month4" : $("#month4").val(),
            "month5" : $("#month5").val(),
            "month6" : $("#month6").val(),
            "month7" : $("#month7").val(),
            "month8" : $("#month8").val(),
            "rate1" : $("#rate1").val(),
            "rate2" : $("#rate2").val(),
            "rate3" : $("#rate3").val(),
            "rate4" : $("#rate4").val(),
            "rate5" : $("#rate5").val(),
            "rate6" : $("#rate6").val(),
            "rate7" : $("#rate7").val(),
            "rate8" : $("#rate8").val()
        }

        if(!confirm('등록을 완료하시겠습니까?')){
            alert('취소하셨습니다.')
        }else{
            $.ajax({
                type: "POST",
                url : "/admin/cardRate/setAutoCardInstallment",
                data: formData,
                dataType: "json",
                contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                async: false,
                success : function(data){             
                    alert('등록이 완료되었습니다.');
                    detailAutoCardInstallment();
                },error : function(date){
                    alert('문제가 발생했습니다. 관리자에게 문의하세요.');
                }
            });
        }
    }

    //금리 수정 전송
    function putAutoCardInstallment(){

        goodsId = $("#goodsName option:selected").val();

        var formData = {
            "goodsId": goodsId,
            "month1" : $("#month1").val(),
            "month2" : $("#month2").val(),
            "month3" : $("#month3").val(),
            "month4" : $("#month4").val(),
            "month5" : $("#month5").val(),
            "month6" : $("#month6").val(),
            "month7" : $("#month7").val(),
            "month8" : $("#month8").val(),
            "rate1" : $("#rate1").val(),
            "rate2" : $("#rate2").val(),
            "rate3" : $("#rate3").val(),
            "rate4" : $("#rate4").val(),
            "rate5" : $("#rate5").val(),
            "rate6" : $("#rate6").val(),
            "rate7" : $("#rate7").val(),
            "rate8" : $("#rate8").val()
        }

        if(!confirm('수정을 완료하시겠습니까?')){
            alert('취소하셨습니다.')
        }else{
            $.ajax({
            type: "POST",
            url : "/admin/cardRate/putAutoCardInstallment",
            data: formData,
            dataType: "json",
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            async: false,
            success : function(data){
                alert('수정이 완료되었습니다.');
                detailAutoCardInstallment();
            },error : function(date){
                alert('문제가 발생했습니다. 관리자에게 문의하세요.');
            }
        });
        }
        
    }

</script>
