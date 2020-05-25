<%@page import="com.blog.db.BlogDTO"%>
<%@page import="com.notice.db.NoticeDTO"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="./img/logo.ico" rel="shortcut icon" type="image/x-icon">
<title>코딩팜</title>

<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.js"></script>

<style type="text/css">
.content{
width: 50%;
margin: 0 auto;
}

textarea {
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-bottom: 10px;
  width: 100%;
}
</style>
<script type="text/javascript">

(function($){
  // 여기에 코드를 작성
	$(document).ready(function() {
		  $('#summernote').summernote({
			  height: 300,                 // set editor height
			  minHeight: null,             // set minimum height of editor
		      maxHeight: null,             // set maximum height of editor
		      focus: true,                  // set focus to editable area after initializing summernote
		      lang: "ko-KR",					// 한글 설정
				placeholder: '내용을 입력하세요 :-D (사진은 파일선택 버튼을 눌러 등록해주세요!)',	//placeholder 설정

		  });
		});

		/* 이미지.. */
		$('#summernote').summernote('insertImage', url, function ($image) {
			  $image.css('width', $image.width() / 3);
			  $image.attr('data-filename', 'retriever');
			});
})(jQuery);


</script>
 
</head>
<body>
<!-- 헤더 -->
<jsp:include page="/include/header.jsp"></jsp:include>
<!-- 헤더 -->
<!-- 컨텐츠 -->

<%
String email="";
if(session.getAttribute("m_email")!=null){
email=(String)session.getAttribute("m_email");
}

//request.setAttribute("bdto", bdto);
//request.setAttribute("pageNum", pageNum);
BlogDTO bdto=(BlogDTO)request.getAttribute("bdto");
String pageNum=request.getAttribute("pageNum").toString();

%>


<fieldset class="content">
<legend>blogUpdate</legend>
<form action="./blogUpdateAction.bl" method="post" enctype="multipart/form-data">
글쓴이 : <%=bdto.getB_writer()%><br>
제목 : <input type="text" name="b_title" value="<%=bdto.getB_title()%>"><br>
<input type="file" name="b_img">
<input type="hidden" name="b_num" value="<%=bdto.getB_num()%>">
내용<br>
<textarea name="b_content" id="summernote">
<%=bdto.getB_content() %></textarea>
<input type="submit" value="수정하기">
</form>

<h2><a href="blog.bl">블로그 글 목록보기</a></h2>
</fieldset>
<!-- 컨텐츠 -->
<!-- 푸터 -->
<jsp:include page="/include/footer.jsp"></jsp:include>
<!-- 푸터 -->
</body>
</html>