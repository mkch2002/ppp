<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="삼건협의회">
<meta name="keywords" content="삼건협의회 리뉴얼 2019">
<meta name="description" content="삼성물산,삼건협의회,직원이 먼저다">
<title>삼건협의회</title>

<!--css style-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/sub01.css">
<!--script-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script>
		$(function(){
			$("nav").hover(function(){
				$(".txt_2depth").css("display","block");
				$(".bg_2depth").css("display","block");
			},function(){
				$(".txt_2depth").css("display","none");
				$(".bg_2depth").css("display","none");
			});
		});
		$(function(){
			$(".bg_2depth").hover(function(){
				$(".txt_2depth").css("display","block");
				$(".bg_2depth").css("display","block");
			},function(){
				$(".txt_2depth").css("display","none");
				$(".bg_2depth").css("display","none");
			});
		});
	</script>
</head>
<body>
	<a href="#contents" class="skip">ë³¸ë¬¸ë°ë¡ê°ê¸°</a>
	<div id="wrap">
		<!-- header -->
		<%@include file="../include/header.jsp"%>
		<!-- header End-->

		<!-- container -->
		<div id="container">
			<!-- visual-->
			<div class="sub_visual sub01_01_bg">
				<h2>
					<img src="${pageContext.request.contextPath}/resources/images/sub01/sub01_01_title.png">
				</h2>
			</div>

			<div class="inner sub_inner">
				<div>
					<!--ê²½ë¡-->
					<ul class="path_top">
						<li><a href="../main/index.html"> <i class="icon_home"><img
									src="${pageContext.request.contextPath}/resources/images/sub01/btn_path_home.png"
									alt="ë©ì¸ì¼ë¡ ê°ê¸° ë²í¼"></i> Home
						</a></li>
						<li class="path_1depth01"><a href="#a" class="path_on"><span>About
									협의회</span><i class="caret"></i></a>
							<ul class="path_sub ps01">
								<li><a href="../sub01/sub01_6.html">About 협의회</a></li>
								<li><a href="../sub01/sub01_2.html">협의회 소식</a></li>
								<li><a href="../sub02/sub02_1.html">고충처리</a></li>
								<li><a href="../sub03/sub03_1.html">소통마당</a></li>
							</ul></li>
						<li class="path_1depth02"><a href="#a" class="path_on"><span>소통마당</span><i
								class="caret"></i></a>
							<ul class="path_sub ps02">
								<li><a href="../sub03/sub03_1.html">삼건협의회가 간다</a></li>
								<li><a href="../sub03/sub03_2.html">POLL</a></li>
								<li><a href="../sub04/sub04_1_list.jsp">리조트/휴양소/행사</a></li>
							</ul></li>
					</ul>
				</div>

				<!--con_wrap(ë°ëë ìì­)-->
				<div class="con_wrap">
					<!--ì¤ë¥¸ìª½ ê²ìí ìì­-->
					<div>
						<div class="table">
							<form action="${pageContext.request.contextPath}/try01/upload.do" method="post" enctype="multipart/form-data" id="fileUploadForm">
							<!--íì´ë¸-->
							<table class="tb03 tb_sty02">
								<caption class="hide">게시판 글쓰기</caption>
								<colgroup>
									<col style="width: 16%;">
									<col style="width: *;">
								</colgroup>
								<tbody>
									<tr>
										<th scope="col"><span class="color_red">*</span>Title</th>
										<td class="sel_status"><input type="text" id="sTitle"></td>
									</tr>
									<tr>
										<th scope="col"><span class="color_red">*</span>Text</th>
										<td><textarea rows="24" class="color_red" id="sContent"></textarea></td>
									</tr>
									<tr>
									<th>
										<h3>파일 업로드</h3>
									</th>
									<td>
										
										  <table>
										    <tr>
										      <td>Select File</td>
										      <td><input type="file" name="uploadFile1" /></td>
										    </tr>
