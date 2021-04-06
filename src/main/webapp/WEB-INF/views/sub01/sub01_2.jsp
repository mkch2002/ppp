<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/sub01.css">
    <!--script-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
   	<script src="${pageContext.request.contextPath}/resources/js/paging.js"></script>
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
				
			<!--con_wrap(바뀌는 영역)-->
				<div class="con_wrap">
					<div class="search_area"><!--검색영역-->
						<div class="sch_center clearfix">
							<select class="sch_sel fl">
								<option selected="selected">전체</option>
								<option>제목</option>
								<option>본문</option>
							</select>
							
							<div class="sel_date_area"><!--달력-->
								<span class="input_bd sel_date">달력선택</span><a href="#none"><i class="btn_calendal_01" ></i></a>
								<span class="fl">~</span>
								<span class="input_bd sel_date">달력선택</span><a href="#none"><i class="btn_calendal_02"></i></a>
							</div>	
							<input type="search" class="input_srh input_bd" placeholder="검색어 입력" id="sTitle"><!--검색어 입력-->
							<a href="#none" class="btn_sub_sch" onclick="fn_SearchList">Search</a>
						</div>
					</div>
				<!--게시판 영역-->
					<div>
						<div class="tb_top">
							<div class="bd-total fl"><!--totle 카운트-->
								TOTAL<i class="split"></i><b class="color_blue">28</b>
							</div>
							<div class="text-right fr"><!--버튼 wirte-->
								<a href="${pageContext.request.contextPath}/sub01/sub01_2_write.do" class="btn_sub01">Write</a>
							</div>
						</div>
						<div class="table"><!--테이블-->
							<table class="tb01">
								<caption class="hide">게시판 리스트</caption>
								<colgroup>
									<col style="width:*%;">
									<col style="width:8%;">
									<col style="width:8%;">
									<col style="width:8%;">
									<col style="width:10%;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">Title</th>
										<th scope="col"><img src="${pageContext.request.contextPath}/resources/images/common/icon_like_redB.png" alt="좋아요"></th>
										<th scope="col"><img src="${pageContext.request.contextPath}/resources/images/common/icon_like_blueB.png" alt="싫어요"></th>
										<th scope="col">View</th>
										<th scope="col">Date</th>
									</tr>
								</thead>
								<tbody>
<%-- 									<c:forEach items="${result }" var="hm" varStatus="status"> --%>
<!-- 										<tr> -->
<%-- 											<td><span><a href='${pageContext.request.contextPath}/sub01/sub01_2_view.do?sSeq=${ hm.seq }&sPseq=${ hm.pseq }' class='fz16'>${ hm.title }</a></span></td> --%>
<%-- 											<td>${hm.good}</td> --%>
<%-- 											<td>${hm.bad}</td> --%>
<%-- 											<td>${hm.cnt}</td> --%>
<%-- 											<td>${hm.regdate}</td> --%>
<!-- 										</tr> -->
<%-- 									</c:forEach> --%>
								</tbody>
							</table>
			<!--paging 시작 -->
							<div style="text-align:center;margin-top:20px;">
								<div id="paging" class="paging list"  style="width:100%;display:inline-block;margin:0 auto"></div>
							</div>
			<!--paging 끝-->	
						</div><!--table-->
					</div>
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
	$(document).ready(function(){
		
		fn_SearchList(1);
		
		$(document).on("click","[id='pagenum']", function(){
		
			var num = $(this).attr("pagenum");
			fn_SearchList(num);
			
		});

	});
	
    function fn_SearchList(num){

		if (typeof num == "undefined"){
			num = 1 ;
		}
	 	   var sTitle = document.getElementById("sTitle").value;

		var params = {
			pageNo:num,   // 현재 페이지 번호 사용자가 넘겨줌
			page:num,	  	
			pageSize:10,  // 리스트에서 한페이지에 보여줄 개수 고정
			pageBlock:10, // 한번에 나오는 페이지 넘버링 개수	고정
			navigatorNum:10, 
			totalcnt:0	,  // 총 개수 db서버 에서 가져옴
			sTitle:sTitle
		}
		

        $.ajax(
            {
                url : '${pageContext.request.contextPath}/sub01/listComittee.do',
                data : params,  
                method : 'post',
                dataType : 'json',
                success : function(response){
                	
                    var objData = response;
                    params.totalcnt = objData.totCnt;
                    var str="";
               
                    for (var i=0;i<objData.result.length;i++){

                    		str +="<tr>";
                    		str +="<td><p class='txt'><span><img src='${pageContext.request.contextPath}/resources/images/common/icon_new.png' alt='새로 등록된 게시글(NEW아이콘)' width='30' height='26'>";
                    		if(objData.result[i].STEP > 0){                             	
                        		str += "<span style='padding-left:"+(objData.result[i].STEP*18)+"px'><img src='${pageContext.request.contextPath}/resources/images/common/icon_re_reply.png' alt=''><a href='${pageContext.request.contextPath}/sub01/sub01_2_view.do?sSeq="+objData.result[i].SEQ+"' class='fz16' style='margin-left:10px'>"+objData.result[i].TITLE+"</a></span>";
                        	 	
                        	 }else {
                        		 
                        		str +="<span><a href='${pageContext.request.contextPath}/sub01/sub01_2_view.do?sSeq="+objData.result[i].SEQ+"&sPseq="+objData.result[i].PSEQ+"' class='fz16'>"+objData.result[i].TITLE+"</a></span>";
       							
                        	 }
                    		str +="<td>"+objData.result[i].GOOD+"</td><td>"+objData.result[i].BAD+"</td><td>"+objData.result[i].CNT+"</td><td>"+objData.result[i].REGDATE+"</td></tr>";
                    }
                    	$(".tb01 tbody tr:gt(0)").remove();
                    	$(".tb01 tbody tr:eq(0)").remove();
	                 	
                    	$(".tb01").eq(0).append(str);
                    	
                    	pagingView(params); //페이징  호출
                    	
                    	$( "[id='paging']" ).show();
                },
                error : function(xhr, status, error){
                    alert("실패");           // 에러코드(404, 500 등)
                    alert(xhr.responseText); // html 포맷의 에러 메시지
                    alert(status);                // 'error'
                    alert(error);                 // 'Not Found'
                }
	        });
	       }	
       
	       function Enter_Check(){
	           // 엔터키의 코드는 13입니다.
	       if(event.keyCode == 13){
	            fn_SearchList(1);  // 실행할 이벤트
	       }
	  	 }
       
	    fn_SearchList();       
	</script>	
</body>
</html>