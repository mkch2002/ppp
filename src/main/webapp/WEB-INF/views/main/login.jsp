<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String sUrl =request.getParameter("sUrl"); %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="삼건협의회">
    <meta name="keywords" content="삼건협의회 리뉴얼 2019">
    <meta name="description" content="삼성물산,삼건협의회,직원이 먼저다">
    <title>삼건협의회</title>
    
    <!--css style-->
    <link rel="stylesheet" type="text/css" href="../../css/common.css">
    <link rel="stylesheet" type="text/css" href="../../css/sub02.css">
   
    <!--script-->
    <script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
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
			/*ë²í¼ reply */
			$(".btn_sm_blue").click(function(){
				$(".reply_write").css("display","block");
			});
			$(".btn_sm_gray").click(function(){
				$(".reply_write").css("display","none");
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
<title>login</title>
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
</head>
<body>
		<%@include file = "../include/header.jsp" %>	
		<br><br><br>
	<div style="margin:0 auto; width:300px">
		<table border="1px" style="text-align:center">
			<tr>
				<td>아이디:</td><td><input type="text" id="sId"></td>
			</tr>
			<tr>
				<td>비밀번호:</td><td><input type="password" id="sPw"></td>
			</tr>
			<tr>
				<td colspan="2" ><input type="button" value="로그인"  onclick="fnLoginValidation()"></td>
			</tr>
		</table>
			<span class="h_name"><input type="button" value="회원가입" onclick="location.href='../main/join.jsp?sUrl='+location.pathname" style="cursor:pointer"></span> <br>
			
	</div>
	<script>
		function fnLoginValidation(){
			
			if (document.querySelector("#sId").value == ""){
				alert("아이디을 입력해주세요.");
				document.querySelector("#sTitle").focus();
				return ;
			}		
		
			if (document.querySelector("#sPw").value == ""){
				alert("비밀번호를 입력해주세요");
				document.querySelector("#sPw").focus();
				return ;
			}
			
			fnLogin();
		}
		
		function fnLogin(){	
			
			var sId=document.getElementById("sId").value;
			var sPw=document.getElementById("sPw").value;
			
		       $.ajax(
		            {
		                url : '/demo5/login',
		                data :"sId="+sId+"&sPw="+sPw,             
		                method : 'post',
		                dataType : 'json',  
		                success : function(response){
		                  
		                    var str=response;
		                    
		                    if(response.result == "OK"){
		                    	if("<%=sUrl %>"=="null"){
		                    	location.href="../sub02/sub02_4.jsp"
		                    	}else{
									location.href="<%=sUrl %>";
		                    	}
		                    } else {
		                		alert("로그인되지 않았습니다.")
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
		</script>
</body>
</html>