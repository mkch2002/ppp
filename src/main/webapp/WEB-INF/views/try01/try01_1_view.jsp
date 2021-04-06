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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/sub02.css">

<!--script-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script>
	$(function() {
		/*nav gnb*/
		$("nav").hover(function() {
			$(".txt_2depth").css("display", "block");
			$(".bg_2depth").css("display", "block");
		}, function() {
			$(".txt_2depth").css("display", "none");
			$(".bg_2depth").css("display", "none");
		});

		$(".bg_2depth").hover(function() {
			$(".txt_2depth").css("display", "block");
			$(".bg_2depth").css("display", "block");
		}, function() {
			$(".txt_2depth").css("display", "none");
			$(".bg_2depth").css("display", "none");
		});
		/*ë²í¼ reply */
		$(".btn_sm_blue").click(function() {
			$(".reply_write").css("display", "block");
		});
		$(".btn_sm_gray").click(function() {
			$(".reply_write").css("display", "none");
		});
		/*ê²½ë¡*/
		$(".path_1depth01").hover(function() {
			$(".ps01").css("display", "block");
		}, function() {
			$(".ps01").css("display", "none");
		});
		$(".path_1depth02").hover(function() {
			$(".ps02").css("display", "block");
		}, function() {
			$(".ps02").css("display", "none");
		});
	});
