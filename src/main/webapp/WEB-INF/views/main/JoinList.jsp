<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>JoinList</title>
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
	</head>
	<body> 
			<%@include file = "../include/header.jsp" %>	
		<div  style="width:700px;margin:0 auto;">
			<h2 style="text-align:center; width:100%;">회원리스트</h2>     	    
			
           	 <span class="h_name"><input type="button" value="회원가입" onclick="location.href='../main/join.jsp?sUrl='+location.pathname" style="cursor:pointer"></span>
           	 이름:<input type="text" id="sName">
            <input type="button" value="검색" onclick="fnBoardList(1);">
            
            <table class="tbl01" border="1px">
            	<tr><th>이름</th><th>아이디</th><th>비밀번호</th><th>Email</th><th>전화번호</th><th>우편번호</th><th>주소</th></tr>
            </table>
             <div id="paging"></div>
   		</div>
   			<%@include file = "../include/footer.jsp" %>
   		
   <script> 
		var totalData = 0;    // 총 데이터 수	
		var dataPerPage = 10;    // 한 페이지에 나타낼 데이터 수
		var pageCount = 10;        // 한 화면에 나타낼 페이지 수
	 
  	     function fnBoardList(selectedPage){
			var sName = document.getElementById("sName").value;
				
       
   	    $.ajax(
            {
                url : '/demo5/signList',
                data : "sName="+sName,  
                method : 'post',
                dataType : 'json',
                success : function(response){
                	
                    var objData = response;
                    totalData = objData.tCnt;  
                    
                    var str="";
               
                    for (var i=0;i<objData.result.length;i++){

                        str +="<tr><td>"+objData.result[i].NAME+"</td><td><a href='JoinView.jsp?sSeq="+objData.result[i].seq+"'>"+objData.result[i].ID+"</a></td><td>"+objData.result[i].Password+"</td><td>"+objData.result[i].Email+"</td><td>"+objData.result[i].Phone+"</td><td>"+objData.result[i].ZIP+"</td><td>"+objData.result[i].Address+"</td></tr>";
                    
                    }
                    
                 	$("table tr:gt(0)").remove();
                   	$("table").eq(0).append(str);
                   	
                   	paging(totalData, dataPerPage, pageCount, selectedPage);
                    	
                },
                error : function(xhr, status, error){
                    alert("실패");           // 에러코드(404, 500 등)
                    alert(xhr.responseText); // html 포맷의 에러 메시지
                    alert(status);                // 'error'
                    alert(error);                 // 'Not Found'
                }
	        });
	       }	
       
      // fnBoardList(1);       
</script>  
<script type="text/javascript">
    
//     var totalData = 1000;    // 총 데이터 수
//     var dataPerPage = 25;    // 한 페이지에 나타낼 데이터 수
//     var pageCount = 5;        // 한 화면에 나타낼 페이지 수
    
    function paging(totalData, dataPerPage, pageCount, currentPage){
        
        console.log("currentPage : " + currentPage);
        
        var totalPage = Math.ceil(totalData /dataPerPage);    // 총 페이지 수
        var pageGroup = Math.ceil(currentPage /pageCount);    // 페이지 그룹
        
        console.log("pageGroup : " + pageGroup);
        
        var last = pageGroup * pageCount;    // 화면에 보여질 마지막 페이지 번호
        if(last > totalPage)
            last = totalPage;
        var first = last - (pageCount-1);    // 화면에 보여질 첫번째 페이지 번호
        var next = last+1;
        var prev = first-1;
        
        console.log("last : " + last);
        console.log("first : " + first);
        console.log("next : " + next);
        console.log("prev : " + prev);
 
        var $pingingView = $("#paging");
        
        var html = "";
        
        if(prev > 0)
            html += "<a href=# id='prev'><</a> ";
        
        for(var i=first; i <= last; i++){
            html += "<a href='#' id=" + i + ">" + i + "</a> ";
        }
        
        if(last < totalPage)
            html += "<a href=# id='next'>></a>";
        
        $("#paging").html(html);    // 페이지 목록 생성
        $("#paging a").css("color", "black");
        $("#paging a#" + currentPage).css({"text-decoration":"none", 
                                           "color":"red", 
                                           "font-weight":"bold"});    // 현재 페이지 표시
                                     
    }
    
    $(document).ready(function(){        
        
    	fnBoardList(1);
		
        $(document).on("click", "#paging a", function(){
		            
    	        var $item = $(this);
	            var $id = $item.attr("id");
	            var selectedPage = $item.text();
	            
	            if($id == "next")    selectedPage = next;
	            if($id == "prev")    selectedPage = prev;
	           
	            fnBoardList(selectedPage);
	            //paging(totalData, dataPerPage, pageCount, selectedPage);
		   });
    });
</script>
		</body>
</html>