<!-- 										    <tr> -->
<!-- 										      <td>Select File</td> -->
<!-- 										      <td><input type="file" name="uploadFile2" /></td> -->
<!-- 										    </tr> -->
<!-- 										    <tr> -->
<!-- 										      <td>Select File</td> -->
<!-- 										      <td><input type="file" name="uploadFile3" /></td> -->
<!-- 										    </tr> -->
										    <tr>
										      <td>
										        <button type="submit">제출</button>
										        <button type="button" id="btnSubmit">ajax 제출</button>							
										      </td>										     
										    </tr>
										  </table>									
										</td>
									</tr>
									<tr>
										<th scope="col">ETC</th>
										<td class="color_red"><input type="text" id="sEtc"></td>
									</tr>
								</tbody>
							</table>
							</form>
							<p class="fz14">
								<span class="color_red" style="margin-right: 4px;">*</span>Required
								Input
							</p>

							<div class="tac btn_same">
								<!--ë²í¼-->
								<a href="#none" class="btn_sub02" onclick="fnTryValidation()">Save</a>
								<a href="${pageContext.request.contextPath}/try01/try01_1.do" class="btn_border">List</a>
							</div>
						</div>
						<!--table-->
					</div>
					<!--ì¤ë¥¸ìª½ ê²ìí ìì­ End-->
				</div>
				<!--con_wrap(ë°ëë ìì­) End-->

			</div>
			<!--inner End-->
		</div>
		<!-- container End-->
		<!-- footer -->
		<%@include file="../include/footer.jsp"%>
		<!-- footer End-->
	</div>
	<script>
    
    $("#btnSubmit").click(function (event) {

         //preventDefault 는 기본으로 정의된 이벤트를 작동하지 못하게 하는 메서드이다. submit을 막음
         event.preventDefault();
         // Get form
         var form = $('#fileUploadForm')[0];
 
        // Create an FormData object 
         var params = new FormData(form);
 
       // disabled the submit button
         $("#btnSubmit").prop("disabled", true);
 
         $.ajax({
             type: "POST",
             enctype: 'multipart/form-data',
             url: "${pageContext.request.contextPath}/try01/upload.do",
             data: params,
             processData: false,
             contentType: false,
             success: function (data) {
                alert("complete");
                 $("#btnSubmit").prop("disabled", false);
             },
             error: function (e) {
                 console.log("ERROR : ", e);
                 $("#btnSubmit").prop("disabled", false);
                 alert("fail");
             }
         });
      });
    
	function fnTryValidation(){
	
		if (document.querySelector("#sTitle").value == ""){
			alert("제목을 입력해주세요.");
			document.querySelector("#sTitle").focus();
			return ;
		}		

		if (document.querySelector("#sContent").value ==""){
			alert("내용을 입력해주세요");
			document.querySelector("#sContent").focus();
			return ;
		}		

		fnTryWrite();	
	}
	
	function fnTryWrite(){
			
			var sTitle=document.getElementById("sTitle").value;
	   		var sContent=document.getElementById("sContent").value;
	   		var sEtc=document.getElementById("sEtc").value;
			var sGrade = 10;
			var sMem_id
			var sDiv = "B";
	   		
	   		var params = {
					sTitle : sTitle,
					sContent : sContent,
					sEtc : sEtc,
					sGrade : sGrade,
					sMem_id : sMem_id,
					sDiv : sDiv,
					sUrl :  '${pageContext.request.contextPath}/try01/writeTry.do'
				}
	   		
	   		$.ajax(
	           {
	               url : params.sUrl,
	               data : params,
	               method : 'post',
	               dataType : 'json',  
	               success : function(response){
                	   if(response.result > 0){
	                		   alert("저장 되었습니다.");
	                		   location.href="${pageContext.request.contextPath}/try01/try01_1.do";
	                		} else {
	                			alert("저장되지 않았습니다.");
	                		}
	                   },
	               error : function(xhr, status, error){
	                   alert("실패");        
	               }
	      		 });       
	       }		
	</script>
</body>
</html>