</script>
</head>
<body>
	<a href="#contents" class="skip">ë³¸ë¬¸ë°ë¡ê°ê¸°</a>
	<div id="wrap">

		<!-- header-->
		<%@include file="../include/header.jsp"%>
		<!-- header End-->

		<!-- container -->
		<div id="container">
			<!-- visual-->
			<div class="sub_visual sub04_01_bg">
				<h2>
					<img src="${pageContext.request.contextPath}/resources/images/sub01/sub01_01_title.png">
				</h2>
			</div>

			<div class="inner sub_inner">
				<div>
					<!--경로-->
					<ul class="path_top">
						<li><a href="../main/index.jsp"> <i class="icon_home"><img
									src="${pageContext.request.contextPath}/resources/images/sub01/btn_path_home.png"
									alt="메인으로 가기 버튼"></i> Home
						</a></li>
						<li class="path_1depth01"><a href="#a" class="path_on"><span>About
									협의회</span><i class="caret"></a>
							<ul class="path_sub ps01">
								<li><a href="../sub01/sub01_6.jsp">About 협의회</a></li>
								<li><a href="../sub01/sub01_2.jsp">협의회 소식</a></li>
								<li><a href="../sub02/sub02_1.jsp">고충처리</a></li>
								<li><a href="../sub03/sub03_1.jsp">소통마당</a></li>
							</ul></li>
						<li class="path_1depth02"><a href="#a" class="path_on"><span>소통마당</span><i
								class="caret"></i></a>
							<ul class="path_sub ps02">
								<li><a href="../sub03/sub03_1.jsp">삼건협의회가 간다</a></li>
								<li><a href="../sub03/sub03_2.jsp">POLL</a></li>
								<li><a href="../sub04/sub04_1_list.jsp">리조트/휴양소/행사</a></li>
								<li><a href="../sub04/sub04_2.jsp">통근버스</a></li>
							</ul></li>
					</ul>
				</div>

				<!--con_wrap(ë°ëë ìì­)-->
				<div class="con_wrap clearfix">
					<div class="box_left">
						<div class="table">
							<!--íì´ë¸-->
							<table class="tb04">
								<caption class="hide"></caption>
								<colgroup>
									<col style="width: 16%;">
									<col style="width: *;">
								</colgroup>
								<input type="text" name="sSeq" id="sSeq" style="display: none"
									value=<%=sSeq%>>
								<input type="text" name="sPseq" id="sPseq" style="display: none"
									value=<%=sPseq%>>

								<tbody>
									<tr>
										<th><span id="sTitle"></span></th>
									</tr>
									<tr>
										<td class="sm_text">
											<div>
												<span id="sRegdate"></span><i class="split"></i> <span>
													<img src="${pageContext.request.contextPath}/resources/images/common/icon_eye.png"
													alt="ì¡°íì ì¹´ì´í¸">&nbsp;<i></i><span
													id="sCnt"></span>
												</span> <i class="split"></i> <span> <img class="cmt_good"
													src="${pageContext.request.contextPath}/resources/images/common/icon_like_red.png">
													<i>&nbsp;</i><span class="sGood"></span>
												</span> <span class="mrl8"> <img class="cmt_nogood"
													src="${pageContext.request.contextPath}/resources/images/common/icon_like_blue.png">
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
													<a title="good" href="#none" class="likeORnot btn_like"
														onClick="fnTryGood()"> <img
														src="${pageContext.request.contextPath}/resources/images/common/btn_like.png" alt="추천">&nbsp;<span
														class="sGood"></span>
													</a> <a title="bad" href="#none" class="likeORnot btn_dislike"
														onClick="fnTryBad()"> <img
														src="${pageContext.request.contextPath}/resources/images/common/btn_bad.png" alt="비추천">&nbsp;<span
														class="sBad"></span>
													</a>
												</p>
											</div>
										</td>
									</tr>
									<tr>
										<td class="attach"><span style="color: #999;">첨부파일</span><span
											id="sEtc"></span></td>
									</tr>
								</tbody>
							</table>
						</div>
						<!--table-->

						<div class="manager_reply">
							<ul>
								<div class="manager_reply">
									<ul id="ul02">
									</ul>
								</div>
								<!--관리자 답변 End-->

								<div class="tac btn_same mrt50">
									<!--ë²í¼-->
									<a href="#none" class="btn_gray" onclick="fnTryDelete()">Delete</a>
									<a title="ëµë³ë¬ê¸°" href="../common/sub_reply.html"
										class="btn_sub01">Reply</a> <a title="ëª©ë¡"
										href="${pageContext.request.contextPath}/try01/try01_1.do" class="btn_border">List</a>
								</div>

								<!--댓글-->
								<div class="cmt_wrap">
									<div class="cmt_write">
										<!--댓글입력-->
										<p>
											<strong>COMMENTS</strong><span class="color_blue"
												id="totalCommentsCnt"></span>
										</p>
										<input class="nickname" type="text"
											placeholder="Nickname (6글자내)" id="sNickname">
										<textarea placeholder="500글자 이내에 입력 해주세요" id="sCommentContent"></textarea>
										<a href="#none" class="btn_cmtsave"
											onclick="fnCommentsWrite()">Save</a>
									</div>
									<div class="mrb34" id="tb01"></div>
									<!--box_left End-->
								</div>
						</div>
					</div>
					<!--con_wrap(바뀌는 영역) End-->
				</div>
				<!--inner End-->
			</div>
			<!-- container End-->
			<!-- footer -->
			<%@include file="../include/footer.jsp"%>
			<!-- footer End-->
		</div>

		<script>
			function fnTryView() {
				var sSeq = document.getElementById("sSeq").value;

				$
						.ajax({
							url : '${pageContext.request.contextPath}/try01/viewTry.do',
							data : "sSeq=" + sSeq,
							method : 'post',
							dataType : 'json',
							success : function(response) {

								var str = response;

			                    document.getElementById("sTitle").innerHTML=response.TITLE;
			                    document.getElementById("sContent").innerHTML=response.CONTENT;
								document.getElementById("sEtc").innerHTML=response.ETC;
								document.getElementsByClassName("sGood")[0].innerHTML=response.GOOD;
								document.getElementsByClassName("sBad")[0].innerHTML=response.BAD
								document.getElementsByClassName("sGood")[1].innerHTML=response.GOOD;
								document.getElementsByClassName("sBad")[1].innerHTML=response.BAD
								document.getElementById("sCnt").innerHTML=response.CNT
							},
							error : function(xhr, status, error) {
								alert("실패");
								alert(xhr.responseText);
								alert(status);
								alert(error);
							}
						});
			}

			function fnTryDelete() {

				var sSeq = document.getElementById("sSeq").value;

				$.ajax({
					url : '${pageContext.request.contextPath}/try01/deleteTry.do',
					data : "sSeq=" + sSeq,
					method : 'post',
					dataType : 'json',
					success : function(response) {

						var str = response;

						if (response.result > 0) {
							alert("삭제되었습니다.");
							location.href = "sp04/try01/try01_1.do";
						} else {
							alert("삭제 되지 않았습니다.")
						}

					},
					error : function(xhr, status, error) {
						alert("실패");
					}
				});
			}
			
			fnTryView();
		</script>
</body>
</html>