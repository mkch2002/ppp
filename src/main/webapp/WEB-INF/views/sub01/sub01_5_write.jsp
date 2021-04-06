<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="ì¼ê±´íìí">
    <meta name="keywords" content="ì¼ê±´íìí ë¦¬ë´ì¼ 2019">
    <meta name="description" content="ì¼ì±ë¬¼ì°,ì¼ê±´íìí,ì§ìì´ ë¨¼ì ë¤">
    <title>ì¼ê±´íìí</title>
    
    <!--css style-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/sub01.css">
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
			<div class="sub_visual sub01_05_bg">
				<h2><img src="${pageContext.request.contextPath}/resources/images/sub01/sub01_05_title.png" alt="ì­ëìì"></h2>
			</div>
			
			<div class="inner sub_inner">
				<div><!--ê²½ë¡-->
					<ul class="path_top">
						<li>
							<a href="../main/index.html">
								<i class="icon_home"><img src="${pageContext.request.contextPath}/resources/images/sub01/btn_path_home.png" alt="ë©ì¸ì¼ë¡ ê°ê¸° ë²í¼"></i>
								Home
							</a>
						</li>
						<li class="path_1depth01">
							<a href="#a" class="path_on"><span>About íìí</span><i class="caret"></i></a>
							<ul class="path_sub ps01">
								<li><a href="../sub01/sub01_6.html">About íìí</a></li>
								<li><a href="../sub01/sub01_2.html">íìí ìì</a></li>
								<li><a href="../sub02/sub02_1.html">ê³ ì¶©ì²ë¦¬</a></li>
								<li><a href="../sub03/sub03_1.html">ìíµë§ë¹</a></li>
							</ul>
						</li>
						<li class="path_1depth02">
							<a href="#a" class="path_on"><span>ê³µì§ì¬í­</span><i class="caret"></i></a>
							<ul class="path_sub ps02">
								<li><a href="../sub01/sub01_6.html">ì ê±° ê·ì½</a></li>
								<li><a href="../sub01/sub01_4.html">ì´ì ê·ì </a></li>
								<li><a href="../sub01/sub01_5.html">ì­ë ìì</a></li>
							</ul>
						</li>
					</ul>
				</div>
		
			<!--con_wrap(ë°ëë ìì­)-->
				<div class="con_wrap">
				<!--ì¤ë¥¸ìª½ ê²ìí ìì­-->
					<div>
						<div class="table"><!--íì´ë¸-->
							<table class="tb03 tb_sty02">
								<caption class="hide">ê²ìí ê¸ì°ê¸°</caption>
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
										<th scope="col"><span class="color_red">*</span >Text</th>
										<td><textarea rows="24" placeholder="ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ" id="sContent" ></textarea></td>
									</tr>
									<tr>
										<th scope="col">File</th>
										<td class="color_red"></td>
									</tr>
								</tbody>
							</table>
							<p class="fz14"><span class="color_red"  style="margin-right: 4px;">*</span>Required Input</p>
							
							<div class="tac btn_same"><!--ë²í¼-->
								<a href="#none" class="btn_sub02" onclick="fnHistoryValidation()">Save</a>
								<a href="${pageContext.request.contextPath}/sub01/sub01_5.do" class="btn_border">List</a>
							</div>
						</div><!--table-->
					</div>
				<!--ì¤ë¥¸ìª½ ê²ìí ìì­ End-->	
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
	function fnHistoryValidation(){
	
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
		fnHistoryWrite();	
	}
	
	function fnHistoryWrite(){
			
			var sTitle=document.getElementById("sTitle").value;
	   		var sContent=document.getElementById("sContent").value;
	   		
	   		$.ajax(
	           {
	               url : '${pageContext.request.contextPath}/sub01/writeHistory.do',
	               data : "sTitle="+sTitle+"&sContent="+sContent,
	               method : 'post',
	               dataType : 'json',  
	               success : function(response){
	                 
	            	   if(response.data == "" ){
							if(response.result > 0){
	                		   alert("저장 되었습니다.");
	                		   location.href="${pageContext.request.contextPath}/sub01/sub01_5.do";
	                		} else {
	                			alert("저장되지 않았습니다.");
	                		}
	                   } else {
	               				alert(response.data.msg );
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