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
				<h2><img src="${pageContext.request.contextPath}/resources/images/sub01/sub01_02_title.png" alt="협의회 소식"></h2>
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
							<a href="#a" class="path_on"><span>협의회 소식</span><i class="caret"></i></a>
							<ul class="path_sub ps02">
								<li><a href="../sub01/sub01_2.html">협의회 소식</a></li>
								<li><a href="../sub01/sub01_3.html">협의회 주요일정</a></li>
							</ul>
						</li>
					</ul>
				</div>
				
				
			<!--con_wrap(ë°ëë ìì­)-->
				<div class="view clearfix con_wrap">
					<!--box_left-->
					<input type="text" name="sSeq" id="sSeq" style = "display:none  " value=<%=sSeq%>>
					<div class="box_left" >
					<span id="sContent"></span>						
						<p class="btn_likeORnot mrt50"><!--ê³µê°ë²í¼-->
							<a title="good" href="#none" class="likeORnot btn_like" onClick="fnComitteeGood()">
								<img src="${pageContext.request.contextPath}/resources/images/common/btn_like.png" >&nbsp;<span id="sGood"></span>
							</a>
							<a title="bad" href="#none" class="likeORnot btn_dislike" onClick="fnComitteeBad()">
								<img src="${pageContext.request.contextPath}/resources/images/common/btn_bad.png">&nbsp;<span id="sBad"></span>
							</a>
						</p>
						
						<div class="tac btn_same mrt50"><!--ë²í¼-->
							<a href="#none" class="btn_gray" onclick="fnComitteeDelete()">Delete</a>
							<a title="ëµë³ë¬ê¸°" href="../common/sub_reply.html" class="btn_sub01">Reply</a>
							<a title="ëª©ë¡" href="${pageContext.request.contextPath}/sub01/sub01_2.do" class="btn_border">List</a>
						</div>
					</div>
					<!--box_left End-->
					
					<!--box_right-->
					<div class="box_right">
						<h5>
							Latest<strong class="color_blue"></strong>
						</h5>
						<div class="sidelist-area">
							<ul id="ul01">						
							</ul>
						</div>
						<div class="paging"><!-- pagination -->
							<a class="noneborder pre" href="#none"><img src="${pageContext.request.contextPath}/resources/images/sub01/btn_paging_pre.png" alt="ì´ì íì´ì§" /></a>
							<a class="on" href="#none">1</a>
							<a href="#none">2</a>
							<a href="#none">3</a>
							<a class="noneborder next" href="#none"><img src="${pageContext.request.contextPath}/resources/images/sub01/btn_paging_next.png" alt="ë¤ìíì´ì§"/></a>
						</div><!-- pagination  End-->
					</div>
					<!--box_right End-->
				</div>
			<!--con_wrap(ë°ëë ìì­) End-->
			</div><!--inner End-->
		</div>		
	<!-- container End-->
	<!-- footer -->		
		<footer id="ft" class="inner clearfix bdtline">
			<div class="fl">
				<h1 class="fl"><img src="${pageContext.request.contextPath}/resources/images/common/logo_ft.png" alt="ì¼ì±ë¬¼ì°" /></h1>
				<address class="fl">Copyright 2017 SAMSUNG C&amp;T CORPORATION. All Rights Reserved.</address>
			</div>
			<a href="../sub05_etc/sub05_sitemap.html" class="fr">Sitemap</a>
		</footer>
	<!-- footer End-->
	</div>
	<script>    
       function fnComitteeView(){
    	   
       var sSeq = document.getElementById("sSeq").value;   
       
	       $.ajax(
	            {
	                url : '${pageContext.request.contextPath}/sub01/viewComittee.do',
	                data : "sSeq="+sSeq,               
	                method : 'post',
	                dataType : 'json',
	                success : function(response){
	                  
	                    var str=response;
	                  
						document.getElementById("sContent").innerHTML=response.CONTENT,
						document.getElementById("sGood").innerHTML=response.GOOD,
						document.getElementById("sBad").innerHTML=response.BAD

	                },
	                error : function(xhr, status, error){
	                    alert("실패");           // 에러코드(404, 500 등)
	                    alert(xhr.responseText); // html 포맷의 에러 메시지
	                    alert(status);                // 'error'
	                    alert(error);                 // 'Not Found'
	                }
       			});
       		}
       
       function fnComitteeDelete(){
    	   
           var sSeq = document.getElementById("sSeq").value;   
           
           $.ajax(
                {
                    url : '${pageContext.request.contextPath}/sub01/deleteComittee.do',
                    data : "sSeq="+sSeq,               
                    method : 'post',
                    dataType : 'json',  
                    success : function(response){
                      
                        var str=response;  
                        
                        if(response.result > 0){
							alert("삭제 되었습니다.");
							location.href="${pageContext.request.contextPath}/sub01/sub01_2.do";
						} else {
							alert("삭제되지 않았습니다.");
							}
					},
                    error : function(xhr, status, error){
                        alert("실패");           // 에러코드(404, 500 등)
                        //alert(xhr.responseText); // html 포맷의 에러 메시지
                        //alert(status);                // 'error'
                        //alert(error);                 // 'Not Found'
                    }
            	});
           }
       
       function fnComitteeList(){

        $.ajax(
            {
                url : '${pageContext.request.contextPath}/sub01/listComittee.do',
                data :"sTitle=", 
                method : 'post',
                dataType : 'json',
                success : function(response){
    	
                    var objData = response;

                    var str="";
               
                    for (var i=0;i<objData.result.length;i++){

                     		str +="<li><a href='${pageContext.request.contextPath}/sub01/sub01_2_view.do?sSeq="+objData.result[i].SEQ+"'>"+objData.result[i].TITLE+"</a><span class='color_blue'>[0]</span><div class='meta'><i class='icon-view'></i>"+objData.result[i].CNT+"<i class='split'></i>"+objData.result[i].REGDATE+"</div></li>";
                    }
	                 	
                    	$("#ul01").append(str);
                },
                error : function(xhr, status, error){
                    alert("실패");           // 에러코드(404, 500 등)
                    alert(xhr.responseText); // html 포맷의 에러 메시지
                    alert(status);                // 'error'
                    alert(error);                 // 'Not Found'
                }
	        });
	       }

  		function fnComitteeGood(){
    	   
           var sSeq = document.getElementById("sSeq").value;
           
           $.ajax(
                {
                    url : '/demo5/comitteeGood',
                    data : "sSeq="+sSeq,               
                    method : 'post',
                    dataType : 'json',  
                    success : function(response){
                      
                        var str=response; 
                        
                        document.getElementById("sGood").innerHTML=response.good,
						document.getElementById("sBad").innerHTML=response.bad;
						
						alert('참여해 주셔서 감사합니다.')
                    },
                    error : function(xhr, status, error){
                        alert("실패");           // 에러코드(404, 500 등)
                        //alert(xhr.responseText); // html 포맷의 에러 메시지
                        //alert(status);                // 'error'
                        //alert(error);                 // 'Not Found'
                    }
            	});
           }
  
 	 function fnComitteeBad(){
	   
	      var sSeq = document.getElementById("sSeq").value;
	      
	      $.ajax(
	           {
	               url : '/demo5/comitteeBad',
	               data : "sSeq="+sSeq,               
	               method : 'post',
	               dataType : 'json',  
	               success : function(response){
	                 
	                   var str=response; 
	                   
	                   document.getElementById("sGood").innerHTML=response.good,
						document.getElementById("sBad").innerHTML=response.bad;
						
						alert('참여해 주셔서 감사합니다.')
	               },
	               error : function(xhr, status, error){
	                   alert("실패");           // 에러코드(404, 500 등)
	                   //alert(xhr.responseText); // html 포맷의 에러 메시지
	                   //alert(status);                // 'error'
	                   //alert(error);                 // 'Not Found'
	               }
	       	});
	      }
	       
       //함수 호출
       fnComitteeView();
       fnComitteeList(); 
        </script> 
</body>
</html>