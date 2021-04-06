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
	<a href="#contents" class="skip">본문바로가기</a>
	<div id="wrap">
	<!-- header -->
			<%@include file = "../include/header.jsp" %>

	<!-- header End-->
	
	
	<!-- container -->
		<div id="container">
			<!-- visual-->
			<div class="sub_visual sub03_01_bg">
				<h2><img src="${pageContext.request.contextPath}/resources/images/sub03/sub03_01_title.png" alt="삼건협의회가 간다"></h2>
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
								<li><a href="../sub01/sub01_6.jsp">About 협의회</a></li>
								<li><a href="../sub01/sub01_2.jsp">협의회 소식</a></li>
								<li><a href="../sub02/sub02_1.jsp">고충처리</a></li>
								<li><a href="../sub03/sub03_1.jsp">소통마당</a></li>
							</ul>
						</li>
						<li class="path_1depth02">
							<a href="#a" class="path_on"><span>소통마당</span><i class="caret"></i></a>
							<ul class="path_sub ps02">
								<li><a href="../sub03/sub03_1.jsp">삼건협의회가 간다</a></li>
								<li><a href="../sub03/sub03_2.jsp">POLL</a></li>
								<li><a href="../sub04/sub04_1.jsp">리조트/휴양소/행사</a></li>
								<li><a href="../sub04/sub04_2.jsp">통근버스</a></li>
							</ul>
						</li>
					</ul>
				</div>
				
			<!--con_wrap(바뀌는 영역)-->
				<div class="con_wrap">
				<!--게시판 영역-->
					<div>
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
										<td><input type="text" id="sTitle"></td>
									</tr>
									<tr>
										<th scope="col">Status</th>
										<td class="sel_status">
											<select>
												<option>접수</option>
												<option>보류</option>
												<option>답변완료</option>
												<option>방문완료</option>
											</select>
										</td>
									</tr>
									<tr>
										<th scope="col">Select (초청위원)</th>
										<td class="choice_name">
											<div>
												<input type="checkbox" id="name01"><label for="name01">위원: 홍길동 선임</label>
												<input type="checkbox" id="name02"><label for="name02">부대표: 임혁준 선임</label>
												<input type="checkbox" id="name03"><label for="name03">위원: 김계열 선임</label>
												<input type="checkbox" id="name04"><label for="name04">위원: 홍길동 선임</label>
												<input type="checkbox" id="name05"><label for="name05">위원: 김유경 선임</label>
											</div>
											<div>
												<input type="checkbox" id="name06"><label for="name06">위원: 이정성 선임</label>
												<input type="checkbox" id="name07"><label for="name07">위원: 홍길동 선임</label>
												<input type="checkbox" id="name08"><label for="name08">위원: 조주종 선임</label>
												<input type="checkbox" id="name09"><label for="name09">위원: 최현규 선임</label>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="col">Video</th>
										<td><input type="text"></td>
									</tr>
									<tr>
										<th scope="col"><span class="color_red">*</span>text</th>
										<td><textarea rows="20" id="sContent"></textarea></td>
									</tr>
									<tr>
										<th scope="col">Video</th>
										<td><input type="text"></td>
									</tr>
									<tr>
										<th scope="col">Etc</th>
										<td class="color_red" id="sEtc">개발자님 첨부파일 에디터 넣어주세요.</td>
									</tr>
								</tbody>
							</table>
							<p class="fz14"><span class="color_red"  style="margin-right: 4px;">*</span>Required Input</p>
							
							<!--버튼-->
							<div class="tac btn_same">
								<a href="#none" class="btn_sub02" onclick="fnCouncilWrite()">Save</a>
								<a href="${pageContext.request.contextPath}/sub03/sub03_1.do" class="btn_border">List</a>
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
			function fnCouncilWrite(){
				
				var sTitle=document.getElementById("sTitle").value;
		   		var sContent=document.getElementById("sContent").value;
		   		var sEtc=document.getElementById("sEtc").value;
		   		
		   		$.ajax(
		           {
		               url : '${pageContext.request.contextPath}/sub03/writeCouncil.do',
		               data : "sTitle="+sTitle+"&sContent="+sContent+"&sEtc="+sEtc,
		               method : 'post',
		               dataType : 'json',  
		               success : function(response){
		                 		                
								{
		                		   alert("저장 되었습니다.");
		                		   location.href="${pageContext.request.contextPath}/sub03/sub03_1.do";
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