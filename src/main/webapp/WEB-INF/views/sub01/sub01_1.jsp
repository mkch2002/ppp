<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/sub03.css">
<!--script-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/paging.js"></script>
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
		<!-- header -->
		<%@include file="../include/header.jsp"%>
		<!-- header End-->

		<!-- container -->
		<div id="container">
			<!-- visual-->
			<div class="sub_visual sub04_01_bg">
				<h2>
					<img src="${pageContext.request.contextPath}/resources/images/sub01/sub01_01_title.png"
						alt="ê³µì§ì¬í­">
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
									협의회</span><i class="caret"></i></a>
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
				<div class="con_wrap">
					<div class="sub02_tb_top">
						<div class="search_area02">
							<select class="sch_sel">
								<option selected="selected">전체</option>
								<option>제목</option>
								<option>본문</option>
							</select> <input type="search" class="input_srh02" id="sTitle"
								onkeypress="Enter_Check()">
							<!--검색어 입력-->
							<a href="#none" onclick="fn_SearchList()"><img
								src="${pageContext.request.contextPath}/resources/images/common/btn_sch.png"></a>
						</div>
						<div class="bd-total fl mrl20 mrt10">
							<!--totle ì¹´ì´í¸-->
							TOTAL<i class="split"></i><b class="color_blue">28</b>
						</div>
						<div class="btn_same fr">
							<a href="${pageContext.request.contextPath}/sub01/sub01_1_write.do" class="btn_sub01">Write</a>
						</div>
						<!--ë²í¼-->
					</div>

					<!--ê²ìí ìì­-->
					<div class="mrt10">
						<div class="table">
							<!--테이블-->
							<table class="tb02">
								<caption class="hide">게시판 리스트</caption>
								<colgroup>
									<col style="width: 7%;">
									<col style="width: *%;">
									<col style="width: 8%;">
									<col style="width: 8%;">
									<col style="width: 8%;">
									<col style="width: 10%;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">No.</th>
										<th scope="col">Title</th>
										<th scope="col"><img
											src="${pageContext.request.contextPath}/resources/images/common/icon_like_redB.png"></th>
										<th scope="col"><img
											src="${pageContext.request.contextPath}/resources/images/common/icon_like_blue.png"></th>
										<th scope="col">View</th>
										<th scope="col">Date</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
							<!--paging 시작 -->
							<div style="text-align: center; margin-top: 20px;">
								<div id="paging" class="paging list"
									style="width: 100%; display: inline-block; margin: 0 auto"></div>
							</div>
							<!--paging 끝-->
						</div>
						<!--table-->
					</div>
				</div>
				<!--con_wrap(ë°ëë ìì­) End-->
			</div>
			<!--inner End-->
		</div>
		<!-- container End-->
		<!-- footer -->
		<%@include file="../include/footer.jsp"%>
		<!-- footer End-->
	</div>
	<script>
		$(document).ready(function() {

			fn_SearchList(1);

			$(document).on("click", "[id='pagenum']", function() {

				var num = $(this).attr("pagenum");
				fn_SearchList(num);

			});

		});

		function fn_SearchList(num) {

			if (typeof num == "undefined") {
				num = 1;
			}

			var sTitle = document.getElementById("sTitle").value;

			var params = {
				pageNo : num, // 현재 페이지 번호 사용자가 넘겨줌
				page : num,
				pageSize : 10, // 리스트에서 한페이지에 보여줄 개수 고정
				pageBlock : 10, // 한번에 나오는 페이지 넘버링 개수	고정
				navigatorNum : 10,
				totalcnt : 0, // 총 개수 db서버 에서 가져옴
				sTitle : sTitle
			}

			$
					.ajax({
						url : '${pageContext.request.contextPath}/sub01/listNews.do',
						data : params,
						method : 'post',
						dataType : 'json',
						success : function(response) {

							var objData = response;
							params.totalcnt = objData.totCnt;
							var str = "";

							for (var i = 0; i < objData.result.length; i++) {

								str += "<tr>";
								str += "<td>"
										+ (objData.totCnt
												- objData.result[i].NO + 1)
										+ "</td><td><p class='txt'>";

								if (objData.result[i].STEP > 0) {
									str += "<span style='padding-left:"
											+ (objData.result[i].STEP * 18)
											+ "px'><img src='${pageContext.request.contextPath}/resources/images/common/icon_re_reply.png' alt=''><a href='${pageContext.request.contextPath}/sub01/sub01_1_view.do?sSeq="
											+ objData.result[i].SEQ
											+ "' class='fz16' style='margin-left:10px'>"
											+ objData.result[i].TITLE
											+ "</a></span>";

								} else {

									str += "<span><a href='${pageContext.request.contextPath}/sub01/sub01_1_view.do?sSeq="
											+ objData.result[i].SEQ
											+ "&sPseq="
											+ objData.result[i].PSEQ
											+ "' class='fz16'>"
											+ objData.result[i].TITLE
											+ "</a></span>";

								}
								str += "<em>[0]</em><span class='icon_new'><img src='${pageContext.request.contextPath}/resources/images/common/icon_new.png' alt='새로 등록된 게시글(NEW아이콘)' width='16' height='16'></span></p></td><td>"
										+ objData.result[i].GOOD
										+ "</td><td>"
										+ objData.result[i].BAD
										+ "</td><td>"
										+ objData.result[i].CNT
										+ "</td><td>"
										+ objData.result[i].REGDATE
										+ "</td></tr>";
							}
							$(".tb02 tbody tr:gt(0)").remove();
							$(".tb02 tbody tr:eq(0)").remove();

							$(".tb02").eq(0).append(str);

							pagingView(params); //페이징  호출

							$("[id='paging']").show();
						},
						error : function(xhr, status, error) {
							alert("실패"); // 에러코드(404, 500 등)
							alert(xhr.responseText); // html 포맷의 에러 메시지
							alert(status); // 'error'
							alert(error); // 'Not Found'
						}
					});
		}

		function Enter_Check() {
			// 엔터키의 코드는 13입니다.
			if (event.keyCode == 13) {
				fn_SearchList(1); // 실행할 이벤트
			}
		}

		fn_SearchList();
	</script>
</body>
</html>