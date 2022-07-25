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
.banner-item{
    padding-bottom : 10px;
}
</style>
<div class="container-fluid" style="min-width: 1000px; margin-left: unset;">
    <div style="
        display: flex;
        margin-bottom: 6px;
        justify-content: space-between;
        align-items: flex-end;
    ">
        <h4 style="margin-bottom: 0px;">배너 관리</h4>
        <div>
            <button type="button" id="saveBannerBtn" class="btn btn-outline-primary " onclick="saveBanner()">저장</button>
        </div>
    </div>
    <br/>
    <div class="card shadow mb-4">
        <form id="registForm" name="registForm">
            <div class="card-body">
                <div class="form-row">
                    <%-- 배너 관리 - PC --%>
                    <div class="form-group col-md-12">
                        <h5 style="margin-bottom: 0px;">배너 관리 - PC<span class="btn btn-outline-info" style="margin-left:10px" onclick="setImageFileItemHtml('pc', null)">추가</span></h5><br>
                        <label class="title-label">PC 이미지 등록</label>
                        <div id="draw-list-pc" >
                        </div>
                    </div>
                    <br><br><br><br><br>
                    <%-- 배너 관리 - 모바일 --%>
                    <div class="form-group col-md-12" class="image-item-mo" style="border-top:1px solid gray;"><br>
                        <h5 style="margin-bottom: 0px;">배너 관리 - Mobile<span class="btn btn-outline-info" style="margin-left:10px" onclick="setImageFileItemHtml('mo', null)">추가</span></h5><br>
                        <label class="title-label">모바일 이미지 등록</label>
                        <div id="draw-list-mo">
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript">
    var delIdxs = [];
    $(document).ready(function(){
    
        // document.getElementById("mainPCFiles").addEventListener("change", e => {
        //     readImage(e.target, "mainPCImage");
        // });

        // document.getElementById("mainMobileFiles").addEventListener("change", e => {
        //     readImage(e.target, "mainMobileImage");
        // });
        getData();
    });

    var readImage = function(input, imageId) {
        // 인풋 태그에 파일이 있는 경우
        if(input.files && input.files[0]) {
            // 이미지 파일인지 검사 (생략)
            // FileReader 인스턴스 생성
            var reader = new FileReader()

            // 이미지가 로드가 된 경우
            // reader.onload = e => {
            //     var previewImage = document.getElementById(imageId)
            //     previewImage.src = e.target.result
            // }

            // reader가 이미지 읽도록 하기
            reader.readAsDataURL(input.files[0])
            $('#'+imageId).show();
        }
    }

    //DB값 가져오기
    var getData = function(){
        $.ajax({
            type: 'POST',
            url: '/banner/detailBanner',
            enctype: 'multipart/form-data',  
            processData: false,    
            contentType: false,  
            async: false,
            success: function(data) {
                console.log(data);
                if(data.getGoodsBanner.length > 0){
                    $(data.getGoodsBanner).each(function(idx,item){
                        if(item.type == 'MAINPC'){
                            setImageFileItemHtml('pc', item);
                        }else{
                            setImageFileItemHtml('mo', item);
                        }
                    }); 
                }

            },
            error:function(data) {
                alert('문제가 발생했습니다. 관리자에게 문의하세요.');
            },
            complete : function(){
                if($('[name=banner-item-pc]').length == 0){
                    setImageFileItemHtml('pc', null);
                }
                if($('[name=banner-item-mo]').length == 0){
                    setImageFileItemHtml('mo', null);
                }
            }
        });
    }

    var setImageFileItemHtml = function(type, itemData){
        type = ( type === undefined || type ===  null || type === '') ? 'pc' : type;


        if((type === 'pc' && $('[name=banner-item-pc]').length == 5) || (type === 'mo' && $('[name=banner-item-mo]').length == 5)){
            alert("파일 등록개수는 최대 5개입니다.");
            return;
        }

        var html = '';
        html += '<div class="banner-item" name="banner-item-'+type+'">';

        //sort
        html += '   <select id="selectSort_'+type+'" name="selectSort_'+type+'" class="col-sm-1 custom-select selectSort"  '+(itemData != null ? ' bannerIdx="'+itemData.idx+'"': ''  )+' style="width:70px">';
        for(var i=1 ; i<6; i++){
            html += ' <option value="'+i+'" '+(itemData != null && itemData.sort == i ? 'selected': ''  )+'>'+i+'</option> ';
        }
        html += '   </select>';

        //image file
        if(itemData != null){
            html += '   <span style="padding-left: 20px;"> '+itemData.original_nm+'</span>'
            html += '   <span class="badge badge-red" id="xBtn" style="margin-left:10px;" onclick="bannerDelBtn(this,'+itemData.idx+')">x</span>'
        }else{
            html += '   <input type="file" name="'+type+'Files" class="input-file" style="margin-left:20px;" >';
            html += '   <span class="badge badge-red" id="xBtn" style="margin-left:10px;" onclick="bannerDelBtn(this, null)">x</span>';
        }

        html += '</div>';

        $('#draw-list-' + type).append(html); 
    }

    //배너 저장
    var saveBanner = function(){

        var formdata = new FormData($("#registForm")[0]);
        
        //신규 이미지 등록건
        var pcFileSort = [];
        $('input[name=pcFiles]').each(function(i,e){
            if($(e)[0].files[0] !== undefined && $(e)[0].files[0].size > 0){
                $(e).closest('.banner-item').find('#selectSort_pc').val();
                pcFileSort.push($(e).closest('.banner-item').find('#selectSort_pc').val());
            }
        });
        var moFileSort = [];
        $('input[name=moFiles]').each(function(i,e){
            if($(e)[0].files[0] !== undefined && $(e)[0].files[0].size > 0){
                $(e).closest('.banner-item').find('#selectSort_mo').val();
                moFileSort.push($(e).closest('.banner-item').find('#selectSort_mo').val());
            }
        });
        formdata.append('pcFileSort', pcFileSort);
        formdata.append('moFileSort',moFileSort);

        //기존 이미지 정렬 변경건 
        var changeSort = [];
        $('.selectSort').each(function(i,e){
            if($(e).attr('bannerIdx') != undefined){
                changeSort.push( $(e).attr('bannerIdx') + ':' + $(e).val())
            }
        })
        formdata.append('changeSort', changeSort);

        //기존 이미지 삭제건 
        formdata.append('delIdxs',delIdxs);
        
        if(pcFileSort.length > 0  || moFileSort.length > 0){
            $.ajax({
                type: 'POST',
                url: '/banner/saveBanner',
                enctype: 'multipart/form-data',  
                processData: false,    
                contentType: false,  
                data: formdata,
                async: false,
                success: function(data) {
                    alert("저장되었습니다.");
                    location.reload();
                },
                error:function(data) {
                    alert('문제가 발생했습니다. 관리자에게 문의하세요.');
                }
            });
        }else{
            alert('배너는 최소 한장이상 필요합니다.');
        }
    }

    //배너 삭제
    var bannerDelBtn = function(e,idx){
        $(e).closest('.banner-item').remove();
        if(idx != null){
            delIdxs.push(idx);
        }
    }


</script>