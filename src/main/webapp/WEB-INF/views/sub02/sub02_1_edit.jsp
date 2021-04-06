<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String sPseq = request.getParameter("sPseq");	
	String sSeq = request.getParameter("sSeq");
%>

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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/sub02.css">
    <!--script-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    <script>
		$(function(){
			/*nav gnb*/
			$("nav").hover(function(){
				$(".txt_2depth").css("display","block");
				$(".bg_2depth").css("display","block");
			},function(){
				$(".txt_2depth").css("display","none");
				$(".bg_2depth").css("display","none");
			});
			
			$(".bg_2depth").hover(function(){
				$(".txt_2depth").css("display","block");
				$(".bg_2depth").css("display","block");
			},function(){
				$(".txt_2depth").css("display","none");
				$(".bg_2depth").css("display","none");
			});
			/*버튼 reply */
			$(".btn_sm_blue").click(function(){
				$(".reply_write").css("display","block");
			});
			$(".btn_sm_gray").click(function(){
				$(".reply_write").css("display","none");
			});
			/*경로*/
			$(".path_1depth01").hover(function(){
				$(".ps01").css("display","block");
			},function(){
				$(".ps01").css("display","none");
			});
			$(".path_1depth02").hover(function(){
				$(".ps02").css("display","block");
			},function(){
				$(".ps02").css("display","none");
			});
		});
	</script>
</head>
<body>
	<a href="#contents" class="skip">본문바로가기</a>
	<div id="wrap">
	<!-- header -->
			<%@include file = "../include/header.jsp" %>	
	<!-- header End-->
	
	
	<!-- container -->
		<div id="container">
			<!-- visual-->
			<div class="sub_visual sub02_01_bg">
				<h2><img src="${pageContext.request.contextPath}/resources/images/sub02/sub02_01_title.png" alt="우리들의 VOC"></h2>
			</div>
			
			<div class="inner sub_inner">
				<div><!--경로-->
					<ul class="path_top">
						<li>
							<a href="../main/index.html">
								<i class="icon_home"><img src="${pageContext.request.contextPath}/resources/images/sub01/btn_path_home.png" alt="메인으로 가기 버튼"></i>
								Home
							</a>
						</li>
						<li class="path_1depth01">
							<a href="#a" class="path_on"><span>About 협의회</span><i class="caret"></i></a>
							<ul class="path_sub ps01">
								<li><a href="../sub01/sub01_6.html">About 협의회</a></li>
								<li><a href="../sub01/sub01_2.html">협의회 소식</a></li>
								<li><a href="../sub02/sub02_1.html">고충처리</a></li>
								<li><a href="../sub03/sub03_1.html">소통마당</a></li>
							</ul>
						</li>
						<li class="path_1depth02">
							<a href="#a" class="path_on"><span>고충처리</span><i class="caret"></i></a>
							<ul class="path_sub ps02">
								<li><a href="../sub02/sub02_1.html">우리들의 VOC</a></li>
								<li><a href="../sub02/sub02_3.html">VOC 개선 우수사례</a></li>
								<li><a href="../sub02/sub02_4.html">상담센터(법률)</a></li>
							</ul>
						</li>
					</ul>
				</div>
				
			<!--con_wrap(바뀌는 영역)-->
				<div class="con_wrap clearfix">
				<input type="text" name="sSeq" id="sSeq" style = "display:none  " value=<%=sSeq%>>
				<input type="text" name="sPseq" id="sPseq" style = "display:none  " value=<%=sPseq%>>
				
				<!--오른쪽 게시판 영역--> 
					<div><!--190213 class삭제-->
						<div class="table"><!--테이블-->
							<table class="tb04">
								<caption class="hide">게시판 글쓰기</caption>
								<colgroup>
									<col style="width:16%;">
									<col style="width:*;">
								</colgroup>
								<tbody>
									<tr>
										<!--<th scope="col"><span class="color_red">*</span>Title</th>-->
										<th>	<input type="text"" id="sTitle"></th>
</th>
									</tr>
									<tr>
										<td class="sm_text">
											<div>
												<span id="sWriter"></span><i class="split"></i>
												<span id="sRegdate"></span><i class="split"></i>
												<span>
													<img src="${pageContext.request.contextPath}/resources/images/common/icon_eye.png" alt="조회수 카운트" >&nbsp;<i id="sCnt" style="padding-right:700px"></i>
												</span>	
												<span id="sStatus"  class="status st_sty01"></span>											
											</div>	
												
										</td>
									</tr>
									<tr>
										<td>
											<textarea id="sContent" style="width:1000px; height:100px; resize:none;" ></textarea>
										</td>
									</tr>
								</tbody>
							</table>
						</div><!--table-->
						
						<!--관리자 답변-->
						<div class="manager_reply w100">
							<ul id="ul02">
								
							</ul>
						</div>
						<!--관리자 답변 End-->						
						<div class="tac btn_same mrt50"><!--버튼-->
								<a href="#none" class="btn_sub02" onclick="fnVocEdit()">Save</a>
							<a title="목록" href="${pageContext.request.contextPath}/sub02/sub02_1.do" class="btn_border">List</a>
						</div>				
					<!--box_left End-->
						</div>					

			<!--con_wrap(바뀌는 영역) End-->
			</div><!--inner End-->
		</div>			
	<!-- container End-->
	
	
	<!-- footer -->		
		<%@include file = "../include/footer.jsp" %>
	<!-- footer End-->
	</div>
			<script>    
       function fnVocView(){
    	   
       var sSeq = document.getElementById("sSeq").value;   
       
	       $.ajax(
	            {
	                url : '${pageContext.request.contextPath}/sub02/viewVoc.do',
	                data : "sSeq="+sSeq,               
	                method : 'post',
	                dataType : 'json',  
	                success : function(response){
	                  
	                    var str=response;
	                  
	                    document.getElementById("sTitle").value=response.title;
	                    document.getElementById("sContent").innerHTML=response.content;
						document.getElementById("sStatus").innerHTML=response.status
						document.getElementById("sCnt").innerHTML=response.cnt
						document.getElementById("sWriter").innerHTML=response.writer
						document.getElementById("sRegdate").innerHTML=response.regdate

	                },
	                error : function(xhr, status, error){
	                    alert("실패");           // 에러코드(404, 500 등)
	                    alert(xhr.responseText); // html 포맷의 에러 메시지
	                    alert(status);                // 'error'
	                    alert(error);                 // 'Not Found'
	                }
       			});
       		}

       function fnVocEdit(){
     		
     		var sSeq=document.getElementById("sSeq").value;
     		var sPseq=document.getElementById("sPseq").value;
	   	 	var sTitle = document.getElementById("sTitle").value;
		   	var sContent=document.getElementById("sContent").value;

   	   $.ajax(
           {
               url : '${pageContext.request.contextPath}/sub02/editVoc.do',
               data : "sSeq="+sSeq+"&sPseq="+sPseq+"&sTitle="+sTitle+"&sContent="+sContent,       
               method : 'post',
               dataType : 'json',  
               success : function(response){
                 
					{
						alert(response.result);
               		alert("수정되었습니다.");
                     	location.href="${pageContext.request.contextPath}/sub02/sub02_1.do";
               	}
               },
               error : function(xhr, status, error){
                   alert("실패");
               }
      		 });       
       }	
       //함수 호출
       fnVocView();
        </script>
</body>
</html>