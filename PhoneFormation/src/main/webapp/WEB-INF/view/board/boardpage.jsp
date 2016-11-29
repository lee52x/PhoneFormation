<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script>
$(document).ready(function(){
   $("#fileselect").hide();   
   $("#submitBtn").hide();
   $("#cancleBtn").hide(); 
   
   function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
            reader.onload = function (e) {
            //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
     
               $("#blah").show();   
              $('#blah').attr('src', e.target.result);
                
                //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
                //(아래 코드에서 읽어들인 dataURL형식)
            }                   
            reader.readAsDataURL(input.files[0]);
            //File내용을 읽어 dataURL형식의 문자열로 저장
        }
    }//readURL()--

    
    //file 양식으로 이미지를 선택(값이 변경) 되었을때 처리하는 코드
    $("#imgInp").change(function(){
       	readURL(this);
      });
    
	$("#updateBtn").on("click", function(){
		 $('#title').attr("readonly", false);
		 $('#contents').attr("readonly",false);
		 
		 $('#contents').focus();

		 $("#fileselect").show(); 
		 $("#submitBtn").show();
		 $("#cancleBtn").show(); 
		 $("#updateBtn").hide();
		 $("#removeBtn").hide(); 
	});

	$("#removeBtn").on("click", function(){
		var formObj = $("form[role='listform']");
		formObj.attr("method", "delete");
		formObj.attr("action", "boardremove");
		formObj.submit();
	});
	$("#listBtn").on("click", function(){
		var formObj = $("form[role='listform']");
		formObj.attr("method", "get");
		formObj.attr("action", "boardlist");
		formObj.submit();
	});
	$("#cancleBtn").on("click", function(){
		var formObj = $("form[role='listform']");
		formObj.attr("method", "get");
		formObj.attr("action", "boardpage");
		formObj.submit();
	});
	$("#submitBtn").on("click", function(){
		var formObj = $("form[role='form']");
		formObj.attr("method", "post");
		formObj.attr("action", "boardupdate");
		formObj.submit();
	});
 });
 

</script>
</head>
<body>
	<div class="container"  style="background-color: silver">
   <div id="content" style="border: 1">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">글쓰기</h3>
				</div>
				<!-- /.box-header -->
				<form role="form" method="post" enctype="multipart/form-data" action="boardupdate">
					<div class="box-body">
						<div class="form-group">
							<label for="writer">작성자</label> <input type="text" id='writer'
								name='writer' class="form-control" readonly="readonly"
								value="${boardVO.writer }">
						</div>
						<div class="form-group">
							<label for="regdate">작성일</label> <input type="text" id='regdate'
								class="form-control" readonly="readonly"
								value="${boardVO.regdate }">
						</div>
						<div class="form-group">
							<label for="viewcnt">조회수</label> <input type="text" id='viewcnt'
								name='viewcnt' class="form-control" readonly="readonly"
								value="${boardVO.viewcnt }">
						</div>
						<div class="form-group">
							<label for="title">제목</label>
							<input type="text" id='title' name='title' class="form-control" readonly="readonly" value="${boardVO.title }">
						</div>
						<div class="form-group" id="fileselect">
							<input type="text" id="filename" readonly="readonly" class="form-control">
							<label for="imgInp"><span id="fileFind">사진변경하기</span></label>&nbsp;
							<input type="file" id="imgInp" name="file" accept=".gif, .jpg, .png" style="display: none"onchange="javascript: document.getElementById('filename').value = this.value"> 
						</div>
						<div class="form-group">
							<label>내용</label>
							<div id="ta1" align="center" style="overflow-x:auto; width:500px; height: 300px; border: solid; 1px; margin: 20px; line-height: 20px; ">
							<label for="content">
								<img id="blah" src="${boardVO.image}" />
								<textarea name="content" id="contents" style="border:0;width:490px; height:290px;"  readonly="readonly">${boardVO.content }</textarea>
							</label>
							</div>
							
						</div>
					</div>
					<!-- /.box-body -->

					<div class="box-footer">
						<input type="button" class="btn btn-warning" id="updateBtn" value="수정하기" />
						<input type="button" class="btn btn-warning" id="removeBtn" value="삭제하기"/>
						
						<input type="button" class="btn btn-warning" id="submitBtn" value="완료하기"/>
						<input type="button" class="btn btn-warning" id="cancleBtn" value="취소하기"/>
						
						<input type="button" class="btn btn-warning" id="listBtn" value="돌아가기"/>
						
						<input type='hidden' name='bno' value="${boardVO.bno}">
						<input type='hidden' name='tno' value="${cri.tno}">
						<input type='hidden' name='page' value="${cri.page}">
						<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
						<input type='hidden' name='searchType' value="${cri.searchType}">
						<input type='hidden' name='keyword' value="${cri.keyword}">
					</div>
					</form>
					<form role="listform" method="post" action="boardlist">
						<input type='hidden' name='bno' value="${boardVO.bno}">
						<input type='hidden' name='tno' value="${cri.tno}">
						<input type='hidden' name='page' value="${cri.page}">
						<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
						<input type='hidden' name='searchType' value="${cri.searchType}">
						<input type='hidden' name='keyword' value="${cri.keyword}">
					</form>
			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</div>
<!-- /.content -->
</body>
<!-- /.content-wrapper -->
</html>