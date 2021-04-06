<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String sSeq = request.getParameter("sSeq");
	String sPseq = request.getParameter("sPseq");
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/sub02.css">
   
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
</head>
<body>
	<a href="#contents" class="skip">ë³¸ë¬¸ë°ë¡ê°ê¸°</a>
	<div id="wrap">
	
	<!-- header-->	
	<%@include file = "../include/header.jsp" %>	
	<!-- header End-->	
	
	<!-- container -->
		<div id="container">
			<!-- visual-->
			<div class="sub_visual sub04_01_bg">
				<h2><img src="${pageContext.request.contextPath}/resources/images/sub01/sub01_01_title.png"></h2>
			</div>
			
			<div class="inner sub_inner">
				<div><!--경로-->
					<ul class="path_top">
						<li>
							<a href="../main/index.jsp">
								<i class="icon_home"><img src="${pageContext.request.contextPath}/resources/images/sub01/btn_path_home.png" alt="메인으로 가기 버튼"></i>
								Home
							</a>
						</li>
						<li class="path_1depth01">
							<a href="#a" class="path_on"><span>About 협의회</span><i class="caret"></a>
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
								<li><a href="../sub04/sub04_1_list.jsp">리조트/휴양소/행사</a></li>
								<li><a href="../sub04/sub04_2.jsp">통근버스</a></li>
							</ul>
						</li>
					</ul>
				</div>
	
			<!--con_wrap(ë°ëë ìì­)-->
				<div class="con_wrap clearfix">
					<div class="box_left">
						<div class="table"><!--íì´ë¸-->
							<table class="tb04">
								<caption class="hide"></caption>
								<colgroup>
									<col style="width:16%;">
									<col style="width:*;">
								</colgroup>
									<input type="text" name="sSeq" id="sSeq" style = "display:none  " value=<%=sSeq%>>
									<input type="text" name="sPseq" id="sPseq" style = "display:none  " value=<%=sPseq%>>
									
								<tbody>
									<tr>
										<th><span id="sTitle"></span></th>
									</tr>
									<tr>
										<td class="sm_text">
											<div>
												<span id="sRegdate"></span><i class="split"></i>
												<span>
													<img src="${pageContext.request.contextPath}/resources/images/common/icon_eye.png" alt="ì¡°íì ì¹´ì´í¸">&nbsp;<i></i><span id="sCnt"></span>
												</span>
												<i class="split"></i>
												<span>
													<img class="cmt_good" src="${pageContext.request.contextPath}/resources/images/common/icon_like_red.png" >
													<i>&nbsp;</i><span class="sGood"></span>
												</span>
												<span class="mrl8">
													<img class="cmt_nogood" src="${pageContext.request.contextPath}/resources/images/common/icon_like_blue.png" >
													<i></i><span class="sBad"></span>
												</span>
											</div>
										</td>
									</tr>
									<tr>
										<td class="fz16 text">
											<div>
												<span id="sContent"></span>
												<p class="btn_likeORnot">
													<a title="good" href="#none" class="likeORnot btn_like" onClick="fnNewsGood()">
													<img src="${pageContext.request.contextPath}/resources/images/common/btn_like.png" alt="추천">&nbsp;<span class="sGood"></span>
													</a>
													<a title="bad" href="#none" class="likeORnot btn_dislike" onClick="fnNewsBad()">
														<img src="${pageContext.request.contextPath}/resources/images/common/btn_bad.png" alt="비추천">&nbsp;<span class="sBad"></span>
													</a>
												</p>
											</div>
										</td>
									</tr>
									<tr>
										<td class="attach">
											<span style="color:#999;">첨부파일</span><span id="sEtc"></span>
										</td>
									</tr>
								</tbody>
							</table>
						</div><!--table-->	
						
						<div class="manager_reply">
							<ul>
								<div class="manager_reply">
							<ul id="ul02">
							</ul>
						</div>
						<!--관리자 답변 End-->						
						
						<div class="tac btn_same mrt50"><!--ë²í¼-->
							<a href="#none" class="btn_gray" onclick="fnNewsDelete()">Delete</a>
							<a title="ëµë³ë¬ê¸°" href="../common/sub_reply.html" class="btn_sub01">Reply</a>
							<a title="ëª©ë¡" href="${pageContext.request.contextPath}/sub01/sub01_1.do" class="btn_border">List</a>
						</div>
						
					<!--댓글-->
						<div class="cmt_wrap">
							<div class="cmt_write"><!--댓글입력-->
								<p ><strong>COMMENTS</strong><span class="color_blue" id="totalCommentsCnt"></span></p>
								<input class="nickname" type="text" placeholder="Nickname (6글자내)" id="sNickname">
								<textarea placeholder="500글자 이내에 입력 해주세요"  id="sCommentContent"></textarea>
								<a href="#none" class="btn_cmtsave" onclick="fnCommentsWrite()">Save</a>
							</div>							
						<div class="mrb34" id="tb01">
						</div>
					<!--box_left End-->
						</div>					
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
       function fnNewsView(){
    	   
       var sSeq = document.getElementById("sSeq").value;   
       
	       $.ajax(
	            {
	                url : '${pageContext.request.contextPath}/sub01/viewNews.do',
	                data : "sSeq="+sSeq,               
	                method : 'post',
	                dataType : 'json',  
	                success : function(response){
	                  
	                    var str=response;
	                  
	                    document.getElementById("sTitle").innerHTML=response.TITLE;
	                    document.getElementById("sContent").innerHTML=response.CONTENT;
						document.getElementById("sEtc").innerHTML=response.ETC;
						document.getElementsByClassName("sGood")[0].innerHTML=response.GOOD;
						document.getElementsByClassName("sBad")[0].innerHTML=response.BAD
						document.getElementsByClassName("sGood")[1].innerHTML=response.GOOD;
						document.getElementsByClassName("sBad")[1].innerHTML=response.BAD
						document.getElementById("sCnt").innerHTML=response.CNT
	                },
	                error : function(xhr, status, error){
	                    alert("실패");           // 에러코드(404, 500 등)
	                    alert(xhr.responseText); // html 포맷의 에러 메시지
	                    alert(status);                // 'error'
	                    alert(error);                 // 'Not Found'
	                }
       			});
       		}
       
       function fnNewsDelete(){
    	   
           var sSeq = document.getElementById("sSeq").value;   
           
           $.ajax(
                {
                    url : '${pageContext.request.contextPath}/sub01/deleteNews.do',
                    data : "sSeq="+sSeq,               
                    method : 'post',
                    dataType : 'json',  
                    success : function(response){
                      
                        var str=response;
                        
                        if(response.result > 0){
                    		alert("삭제되었습니다.");
                            location.href="sp04/sub01/sub01_1.do";
                    	} else {
                    		alert("삭제 되지 않았습니다.")
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

  function fnNewsGood(){
    	   
           var sSeq = document.getElementById("sSeq").value;
           
           $.ajax(
                {
                    url : '${pageContext.request.contextPath}/sub01/newsGood.do',
                    data : "sSeq="+sSeq,               
                    method : 'post',
                    dataType : 'json',  
                    success : function(response){
                      
                        var str=response; 
                        
                        document.getElementsByClassName("sGood")[0].innerHTML=response.good,
						document.getElementsByClassName("sBad")[0].innerHTML=response.bad
						document.getElementsByClassName("sGood")[1].innerHTML=response.good,
						document.getElementsByClassName("sBad")[1].innerHTML=response.bad
						
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
  
 	 function fnNewsBad(){
	   
	      var sSeq = document.getElementById("sSeq").value;
	      
	      $.ajax(
	           {
	               url : '${pageContext.request.contextPath}/sub01/newsBad.do',
	               data : "sSeq="+sSeq,               
	               method : 'post',
	               dataType : 'json',  
	               success : function(response){
	                 
	                   var str=response; 
	                   
	                    document.getElementsByClassName("sGood")[0].innerHTML=response.GOOD,
						document.getElementsByClassName("sBad")[0].innerHTML=response.BAD
						document.getElementsByClassName("sGood")[1].innerHTML=response.GOOD,
						document.getElementsByClassName("sBad")[1].innerHTML=response.BAD
						
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
 	 
 	function fnCommentsList(){

		 var sPseq = document.getElementById("sSeq").value;
		
     $.ajax(
         {
             url : '${pageContext.request.contextPath}/sub01/listComment.do',
             data :"sPseq="+sPseq, 
             method : 'post',
             dataType : 'json',
             success : function(response){
            	              	
                var objData = response;

                 var str="";
            
                 for (var i=0;i<objData.result.length;i++){
                     
                   	str += "<div class='cmt_view'  style='padding-left:"+(objData.result[i].STEP*15)+"px'>";     	  
                 	str += "<div class='cmt_top_wrap'>";
                   	str += "<div class='cmt_top'>";
                  	 if(objData.result[i].STEP > 0){
                   	
                  		str += "<img src='${pageContext.request.contextPath}/resources/images/common/icon_re_reply.png' alt=''><span class='dp_nickname'>"+objData.result[i].NICKNAME+"</span>";
                  	 	
                  	 }else {
                  		 
                  		str += "<span class='dp_nickname'>"+objData.result[i].NICKNAME+"</span>";
 							
                  	 }
                   	str += "<i class='split'></i><!--구분선-->";
                   	str += "<span>"+objData.result[i].REGDATE+"</span>";
                   	str += "<i class='split'></i><!--구분선-->";
                   	str += "<div class='btn_goodorbad'><!--버튼- 좋아요+싫어요-->";
                   	str += "<span>";
                   	str += "<a href='#none' title='좋아요' class='cmt_good' onclick='fnCommentsGood("+objData.result[i].SEQ+")'>";
                   	str += "<img src='${pageContext.request.contextPath}/resources/images/common/icon_like_red.png' alt='버튼 좋아요'>";
                   	str += "<i class='iGood' style='margin-left:5px'>"+objData.result[i].GOOD+"</i>";
                   	str += "</a>";
                   	str += "</span>";
                   	str += "<span>";
                   	str += "<a href='#none' title='싫어요' class='cmt_nogood' onclick='fnCommentsBad("+objData.result[i].SEQ+")'>";
                   	str += "<img src='${pageContext.request.contextPath}/resources/images/common/icon_like_blue.png' alt='버튼 싫어요'>";
                   	str += "<i class='iBad' style='margin-left:5px'>"+objData.result[i].BAD+"</i></a></span></div></div></div><div class='btn_reply_area' style='float:right; margin-top:-30px'><!--버튼--><a href='#none' class='btn_sm_blue' onclick='fnCommentReply("+objData.result[i].SEQ+")'>Reply</a><a href='#none' class='btn_sm_gray' onclick='fnCommentsDelete("+objData.result[i].SEQ+")'>delete</a></div></div>";
                   	
                   	
                   	str += "<div class='cmt_txt' style='padding-left:"+(objData.result[i].STEP*40)+"px'><!--댓글작성내용-->"+objData.result[i].CONTENT+"</div>";
                   	
                   	str += "<div class='cmt_write reply_write' id='cmt_write reply_write_"+objData.result[i].SEQ+"' style='display:none'>";
                 	str +="<input class='nickname' type='text' placeholder='Nickname (6글자내)' id='sRnickname"+objData.result[i].SEQ+"'>";
                   	str += "<textarea placeholder='500글자 이내에 입력 해주세요' id='sRcontent"+objData.result[i].SEQ+"'></textarea><a href='#none' class='btn_cmtsave' onclick='fnCommentsRsave("+objData.result[i].SEQ+","+objData.result[i].PSEQ+")'>Save</a></div></div>";
                   	}
	             	$("#tb01").empty();
	             	
                	$("#tb01").append(str);
                   	$("#totalCommentsCnt").html("["+objData.result.length+"]");
                   	
                   	document.getElementById("sNickname").value="";
                   	document.getElementById("sCommentContent").value="";
               },
             error : function(xhr, status, error){
                 alert("실패");           // 에러코드(404, 500 등)
                 alert(xhr.responseText); // html 포맷의 에러 메시지
                 alert(status);                // 'error'
                 alert(error);                 // 'Not Found'
             }
	        });
	       }

		function fnCommentsRsave(sGseq,sPseq){
			
			var sContent = document.getElementById("sRcontent" + sGseq).value;
			var sNickname = document.getElementById("sRnickname" + sGseq).value;
	   		$.ajax(
	           {
	               url : '${pageContext.request.contextPath}/sub01/rsaveComment.do',
	               data :"sPseq="+sPseq+"&sContent="+sContent+"&sGseq="+sGseq+"&sNickname="+sNickname,
	               method : 'post',
	               dataType : 'json',  
	               success : function(response){
	               
	                	  {
	                		   alert("저장 되었습니다.");
	                		   fnCommentsList();
	                		}
	               },
	               error : function(xhr, status, error){
	                   alert("실패");        
	                 
	               }
	      		 });   
	       }
		// 답변 쓰기
		function fnCommentReply(num){
			if(document.getElementById("cmt_write reply_write_"+num).style.display == "none"){
				document.getElementById("cmt_write reply_write_"+num).style.display = ""
			} else{
			 	document.getElementById("cmt_write reply_write_"+num).style.display = "none";
			}
		}
	
	 	function fnComentsGood(sSeq){
	 	   
	          $.ajax(
	             {
	                 url : '${pageContext.request.contextPath}/sub01/goodComment.do',
	                 data : "sSeq="+sSeq,               
	                 method : 'post',
	                 dataType : 'json',  
	                 success : function(response){
	                   		
							alert('참여해 주셔서 감사합니다.');
							fnCommentsList();
	                 },
	                 error : function(xhr, status, error){
	                     alert("실패");           // 에러코드(404, 500 등)
	                     //alert(xhr.responseText); // html 포맷의 에러 메시지
	                     //alert(status);                // 'error'
	                     //alert(error);                 // 'Not Found'
	                 }
	         	});
	        }
	 	
	 	function fnComentsBad(sSeq){
		 	   
	          $.ajax(
	             {
	                 url : '${pageContext.request.contextPath}/sub01/badComment.do',
	                 data : "sSeq="+sSeq,               
	                 method : 'post',
	                 dataType : 'json',  
	                 success : function(response){
	                   		
							alert('참여해 주셔서 감사합니다.');
							fnCommentsList();
	                 },
	                 error : function(xhr, status, error){
	                     alert("실패");           // 에러코드(404, 500 등)
	                     //alert(xhr.responseText); // html 포맷의 에러 메시지
	                     //alert(status);                // 'error'
	                     //alert(error);                 // 'Not Found'
	                 }
	         	});
	        }
	 	
		function fnCommentsWrite(){
			
			var sContent=document.getElementById("sCommentContent").value;
	   		var sNickname=document.getElementById("sNickname").value;
	   		var sPseq=document.getElementById("sSeq").value;
	   		
	   		$.ajax(
	           {
	               url : '${pageContext.request.contextPath}/sub01/writeComment.do',
	               data :"sPseq="+sPseq+"&sContent="+sContent+"&sNickname="+sNickname,
	               method : 'post',
	               dataType : 'json',  
	               success : function(response){
	            	   
	                		   alert("저장 되었습니다.");
	                		   fnCommentsList();
	               },
	               error : function(xhr, status, error){
	                   alert("실패");        
	                 
	               }
	      		 });   
	       }
	
	//댓글 삭제
   function fnCommentsDelete(sSeq){
       
       $.ajax(
            {
                url : '${pageContext.request.contextPath}/sub01/deleteComment.do',
                data : "sSeq="+sSeq,               
                method : 'post',
                dataType : 'json',  
                success : function(response){
                  
                    var str=response;
                    
                		alert("삭제되었습니다.");
                        fnCommentsList();    
                       
                },
                error : function(xhr, status, error){
                    alert("실패");           // 에러코드(404, 500 등)
                    //alert(xhr.responseText); // html 포맷의 에러 메시지
                    //alert(status);                // 'error'
                    //alert(error);                 // 'Not Found'
                }
        	});
       }
   function fnRnewsList(){

	   var sPseq = document.getElementById("sPseq").value; 
	   
 	  $.ajax(
         {
             url : '${pageContext.request.contextPath}/sub01/rnewsList.do',
             data :"sPseq="+sPseq , 
             method : 'post',
             dataType : 'json',
             success : function(response){
 	
                 var objData = response;

                 var str="";
            
                 for (var i=0;i<objData.result.length;i++){
                	
                	 str +="<li>";
                	 if(objData.result[i].STEP > 0){                             	
                 		str += "<span style='padding-left:"+(objData.result[i].STEP*18)+"px'><img src='${pageContext.request.contextPath}/resources/images/common/icon_re_reply.png' alt=''><a href='sub01_1_view.jsp?sSeq="+objData.result[i].SEQ+"&sPseq="+objData.result[i].PSEQ+"'>"+objData.result[i].TITLE+"</a></span>";
                 	 	
                 	 }else {
                 		 
                 		str +="<span><a href='${pageContext.request.contextPath}/sub01/sub01_1_view.do?sSeq="+objData.result[i].SEQ+"&sPseq="+objData.result[i].PSEQ+"' class='fz16'>"+objData.result[i].TITLE+"</a></span>";
							
                 	 }
                	 str +="<span class='color_blue'>[0]</span><div class='meta'></li>";
                 }
	                 	
                 	$("#ul02").append(str);
             },
             error : function(xhr, status, error){
                 alert("실패");           // 에러코드(404, 500 등)
                 alert(xhr.responseText); // html 포맷의 에러 메시지
                 alert(status);                // 'error'
                 alert(error);                 // 'Not Found'
             }
	        });
	       }
       //함수 호출
       fnNewsView();
//        fnCommentsList();
//     fnRnewsList();
        </script>  
	</body>
</html>