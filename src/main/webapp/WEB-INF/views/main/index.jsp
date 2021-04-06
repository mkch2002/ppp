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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery.bxslider.css">
    <!--script-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>    

    <script>
		$(function(){
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
			
			$(".btn_result").click(function(){/*poll 결과 보기 */
				$(".view_result").css("display","block");
			});
			$(".result_view_close").click(function(){/*poll 결과 보기 닫기버튼*/
				$(".view_result").css("display","none");
			});
			
		});

	</script>
</head>
<body>
	<a href="#container" class="skip">본문바로가기</a>
	<div id="wrap">
	
	<!-- header-->	
	<%@include file = "../include/header.jsp" %>	
	<!-- header End-->	
	<!-- container -->
		<div id="container">
			<!-- visual -->
			<div class="visual" style="position: relative;">
				<!-- visual [bx슬라이더]-->
				</div>
			</div>
			<!-- visual End-->
			
			<section class="inner">

				<!--<div class="notice_area clearfix">
					<div class="notice_tit">
						<h2>알림</h2>
					</div>
					<div class="notice_box">
						<a href="#none">가을소풍 행사를 아래와 같이 시행하오니, 임직원 여러분 참여 부탁드립니다.</a>
						<span class="no_date">2018.12.23</span>
					</div>
				</div>-->
				
				
				<div class="brd_free clearfix"><!--자유게시판 190806 추-->
					<h2>자유게시판</h2>
					<div class="brdtxt">
<!-- 						<div class="col left clearfix"> -->
<!-- 							<a href="#none">가을소풍 행사를 아래와 같이 시행하오니, 임직원 여러분 참여 부탁드립니다.</a> -->
<!-- 							<span class="date">2018.12.23</span> -->
<!-- 						</div> -->
<!-- 						<div class="col right clearfix"> -->
<!-- 							<a href="#none">가을소풍 행사를 아래와 같이 시행하오니, 임직원 여러분 참여 부탁드립니다.</a> -->
<!-- 							<span class="date">2018.12.23</span> -->
<!-- 						</div> -->
					</div>
				</div><!--//자유게시판-->

			
				<div>
					<div class="col_02 clearfix">
						<div class="schedule">
							<h2 class="m_tit02"><a href="../sub01/sub01_3.html">협의회 주요일정</a></h2>
							<div class="category"><!--범례-->
								<dl>
									<dt></dt>
									<dd>삼건협의회</dd>
								</dl>
								<dl>
									<dt></dt>
									<dd>삼건협의회</dd>
								</dl>
								<dl>
									<dt></dt>
									<dd>삼건협의회</dd>
								</dl>
							</div>
							<div class="calendal"><!--달력-->
								<strong>2019. <span>06</span></strong>
								<table>
									<tr>
										<th>일</th>
										<th>월</th>
										<th>화</th>
										<th>수</th>
										<th>목</th>
										<th>금</th>
										<th>토</th>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td>1</td>
									</tr>
									<tr>
										<td class="color_red">2</td>
										<td>3</td>
										<td class="mark"><span>4</span></td>
										<td>5</td>
										<td>6</td>
										<td>7</td>
										<td>8</td>
									</tr>
									<tr>
										<td class="color_red">9</td>
										<td>10</td>
										<td class="mark_bg">11</td>
										<td class="mark_bg">12</td>
										<td class="mark_bg">13</td>
										<td class="mark_bg">14</td>
										<td>15</td>
									</tr>
									<tr>
										<td class="mark_bg color_red">16</td>
										<td class="mark_bg">17</td>
										<td>18</td>
										<td>19</td>
										<td>20</td>
										<td>21</td>
										<td>22</td>
									</tr>
									<tr>
										<td class="mark_bg color_red">23</td>
										<td class="mark_bg">24</td>
										<td>25</td>
										<td>26</td>
										<td>27</td>
										<td>28</td>
										<td>29</td>
									</tr>
									<tr>
										<td class="color_red">30</td>
										<td>31</td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</table>
								<a href="none" class="calendal_prev"><img src="${pageContext.request.contextPath}/resources/images/main/calendal_prev.png" alt="버튼-전달 일정 보기"></a>
								<a href="none" class="calendal_next"><img src="${pageContext.request.contextPath}/resources/images/main/calendal_next.png" alt="버튼-다음달 일정 보기"></a>
							</div>
							<div class="sch_txt">
								<ul id="ul02">
