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
	
<style>
	.tb02 tr td input[type='text'] {width:100% }
	.tb02 tr td:nth-child(7) input[type='text'] {width:40%}
</style>

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
	<a href="#contents" class="skip"></a>
	<div id="wrap">
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
							<a href="${pageContext.request.contextPath}/try01/try01_1_write.do" class="btn_sub01">Write</a>
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
										<th scope="col">모두 선택</br><input type="checkbox" class="check_all"></th>
										<th scope="col">등급</th>
										<th scope="col">노출</th>
										<th scope="col">Title</th>
										<th scope="col"><img
											src="${pageContext.request.contextPath}/resources/images/common/icon_like_redB.png"></th>
										<th scope="col"><img
											src="${pageContext.request.contextPath}/resources/images/common/icon_like_blue.png"></th>
										<th scope="col">View</th>
										<th scope="col">Date</th>
										<th scope="col">비고</th>

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
	</div>
	<script>
	
	$(document).ready(
			$(document).on("click", ".btn_delete", function() {
				var sSeq = $(this).closest("tr").attr("data-seq");

				$.ajax({
					url : '${pageContext.request.contextPath}/try01/deleteTry.do',
					data : "sSeq=" + sSeq,
					method : 'post',
					dataType : 'json',
					success : function(response) {

						var str = response;

						if (response.result > 0) {
							alert("삭제되었습니다.");
							
							location.href="${pageContext.request.contextPath}/try01/try01_2.do";
						} else {
							alert("삭제 되지 않았습니다.")
						}

					},
					error : function(xhr, status, error) {
						alert("delete error");
					}
				});
			})
		);
	
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
			var sGrade = 10;
			var sMem_id
			var sDiv = "A";
			
			var params = {
				pageNo : num,
				page : num,
				pageSize : 10,
				pageBlock : 10,
				navigatorNum : 10,
				totalcnt : 0,
				sTitle : sTitle,
				sGrade : sGrade,
				sMem_id : sMem_id,
				sDiv : sDiv,
				sUrl : '${pageContext.request.contextPath}/try01/listTry.do'
			}

					$.ajax({
						url : params.sUrl,
						data : params,
						method : 'post',
						dataType : 'json',
						success : function(response) {

							var objData = response;
							params.totalcnt = objData.totCnt;
							
							$(".tb02 tbody tr:gt(0)").remove();
							$(".tb02 tbody tr:eq(0)").remove();
							
							var str = "";

							for (var i = 0; i < objData.result.length; i++) {

								str = "<tr data-seq = '"+objData.result[i].SEQ+"'' data-title = '"+objData.result[i].TITLE+"'' data-good = '"+objData.result[i].GOOD+"'' data-bad = '"+objData.result[i].BAD+"'' data-view = '"+objData.result[i].CNT+"'>";
								str += "<td>"
										+ (objData.totCnt
												- objData.result[i].NO + 1)
										+ "</td><td><input type='checkbox' class='chk_box' value='1'></td><td><select class='chk_select'>"
										+ "<option value='10'>학생</option><option value='20'>조교</option><option value='30'>교수</option></select></td>"
										+ "<td><input type='radio' value='1' name='rdo_"+i+"'>노출</br><input type='radio' value='0' name='rdo_"+i+"'>비노출</td><td><p class='txt'>";

								if (objData.result[i].STEP > 0) {
									str += "<span style='padding-left:"
											+ (objData.result[i].STEP * 18)
											+ "px'>"
											+ "<input type = 'text' value = '"+objData.result[i].TITLE+"'>"
											+ "</span>";
											
// 									str += "<span style='padding-left:"
// 										+ (objData.result[i].STEP * 18)
// 										+ "px'><img src='${pageContext.request.contextPath}/resources/images/common/icon_re_reply.png' alt=''><a href='${pageContext.request.contextPath}/try01/try01_1_view.do?sSeq="
// 										+ objData.result[i].SEQ
// 										+ "' class='fz16' style='margin-left:10px'>"
// 										+ "<input type = 'text' value = '"+objData.result[i].TITLE+"'>"
// 										+ "</a></span>";

								} else {

									str += "<span>"
											+ "<input type = 'text' value = '"+objData.result[i].TITLE+"'>"
											+ "</span>";
											
									str += "<span><a href='${pageContext.request.contextPath}/try01/try01_1_view.do?sSeq="
										+ objData.result[i].SEQ
										+ "&sPseq="
										+ objData.result[i].PSEQ
										+ "' class='fz16'>"
										+ "<input type = 'text' value = '"+objData.result[i].TITLE+"'>"
										+ "</a></span>";

								}
								str += "<em>[0]</em><span class='icon_new'><img src='${pageContext.request.contextPath}/resources/images/common/icon_new.png' alt='새로 등록된 게시글(NEW아이콘)' width='16' height='16'></span></p></td><td>"
										+ "<input type = 'text' value = '"+objData.result[i].GOOD+"'>"
										+ "</td><td>"
										+ "<input type = 'text' value = '"+objData.result[i].BAD+"'>"
										+ "</td><td>"
										+ "<input type = 'text' value = '"+objData.result[i].CNT+"'>"
										+ "</td><td>"
										+ "<input type = 'text' value = '"+objData.result[i].REGDATE+"'>"
										+ "</td><td><input type='button' value='delete' class='btn_delete'>"
										+ "<input type='button' value='edit' class='btn_edit'></td></tr>";
								
								$(".tb02").eq(0).append(str);
								
								var $tmp_chk_select = $(".chk_select").eq(i);
								
								for ( var j=0 , k=$tmp_chk_select.find("option").length; j<k ; j++){
									if($tmp_chk_select.find("option").eq(j).text() == objData.result[i].GRADE_NM){
										$tmp_chk_select.find("option").eq(j).attr("selected","selected");	
									}
								}
							}							

							pagingView(params); //페이징  호출

							$("[id='paging']").show();
						},
						error : function(xhr, status, error) {
							alert("list error"); // 에러코드(404, 500 등)
						}
					});
		}

		function Enter_Check() {
			// 엔터키의 코드는 13입니다.
			if (event.keyCode == 13) {
				fn_SearchList(1); // 실행할 이벤트
			}
		}

		$(document).ready(
				$(document).on("click", ".btn_edit", function() {
					var sSeq = $(this).closest("tr").attr("data-seq");
					var sTitle = $(this).closest("tr").find("td").eq(4).find("input").eq(0).val();
					var sGood = $(this).closest("tr").find("td").eq(5).find("input").eq(0).val();
					var sBad = $(this).closest("tr").find("td").eq(6).find("input").eq(0).val();
					var sView = $(this).closest("tr").find("td").eq(7).find("input").eq(0).val();
					var sGrade = $(this).closest("tr").find(".chk_select option:selected").eq(0).val();
					var sMem_id
					var sDiv = "B"

					
					var params = {
							sSeq : sSeq,
							sTitle : sTitle,
							sGood : sGood,
							sBad : sBad,
							sView : sView,
							sGrade : sGrade,
							sMem_id : sMem_id,
							sDiv : sDiv,
							sUrl : '${pageContext.request.contextPath}/try01/editTry.do'
						}

					$.ajax({
						url : params.sUrl,
						data : params,
						method : 'post',
						dataType : 'json',
						success : function(response) {

							var str = response;

		                	if(response.result > 0){
		                		alert("수정되었습니다.");
		                		
								location.href="${pageContext.request.contextPath}/try01/try01_2.do";
		                	} else {
		                		alert("수정되지 않았습니다.")
		                	}

						},
						error : function(xhr, status, error) {
							alert("edit error");
						}
					});
				})
			);
		
		$(document).ready(function() {
			$(document).on("click", ".check_all", function() {
				if($(this).prop("checked") == true){
					$(".chk_box").prop("checked",true);
				}else{
					$(".chk_box").prop("checked",false);
				}
			});
		});
		
		
	</script>
</body>
</html>