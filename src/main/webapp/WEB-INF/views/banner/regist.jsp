<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<spring:eval expression="@environment.getProperty('image.path')" var="imagePath" />
<style>
.title-label{
    width : 150px;
}
.lang-label{
    width : 80px;
}
.input-max{
    width: calc(100% - 300px); 
    display: inline-block;
}
.input-half{
    width: calc(50% - 195px); 
    display: inline-block;
}
.input-date{
    width: calc(25% - 107px); 
    display: inline-block;
}
.input-file{
    width: calc(40% - 107px); 
    display: inline-block;
}
</style>
<div class="container-fluid" style="min-width: 1000px; margin-left: unset;">
    <div style="
        display: flex;
        margin-bottom: 6px;
        justify-content: space-between;
        align-items: flex-end;
    ">
    <c:if test ="${notice.idx == null}">
        <h4 style="margin-bottom: 0px;">배너 관리</h4>
    </c:if>
    <%-- <c:if test ="${notice.idx != null}">
        <h4 style="margin-bottom: 0px;">자료실 정보 수정</h4>
    </c:if>   --%>
        <div>
            <c:if test ="${notice.idx == null}">    
                <button type="button" class="btn btn-outline-primary " onclick="registNotice()">등록</button>
            </c:if>
            <c:if test ="${notice.idx != null}">    
                <button type="button" class="btn btn-outline-primary " onclick="registNotice()">수정</button>
            </c:if>
                <button type="button" class="btn btn-outline-dark "onclick="javascript:location.href='/notice/list'">취소</button>
        </div>
    </div>
    <br/>
    <div class="card shadow mb-4">
        <form id="registForm" name="registForm">
            <div class="card-body">
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <h5 style="margin-bottom: 0px;">배너 관리 - PC</h5></br>
                        <label class="title-label">이미지 등록</label>
                        <input type="hidden" value="false" id="checkMainImageFile" name="checkMainImageFile">
                        <input type="file" id="noticeFiles" name="noticeFiles" class="input-file">
                        <c:set  var="existMainImage" value="false" />
                        <c:forEach var="item" items="${images}" varStatus="imageStatus">
                            <c:if test="${existMainImage == 'false' && item.type == 'MAIN' }">
                                <c:set  var="existMainImage" value="true" />
                                <img id="mainImage" style="width: 275px;height: 180px;" src="${imagePath}/${item.path}/${item.makingFileName}">
                            </c:if>
                        </c:forEach>
                        <c:if test="${existMainImage == 'false'}">
                            <img id="mainImage" style="width: 275px;height: 180px;display:none"  >
                        </c:if>
                    </div>
                    <input type="hidden" id="idx" name ="idx" value="${notice.idx}">  
                </div>
            </div>
        </form>
    </div>
</div>
  <script type="text/javascript">
    $(document).ready(function(){

        document.getElementById("noticeFiles").addEventListener("change", e => {
            readImage(e.target, "mainImage");
        });
    });

    var readImage = function(input, imageId) {
        // 인풋 태그에 파일이 있는 경우
        if(input.files && input.files[0]) {
            // 이미지 파일인지 검사 (생략)
            // FileReader 인스턴스 생성
            var reader = new FileReader()
            // 이미지가 로드가 된 경우
            reader.onload = e => {
                var previewImage = document.getElementById(imageId)
                previewImage.src = e.target.result
            }
            // reader가 이미지 읽도록 하기
            reader.readAsDataURL(input.files[0])
            $('#'+imageId).show();
        }
    }

    var registNotice = function(){
        var idx = $("#idx").val();
        var title = $("#title").val();
        var contents = $("#contents").val();
        
        if(!title || title == '') {
            alert("제목을 입력하세요.");
            if (!title || title == '') $("#title").focus();
            return;
        }
        if(!contents || contents == '') {
            alert("본문을 입력하세요.");
            if (!contents || contents == '') $("#contents").focus();
            return;
        }

        var formdata = new FormData($("#registForm")[0]);

        if(idx == null || idx ==""){
            $.ajax({
                type: 'POST',
                url: '/notice/regist',
                enctype: 'multipart/form-data',  
                processData: false,    
                contentType: false,  
                data: formdata,
                async: false,
                success: function(data) {
                    if(checkAjaxData(data)){
                        alert("저장되었습니다.");
                        window.location.href='/notice/list'
                    }else{
                        alert("저장 중 문제가 발생했습니다.")
                    }
                },
                error:  function(request, status) {
                    checkAjaxError(request, status);
                }
            });
        }else{
            $.ajax({
                type: 'POST',
                url: '/notice/save',
                enctype: 'multipart/form-data',  
                processData: false,    
                contentType: false,  
                data: formdata,
                async: false,
                success: function(data) {
                    if(checkAjaxData(data)){
                        alert("수정되었습니다.")
                        window.location.href='/notice/list'
                    }else{
                        alert("저장 중 문제가 발생했습니다.")
                    }
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    checkAjaxError(textStatus);
                }
            });
        }
    }
</script>