<!-- 									<li><a href="#none"><span class="sch_date">[12.25]</span>내용을 입력해주세요내용을 입력해주세요내용을 입력해주세요</a></li> -->
<!-- 									<li><a href="#none"><span class="sch_date">[12.25]</span>내용을 입력해주세요내용을 입력해주세요내용을 입력해주세요</a></li> -->
<!-- 									<li><a href="#none"><span class="sch_date">[12.25]</span>내용을 입력해주세요내용을 입력해주세요내용을 입력해주세요</a></li> -->
								</ul>
							</div>
						</div>
						
						<div class="event">
						 	<h2 class="m_tit02"><a href="${pageContext.request.contextPath}/sub04/sub04_1.do">리조트/휴양소/행사</a></h2>
							<a href="${pageContext.request.contextPath}/sub04/sub04_1.do" class="btn_e_apply">바로가기</a>
						</div>
						
						<div class="poll">
							<h2 class="m_tit02"><a href="../sub03/sub03_2.html">Poll</a></h2>
							<!--<p><span class="sub_txt">다음에 참여해주세요!!</span></p>--><!--190408 한줄 추가-->
							<p><span class="sub_txt">설문에 참여해주세요!!</span></p><!--190408 한줄 추가-->
							
						<!--설문진행이 아닐 때 (지우지말것)-->	
						<div class="poll_txt display00">
							<div class="poll_off">
								<img src="${pageContext.request.contextPath}/resources/images/main/loading.png" alt="로딩중">
							</div>
						</div>
							
						<!--설문진행이 아닐 때 (지우지말것)-->	
						<div class="poll_txt display01">
						<p class="sm_txt">2019.14.02(수) ~ 2019.4.30(금)</p>
							<div class="poll_off">
								<img src="${pageContext.request.contextPath}/resources/images/main/poll_off.png" alt="현재 설문조사가 진행중이니 않습니다.">
							</div>
						</div>
						
							
						<!--선택이 4개 일때 (지우지말것)-->
						<div class="poll_txt display02">
							<span class="sm_txt">2019.14.02(수) ~ 2019.4.30(금)</span>
							<p class="question">에버랜드에서의 하루는 만족하셨나요? 3줄까지 가능 </p>
							<ul>
								<li><input type="checkbox" id="sel01"><label for="sel01">좋아요</label></li>
								<li><input type="checkbox" id="sel02"><label for="sel02">글쎄요</label></li>
								<li><input type="checkbox" id="sel03"><label for="sel03">삼건협의회</label></li>
								<li><input type="checkbox" id="sel03"><label for="sel03">그닥이요</label></li>
								<li><input type="checkbox" id="sel04"><label for="sel04">기타</label></li>
							</ul>
						</div>
						
						<!--선택이 4개 일때_비활성화 (지우지말것)-->
						<div class="poll_txt display02_1">
							<span class="sm_txt">2019.14.02(수) ~ 2019.4.30(금)</span>
							<p class="question">에버랜드에서의 하루는 만족하셨나요? 네줄까지 가능3줄까지 가능</p>
							<ul class="bullet">
								<li>좋아요</li>
								<li>글쎄요</li>
								<li>그닥이요</li>
								<li>기타</li>
								<li>기타</li>
							</ul>
						</div>
							
						<!--선택이 2개 일때 (지우지말것) -->
							<div class="poll_txt display03">
								<p class="sm_txt">2019.4.02(수) ~ 2019.4.30(금)</p>
								<p class="question">삼건협의회와 함께하는 가을소풍!  3줄까지 가능 삼건협의회와 함께하는! 삼건협의회와 함께하는 가을소풍!</p>
								<div class="btn_area01">
									<a href="#none" title="good" class="btn_good" onClick="alert('참여해 주셔서 감사합니다.')"><span><img src="${pageContext.request.contextPath}/resources/images/main/btn_good.png" alt="좋아요 버튼"></span>좋아요</a>
									<a href="#none" title="bad" class="btn_bad" onClick="alert('참여해 주셔서 감사합니다.')"><span><img src="${pageContext.request.contextPath}/resources/images/main/btn_bad.png" alt="글쎄요 버튼"></span>글쎄요</a>
								</div>
							</div>
						
							<!--버튼-->
							<div class="btn_area02">
								<a href="#none" class="btn_vote">투표하기</a>
								<a href="#none" class="btn_result">결과보기</a>
							</div>
							
							
							<!--결과보기------------------------------------------------------------------>
							<!--선택이 2개 일때-->
							<div class="view_result">
								<p class="total_num">전체 참가수<span>1020</span><i>&nbsp;명</i></p>
								<ul>
									<li>
										<em>1.<span>경기도 용인시 수지구 풍덕천동</span></em>
										<p class="m_graph"><span>graph</span></p>
										<p class="count">450표&nbsp;<span>(50%)</span></p>
									</li>
									<li>
										<em>2. <span>좋아요</span></em>
										<p class="m_graph"><span>graph</span></p>
										<p class="count">450표&nbsp;<span>(0%)</span></p>
									</li>
									<li>
										<em>3. <span>글쎄요</span></em>
										<p class="m_graph"><span>graph</span></p>
										<p class="count">450표&nbsp;<span>(50%)</span></p>
									</li>
									<li>
										<em>4. <span>기타</span></em>
										<p class="m_graph"><span>graph</span></p>
										<p class="count">450표&nbsp;<span>(10%)</span></p>
									</li>
									<li>
										<em>5. <span>기타</span></em>
										<p class="m_graph"><span>graph</span></p>
										<p class="count">450표&nbsp;<span>(10%)</span></p>
									</li>
								</ul>
								<a href="#none" class="pop_close"></a>
								<a href="#none" class="result_view_close">
									<img src="${pageContext.request.contextPath}/resources/images/main/result_view_close.png" alt="닫기 버튼" style="width: 20xp; height: 20px;">
								</a>
							</div>
						</div>
					</div>
				</div>
					
					
					
				<div class="col_03">

					<div class="problem">
						<h2 class="m_tit02">우리들의 VOC</h2>
						<p class="pro_txt">
							회사생활과 관련해 직무에<br>
							전념하는 것을 방해하는<br>
							<strong>불만사항</strong>이나 <strong>애로사항</strong>을<br>
							알려주세요.
						</p>
						<a href="${pageContext.request.contextPath}/sub02/sub02_1.do" class="btn_col03 btn_secret">바로가기</a>
						<span></span>
					</div>

					<div class="hrforU">
						<h2 class="m_tit02">법률상담</h2>
						<span class="hrfor_img"></span>
						<a href="${pageContext.request.contextPath}/sub02/sub02_4.do" class="btn_col03 btn_law">바로가기</a>
					</div>

					<div class="improve"><!--20190625 수정-->
						<h2 class="m_tit03">공지사항</h2>
						<ul id="ul01">
