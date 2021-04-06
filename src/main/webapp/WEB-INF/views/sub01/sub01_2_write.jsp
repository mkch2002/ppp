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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
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
			/*ê²½ë¡*/
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
	<a href="#contents" class="skip">ë³¸ë¬¸ë°ë¡ê°ê¸°</a>
	<div id="wrap">
		<!-- header -->
		<%@include file = "../include/header.jsp" %>	
		<!-- header End-->
		
	<!-- container -->
		<div id="container">
			<!-- visual-->
			<div class="sub_visual sub01_02_bg">
				<h2><img src="${pageContext.request.contextPath}/resources/images/sub01/sub01_02_title.png" alt="íìí ìì"></h2>
			</div>
			
			<div class="inner">
				<div><!--ê²½ë¡-->
					<ul class="path_top">
						<li>
							<a href="../main/index.html">
								<i class="icon_home"><img src="${pageContext.request.contextPath}/resources/images/sub01/btn_path_home.png" alt="ë©ì¸ì¼ë¡ ê°ê¸° ë²í¼"></i>
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
							<a href="#a" class="path_on"><span>소통마당</span><i class="caret"></i></a>
							<ul class="path_sub ps02">
								<li><a href="../sub03/sub03_1.html">삼건협의회가 간다</a></li>
								<li><a href="../sub03/sub03_2.html">POLL</a></li>
								<li><a href="../sub04/sub04_1_list.jsp">리조트/휴양소/행사</a></li>
							</ul>
						</li>
					</ul>
				</div>
		
			<!--con_wrap(ë°ëë ìì­)-->
				<div class="view clearfix con_wrap">
					<!--ê²ìí ìì­-->
					<div>
						<div class="table"><!--íì´ë¸-->
							<table class="tb03 tb_sty02">
								<caption class="hide">게시판 글쓰기</caption>
								<colgroup>
									<col style="width:16%;">
									<col style="width:*;">
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
								</tbody>
							</table>
							<p class="fz14"><span class="color_red"  style="margin-right: 4px;">*</span>Required Input</p>
							
							<div class="tac btn_same"><!--ë²í¼-->
								<a href="#none" class="btn_sub01" onclick="fnNewsValidation()">Save</a>
								<a href="${pageContext.request.contextPath}/sub01/sub01_2.do" class="btn_border">List</a>
							</div>
						</div><!--table-->
					</div>
				<!--ê²ìí ìì­ End-->	
				</div>
			<!--con_wrap(ë°ëë ìì­) End-->			
			
			</div><!--inner End-->
		</div>		
	<!-- container End-->
	<!-- footer -->		
		<%@include file = "../include/footer.jsp" %>
	<!-- footer End-->
	</div>
		<script>
	function fnNewsValidation(){
	
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
		
		//저장하기 함수호출
		fnComitteeWrite();	
	}
	
	function fnComitteeWrite(){
			
			var sTitle=document.getElementById("sTitle").value;
	   		var sContent=document.getElementById("sContent").value;
	   		
	   		$.ajax(
	           {
	               url : '${pageContext.request.contextPath}/sub01/writeComittee.do',
	               data : "sTitle="+sTitle+"&sContent="+sContent,
	               method : 'post',
	               dataType : 'json',  
	               success : function(response){	                 

						if(response.result > 0){
							alert("저장 되었습니다.");
							location.href="${pageContext.request.contextPath}/sub01/sub01_2.do";
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