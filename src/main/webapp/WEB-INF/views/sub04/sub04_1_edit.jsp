<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/sub03.css">
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
	<div id="wrap">
	<!-- header-->	
	<%@include file = "../include/header.jsp" %>	
	<!-- header End-->	
	
	
	<!-- container -->
		<div id="container">
			<!-- visual-->
			<div class="sub_visual sub04_01_bg">
				<h2><img src="${pageContext.request.contextPath}/resources/images/sub04/sub04_01_title.png" alt="리조트/휴양소/행사"></h2>
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
							<a href="#a" class="path_on"><span>소통마당</span><i class="caret"></i></a>
							<ul class="path_sub ps02">
								<li><a href="../sub03/sub03_1.html">삼건협의회가 간다</a></li>
								<li><a href="../sub03/sub03_2.html">POLL</a></li>
								<li><a href="../sub04/sub04_1_list.jsp">리조트/휴양소/행사</a></li>
							</ul>
						</li>
					</ul>
				</div>
				
			<!--con_wrap(바뀌는 영역)-->
				<div class="con_wrap">
				<!--게시판 영역-->
					<div>
					<input type="text" name="sSeq" id="sSeq" style = "display:none " value=<%=sSeq%>>
						<div class="table"><!--테이블-->
							<table class="tb03 tb_sty02">
								<caption class="hide">게시판 글쓰기</caption>
								<colgroup>
									<col style="width:16%;">
									<col style="width:*;">
								</colgroup>
								<tbody>
									<tr>
										<th scope="col"><span class="color_red">*</span>Title</th>
										<td><input type="text" id="sTitle" ></td>
									</tr>
									<tr>
										<th scope="col"><span class="color_red">*</span>text</th>
										<td><textarea rows="20" class="color_red" id="sContent"></textarea></td>
									</tr>
									<tr>
										<th scope="col">etc</th>
										<td class="color_red"><input type="text" placeholder="개발자님 첨부파일 에디터 넣어주세요." id="sEtc"></td>
									</tr>
								</tbody>
							</table>
							<p class="fz14"><span class="color_red"  style="margin-right: 4px;">*</span>Required Input</p>
							
							<!--버튼-->
							<div class="tac btn_same">
								<a href="#none" class="btn_sub02" onclick="fnEdit()">Save</a>
								<a href="${pageContext.request.contextPath}/sub04/sub04_1.do" class="btn_border">List</a>
							</div>
						</div><!--table-->
					</div>
				<!--오른쪽 게시판 영역 End-->	
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
	function fnView(){
		   
	    var sSeq = document.getElementById("sSeq").value;   
	    
	    $.ajax(
	         {
	             url : '${pageContext.request.contextPath}/sub04/viewJoin.do',
	             data : "sSeq="+sSeq,               
	             method : 'post',
	             dataType : 'json',  
	             success : function(response){
	               
	                 var str=response;
	                 	                 
					document.getElementById("sSeq").value=response.seq;
					document.getElementById("sTitle").value=response.title;
					document.getElementById("sContent").innerHTML=response.content;
					document.getElementById("sEtc").value=response.etc;
	                 
	             },
	             error : function(xhr, status, error){
	                 alert("error");
	             }
	     });
	    }
    
    	function fnEdit(){
      		
      		var sSeq=document.getElementById("sSeq").value;
	   	 	var sTitle = document.getElementById("sTitle").value;
		   	var sContent=document.getElementById("sContent").value;
			var sEtc=document.getElementById("sEtc").value;

    	   $.ajax(
            {
                url : '${pageContext.request.contextPath}/sub04/editJoin.do',
                data : "sSeq="+sSeq+"&sTitle="+sTitle+"&sContent="+sContent+"&sEtc="+sEtc,       
                method : 'post',
                dataType : 'json',  
                success : function(response){
                  
                	if(response.result > 0){
                		alert("수정되었습니다.");
                        location.href="${pageContext.request.contextPath}/sub04/sub04_1.do";
                	} else {
                		alert("수정되지 않았습니다.")
                	}
                    

                },
                error : function(xhr, status, error){
                    alert("실패");
                }
       		 });       
        }	
    	
    	fnView();
</script>	
</body>
</html>