<!-- 							<li> -->
<!-- 								<a href="#none"> -->
<!-- 									나만의 노하우! 엑셀 고수의 비법~ -->
<!-- 								</a> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a href="#none"> -->
<!-- 									게시글 제목이 들어갈 예정입니다 게시글 제목이 들어갈 예정입니다. -->
<!-- 								</a> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a href="#none"> -->
<!-- 									게시글 제목이 들어갈 예정입니다. -->
<!-- 								</a> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a href="#none"> -->
<!-- 									게시글 제목이 들어갈 예정입니다. -->
<!-- 								</a> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a href="#none"> -->
<!-- 									게시글 제목이 들어갈 예정입니다. -->
<!-- 								</a> -->
<!-- 							</li> -->
						</ul>
						<a href="../sub01/sub01_1.do" class="btn_moreBrd">더보기</a>
					</div>
				</div>
			</section><!--inner End-->
			
			<div class="link_area">
				<div class="inner">
					<h3><span>사이트 바로가기</span></h3>
					<div class="link_area_img">
						<a href="#none" target="_blank"><img src="${pageContext.request.contextPath}/resources/images/main/linkArea01.png" alt="법률상담 사이트 바로가기"></a>
						<a href="#none" target="_blank"><img src="${pageContext.request.contextPath}/resources/images/main/linkArea02.png" alt="심리상담 사이트 바로가기"></a>
						<a href="#none" target="_blank"><img src="${pageContext.request.contextPath}/resources/images/main/linkArea03.png" alt="신고센터 사이트 바로가기"></a>
						<a href="#none" target="_blank"><img src="${pageContext.request.contextPath}/resources/images/main/linkArea04.png" alt="워크스마트데스크 사이트 바로가기"></a>
						<a href="#none" target="_blank"><img src="${pageContext.request.contextPath}/resources/images/main/linkArea05.png" alt="옴부즈퍼슨 바로가기"></a>
						<a href="#none" target="_blank"><img src="${pageContext.request.contextPath}/resources/images/main/linkArea06.png" alt="업무비효율 Clearing Board 사이트 바로가기"></a>
					</div>
				</div>
			</div>
		</div>		
	<!-- container End-->
	
	<!-- footer -->		
		<footer id="ft" class="inner clearfix" style="margin-top:10px;">
			<div class="fl">
				<h1 class="fl"><img src="${pageContext.request.contextPath}/resources/images/common/logo_ft.png" alt="삼성물산" /></h1>
				<address class="fl">Copyright 2017 SAMSUNG C&amp;T CORPORATION. All Rights Reserved.</address>
			</div>
			<a href="../sub05_etc/sub05_sitemap.html" class="fr">Sitemap</a>
		</footer>
	<!-- footer End-->
	</div>
	<script>
	function fn_SearchList(num){

		if (typeof num == "undefined"){
			num = 1 ;
		}
		
		var params = {
			pageNo:num,   // 현재 페이지 번호 사용자가 넘겨줌
			page:num,	  	
			pageSize:5,  // 리스트에서 한페이지에 보여줄 개수 고정
			pageBlock:5, // 한번에 나오는 페이지 넘버링 개수	고정
			navigatorNum:5, 
			totalcnt:0	 // 총 개수 db서버 에서 가져옴
		}
				
        $.ajax(
            {
                url : '${pageContext.request.contextPath}/sub01/listMain.do',
                data : params,  
                method : 'post',
                dataType : 'json',
                success : function(response){
    	
                    var objData = response;
                    var str="";
               		//공지사항
                    for (var i=0;i<objData.result.length;i++){
                  		str +="<li>" ;  			 
                    	str +="<a href='${pageContext.request.contextPath}/sub01/sub01_1_view.do?sSeq="+objData.result[i].SEQ+"&sPseq="+objData.result[i].PSEQ+"' class='fz16'>"+objData.result[i].TITLE+"</a>";
                    	str +="</li>";                    	
              		}
                    
                    $("#ul01").eq(0).append(str);
                    
                    //자유게시판
                    str="";
                	str ="<div class='col left clearfix'>";
                	if(objData.result2[0] != undefined){
	                	str +="<a href='${pageContext.request.contextPath}/sub04/sub04_1_view.do?sSeq="+objData.result2[0].SEQ+"&sPseq="+objData.result2[0].PSEQ+"' class='fz16'>"+objData.result2[0].TITLE+"</a>";
	            		str +="<span class='date'>"+objData.result2[0].REGDATE+"</span>";
	                	str +="</div>";
                	}
                	if(objData.result2[1] != undefined){
	                    str +="	<div class='col right clearfix'>";
	            		str +="<a href='${pageContext.request.contextPath}/sub04/sub04_1_view.do?sSeq="+objData.result2[1].SEQ+"&sPseq="+objData.result2[1].PSEQ+"' class='fz16'>"+objData.result2[1].TITLE+"</a>";
	            		str +="<span class='date'>"+objData.result2[1].REGDATE+"</span>";
	            		str +="</div>";
                	}
                	
                	$(".brdtxt").eq(0).append(str); 
                    
                	//협의회 주요일정
                	str="";
                	 for (var i=0;i<objData.result3.length;i++){
                 			str +="<li>";
				      		str +="<a href='${pageContext.request.contextPath}/sub01/sub01_2_view.do?sSeq="+objData.result3[i].SEQ+"&sPseq="+objData.result3[i].PSEQ+"' class='fz16'><span class='sch_date'>";
				      		str +=""+objData.result3[i].REGDATE+"</span>"+objData.result3[i].TITLE+"</a>";
                 		str +="</li>";
                 }

                 	$("#ul02").eq(0).append(str);

              },
                error : function(xhr, status, error){
                    alert("실패");           // 에러코드(404, 500 등)
                    alert(xhr.responseText); // html 포맷의 에러 메시지
                    alert(status);                // 'error'
                    alert(error);                 // 'Not Found'
                }
	        });
	       }	
	
	fn_SearchList();
	</script>
</body>
</html>