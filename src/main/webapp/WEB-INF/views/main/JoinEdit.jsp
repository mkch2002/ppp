<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%
	String sSeq = request.getParameter("sSeq");
%>
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
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
	</head>
	<body>
		<%@ include file="../include/header.jsp" %>
		<div style="margin:0 auto;width:50%">
			<h2>수정하기</h2>		<input type="text" name="sSeq" id="sSeq" style = "display:none " value=<%=sSeq%>>
			<input type="button" value="보기" onclick="fnEdit()" style="display:none;">
			<ol start="1">
			<li>ID:<input type="text" id="sId" ></li>
			<li>Name:<input type="text" id="sName"></li>
			<li>Password:<input type="text" id="sPw"></li>
			<li>Email:<input type="text" id="sEmail1" >@<input type="text" id="sEmail2" style="width:200px"></li>
			<li>Phone:<input type="text" id="sPhone1" style="width:45px"> - <input type="text" id="sPhone2" style="width:45px"> - <input type="text" id="sPhone3" style="width:45px"></li>
			<li>ZIP:<input type="text" id="sZip"></li>
			<li>Address:<input type="text" id="sAddress1"> <input type="text" id="sAddress2"></li>
		</ol>
			
			<input type="button" value="저장" onclick="fnEdit()">
			
			<a href="JoinList.jsp"><input type="button" value="목록으로"></a>
		</div>	
		<%@ include file="../include/footer.jsp" %>
<script>
	function fnView(){
		   
	    var sSeq = document.getElementById("sSeq").value;   
	    
	    $.ajax(
	         {
	             url : '/demo5/signView',
	             data : "sSeq="+sSeq,               
	             method : 'post',
	             dataType : 'json',  
	             success : function(response){
	               
	                 var str=response;
	                 
	                 var tPhone=str.result[0].Phone;
	                 var aPhone = new Array();	                
	                 if(tPhone !=undefined && tPhone != "" && tPhone.indexOf("-") > -1){
	                	 aPhone=tPhone.split("-");	                	 
	                 }else{
	                	 aPhone[0]="";
	                	 aPhone[1]="";
	                	 aPhone[2]="";
	                 }
	                 
	                 var tEmail = str.result[0].Email;
	                 var aEmail = new Array();
	                 if(tEmail != undefined && tEmail != "" && tEmail.indexOf("@") >-1 ){
	                	 aEmail = tEmail.split("@");
	                 }else{
	                	aEmail[0] = "";
	                	aEmail[1] = "";
	                 }
	                 
	                 var tAddress = str.result[0].Address;
	                 var aAddress = new Array();
	                 if(tAddress != undefined && tAddress != "" && tAddress.indexOf(" ") > -1){
	                	 aAddress = tAddress.split(" ");
	                 }else{
	                	aAddress[0] = "";
	                	aAddress[1] = "";
	                 }
	                 	                 
	                 document.getElementById("sId").value=str.result[0].ID;
	                 document.getElementById("sName").value=str.result[0].NAME;
	                 document.getElementById("sPw").value=str.result[0].PASSWORD;
	                 document.getElementById("sEmail1").value=aEmail[0];
	                 document.getElementById("sEmail2").value=aEmail[1];
	                 document.getElementById("sPhone1").value=aPhone[0];
	                 document.getElementById("sPhone2").value=aPhone[1];
	                 document.getElementById("sPhone3").value=aPhone[2];
	                 document.getElementById("sZip").value=str.result[0].Zip;	
	                 document.getElementById("sAddress1").value=aAddress[0];
	                 document.getElementById("sAddress2").value=aAddress[1];
	                 
	             },
	             error : function(xhr, status, error){
	                 alert("error");
	             }
	     });
	    }
    
    	function fnEdit(){
      		var sSeq=document.getElementById("sSeq").value;
      		var sName=document.getElementById("sName").value;
      		var sId=document.getElementById("sId").value;
	   	   	var sPw=document.getElementById("sPw").value;
	   	 	var sEmail=document.getElementById("sEmail1").value + "@" + document.getElementById("sEmail2").value;
	   	 	var sPhone = document.getElementById("sPhone1").value + "-" + document.getElementById("sPhone2").value + "-" + document.getElementById("sPhone3").value;
		   	var sZip=document.getElementById("sZip").value;
		   	var sAddress=document.getElementById("sAddress1").value + " " + document.getElementById("sAddress2").value;
    	   $.ajax(
            {
                url : '/demo5/signEdit',
                data : "sId="+sId+"&sName="+sName+"&sPw="+sPw+"&sEmail="+sEmail+"&sZip="+sZip+"&sAddress="+sAddress+"&sPhone="+sPhone+"&sSeq="+sSeq,              
                method : 'post',
                dataType : 'json',  
                success : function(response){
                  
                    alert("성공");
                    location.href="JoinList.jsp";

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