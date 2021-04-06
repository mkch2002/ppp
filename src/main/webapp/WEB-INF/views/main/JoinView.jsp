<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
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
<title>signView</title>
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
    </head>
    <body>
    	<div style="width:1000px;margin:0 auto;padding-left:200px;">	
						<input type="text"  id="sSeq" style = "display:none" value="<%=sSeq%>"><!--테이블-->
        <input type="button" value="상세보기" onclick="fnBoardView()" style = "display:none">
        
		<div style="border:1px solid black;">          
            <h2>상세보기</h2>
			<table border="1px" style="width:600px;">
				<tr>
					<th style="width:130px">이름:</th>
					<td><span id="name"></span></td>
				</tr>
				<tr>
					<th>아이디:</th>
					<td><span id="id"></span></td>
				</tr>
				<tr>	
					<th>비밀번호:</th>
					<td><span id="password"></span></td>
				</tr>
				<tr>
					<th>Email:</th>
					<td><span id="Email"></span></td>
				</tr>
				<tr>
					<th>Phone:</th>
					<td><span id="Phone"></span></td>
				</tr>
				<tr>
					<th>Zip:</th>
					<td><span id="Zip"></span></td>
				</tr>
				<tr>
					<th>Adress:</th>
					<td><span id="Adress"></span></td>
				</tr>
			</table>	
        </div>
        <a href="JoinList.jsp"><input type="button" value="리스트로"></a> <input type="button" value="삭제" onclick="fnBoardDelete()">
        <a href="JoinEdit.jsp?sSeq=<%=sSeq%>"><input type="button" value="수정"></a>
        </div>
        <%@ include file="../include/footer.jsp" %>
        <script>    
       function fnBoardView(){
    	   
       var sSeq = document.getElementById("sSeq").value;   
       
	       $.ajax(
	            {
	                url : '/demo5/signView',
	                data : "sSeq="+sSeq,               
	                method : 'post',
	                dataType : 'json',  
	                success : function(response){
	                  
	                    var str=response;
	                  
	                    document.getElementById("name").innerHTML=str.result[0].NAME;
	                    document.getElementById("id").innerHTML=str.result[0].ID;
	                    document.getElementById("password").innerHTML=str.result[0].PASSWORD;
	                    document.getElementById("Email").innerHTML=str.result[0].Email;
						document.getElementById("Phone").innerHTML=str.result[0].Phone,
						document.getElementById("Adress").innerHTML=str.result[0].Adress,
						document.getElementById("Zip").innerHTML=str.result[0].Zip
						document.getElementById("seq").innerHTML=str.result[0].SEQ
	                },
	                error : function(xhr, status, error){
	                    alert("실패");           // 에러코드(404, 500 등)
	                    alert(xhr.responseText); // html 포맷의 에러 메시지
	                    alert(status);                // 'error'
	                    alert(error);                 // 'Not Found'
	                }
       			});
       		}
       
       function fnBoardDelete(){
    	   
           var sSeq = document.getElementById("sSeq").value;   
           
           $.ajax(
                {
                    url : '/demo5/signDelete',
                    data : "sSeq="+sSeq,               
                    method : 'post',
                    dataType : 'json',  
                    success : function(response){
                      
                        var str=response;
                        
                     	alert("삭제되었습니다.");
             			location.href="JoinList.jsp";
                    },
                    error : function(xhr, status, error){
                        alert("실패");           // 에러코드(404, 500 등)
                        //alert(xhr.responseText); // html 포맷의 에러 메시지
                        //alert(status);                // 'error'
                        //alert(error);                 // 'Not Found'
                    }
            	});
           }
       
       fnBoardView();
        </script>      
    </body>
</html>