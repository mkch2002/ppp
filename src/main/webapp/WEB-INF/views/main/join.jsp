<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String sUrl =request.getParameter("sUrl"); %>

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
<title>sign</title>
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
</head>
<body>
				<%@include file = "../include/header.jsp" %>	
		
		<div style="margin:0 auto;width:50%">
		<h1 style="text-alilgn:center">회원가입</h1>
		이름:<input type="text" id="sName" ><br>
		아이디:<input type="text" id="sId"> <input type="button" value="아이디 중복 확인" onclick="fnCompareId()"><span id="note1"></span><br>
		비밀번호:<input type="password" id="sPw1"><br>
		비밀번호 확인:<input type="password" id="sPw2"><br>
		이메일:<input type="text" id="sEmail1">@<input type="text" id="sEmail2">
		<select id="sEmail3" onchange ="fnChange()">
		    <option value="" selected="selected">메일주소 선택</option>
		    <option value="daum.net">daum.net</option>
		    <option value="naver.com">naver.com</option>
		</select><br>
		연락처:<input type="text" style="width:50px;" id="sPhone1"   maxlength="3" onkeypress="fnKeypress1()">-<input type="text" style="width:50px;" id="sPhone2"   maxlength="4" onkeypress=fnKeypress2()>-
		<input type="text" style="width:50px" id="sPhone3" maxlength="4"><br>
		우편번호:<input type="text"  id="sZip" > <input type="button" value="주소검색" onclick = "fnPopupId()"><br>
		주소:<input type="text" style="width:400px;" id="sAddress1"><br>
		<input type="text" style="width:100px;margin-left:35px;" id="sAddress2"><br>
		<input type="button" value="저장하기" onclick="fnWrite()"><input type="button" value="목록으로" onclick="location.href='../main/login.jsp?sUrl='+location.pathname">	
	</div>	
	<%@ include file="../include/footer.jsp" %>
	<script>
	function fnValidation(){
		if (document.querySelector("#sName").value == ""){
			alert("이름을 확인해주세요.");
			document.querySelector("#sName").focus();
			return ;
		}
		
		if (document.querySelector("#sId").value == ""){
			alert("아이디를 확인해주세요.");
			document.querySelector("#sId").focus();
			return ;
		}
		
		if (document.querySelector("#sPw1").value == ""){
			alert("비밀번호를 확인해주세요");
			document.querySelector("#sPw1").focus();
			return ;
		}
		
		if(document.querySelector("#sPw1").value.length < 8 || document.querySelector("#sPw1").value.length > 20){
			alert("비밀번호는 8자에서 20자 사이로 입력해주세요");
			return ;
		}
		
		if (document.querySelector("#sPw1").value != document.querySelector("#sPw2").value){
			alert("비밀번호가 같은지 확인해주세요");
			document.querySelector("#sPw2").focus();
			return ;
		}
			
		if (document.querySelector("#sEmail1").value == ""){
			alert("이메일을 확인해주세요");
			document.querySelector("#sEmail1").focus();
			return ;
		}
		
		if (document.querySelector("#sEmail2").value == ""){
			alert("도메인을 확인해주세요");
			document.querySelector("#sEmail2").focus();
			return ;
		}	
		
		if (document.querySelector("#sPhone1").value ==""){
			alert("핸드폰 번호를 확인해주세요");
			document.querySelector("#sPhone1").focus();
			return ;
		}
		
		if (document.querySelector("#sPhone2").value ==""){
			alert("핸드폰 번호를 확인해주세요");
			document.querySelector("#sPhone2").focus();
			return ;
		}
		
		if (document.querySelector("#sPhone3").value ==""){
			alert("핸드폰 번호를 확인해주세요");
			document.querySelector("#sPhone3").focus();
			return ;
		}
		
		if(document.querySelector("#sZip").value == ""){
			alert("우편번호를 적어주세요")
			document.querySelector("#sZip").focus();
		}
		
		if(document.querySelector("#sAddress1").value == ""){
			alert("주소를 적어주세요")
			document.querySelector("#sAddress1").focus();
		}
		
		if(document.querySelector("#sAddress2").value == ""){
			alert("상세주소를 적어주세요")
			document.querySelector("#sAddress2").focus();
		}
		fnWrite();	
	}
	
	function fnWrite(){
			
      		var sPw=document.getElementById("sPw1").value;
      		var sName=document.getElementById("sName").value;
	   	   	var sId=document.getElementById("sId").value;
	   	 	var sEmail=document.querySelector("#sEmail1").value + "@" + document.querySelector("#sEmail2").value;
	   		var sPhone=document.querySelector("#sPhone1").value +  "-"  + document.querySelector("#sPhone2").value + "-" + document.querySelector("#sPhone3").value;
	   		var sZip=document.getElementById("sZip").value;
	   		var sAddress=document.getElementById("sAddress1").value +" "+ document.getElementById("sAddress2").value;
	   		
	   		$.ajax(
            {
                url : '/demo5/sign',
                data : "sName="+sName+"&sId="+sId+"&sPw="+sPw+"&sEmail="+sEmail+"&sPhone="+sPhone+"&sZip="+sZip+"&sAddress="+sAddress,
                method : 'post',
                dataType : 'json',  
                success : function(response){

                   if(response.data.msg == "" ){
                	   location.href='../main/login.jsp?sUrl='+location.pathname;
                   }else{
                	   alert(response.data.msg );
                   }

                },
                error : function(xhr, status, error){
                    alert("실패");        
                    //alert(xhr.responseText); 
                    //alert(status);     
                }
       		 });       
        }
	
	function fnChange(){

		document.querySelector("#sEmail2").value = document.getElementById("sEmail3").options[document.getElementById("sEmail3").selectedIndex].value;
	
	}
	var myWindow;
	function fnPopupId() {
		  myWindow = window.open("popup_id.jsp", "", "width=400,height=400");
		}
	
	function fnKeypress1() {
		if(document.querySelector("#sPhone1").value.length >= 2){
			document.querySelector("#sPhone2").focus()
		}
	}
	
	function fnKeypress2() {
		if(document.querySelector("#sPhone2").value.length >=3) {
			document.querySelector("#sPhone3").focus()
		}
	}
	
	function fnCompareId(){
		var sId = document.querySelector("#sId").value;
		
			$.ajax(
	            {
	                url : '/demo5/signCompare',
	                data : "sId="+sId,
	                method : 'post',
	                dataType : 'json',  
	                success : function(response){

	                   if(response.result[0].cnt == "0" ){
	                	   alert("사용할수 있는 아이디 입니다.");
	                   }else{
	                	   alert("사용할수 없는 아이디 입니다.");
	                	   document.querySelector("#sId").focus();
	                   }
	                },
	                error : function(xhr, status, error){
	                    alert("실패");        
	                    //alert(xhr.responseText); 
	                    //alert(status);     
	                }
	       		 });
	}
	</script>
</body>