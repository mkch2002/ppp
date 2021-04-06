<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
	
<a href="#contents" class="skip">본문바로가기</a>

<!-- header -->
	<header>
		<div class="inner posR"><!--로고 상단 영역-->
			<div class="inner">
				<div class="h_top">
					<h1><a href="../main/index.do"><img src="${pageContext.request.contextPath}/resources/images/common/logo.png" alt="삼건협의회 로고"></a></h1>
					<input type="text" class="h_search"><a href="#none" class="btn_mainSch"><span class="hide">검색버튼</span></a>
					<a class="btn_manager" href="#none">관리자</a>
					<div class="slogan"><img src="${pageContext.request.contextPath}/resources/images/common/slogan.png" alt="직원이 먼저다"></div>
				</div>
			</div>
		</div>
		
		<div class="h_bottom posR"><!--GNB--> <!--20190213 전체수정-->
			<div class="gnb_subArea">
				<div class="inner posR">
					<nav class="nav">
						<h2 class="hide">대메뉴</h2>
						<ul class="gnb">
							<li class="posR gnb01"><a href="#none">About 협의회</a>
								<ul class="txt_2depth color01">
									<li><a href="../sub01/sub01_2.do"><span>선거 규약</span></a></li>
									<li><a href="../sub01/sub01_4.do"><span>운영 규정</span></a></li>
									<li><a href="../sub01/sub01_5.do"><span>역대 위원</span></a></li>
								</ul>
							</li>
							<li class="posR gnb02"><a href="#none">협의회 소식</a>
								<ul class="txt_2depth color02">
									<li><a href="../sub01/sub01_1.do"><span>공지사항</span></a></li>
									<li><a href="../sub01/sub01_2.do"><span>협의회 소식</span></a></li>
									<li><a href="../sub01/sub01_3.do"><span>협의회 주요일정</span></a></li>
								</ul>
							</li>
							<li class="posR gnb03"><a href="#none">고충처리</a>
								<ul class="txt_2depth color03">
									<li><a href="../sub02/sub02_1.do"><span>우리들의 VOC</span></a></li>
									<!--<li><a href="../sub02/sub02_2.do"><span>여사우 VOC</span></a></li>-->
									<li><a href="../sub02/sub02_3.do"><span>VOC 개선 우수사례</span></a></li>
									<li><a href="../sub02/sub02_4.do"><span>상담센터(법률)</span></a></li>
								</ul>
							</li>
							<li class="posR gnb04"><a href="#none">소통마당</a>
								<ul class="txt_2depth color04">
									<li><a href="../sub03/sub03_1.do"><span>삼건협의회가 간다</span></a></li>
									<li><a href="../sub03/sub03_2.do"><span>POLL</span></a></li>
									<li><a href="../sub04/sub04_1.do"><span>리조트/휴양소/행사</span></a></li>
									<li><a href="../sub04/sub04_2.do"><span>통근버스</span></a></li>
									<li><a href="../main/JoinList.do"><span>회원정보</span></a></li>
									
								</ul>
							</li>
						</ul>
					</nav>
					<span class="h_date">2018.10.05&nbsp;Fri</span>
					<% String sName = (String)session.getAttribute("Name");%>
					<% String sId = (String)session.getAttribute("Id"); %>
					<% String sPhone = (String)session.getAttribute("Phone"); %>
					
					<%if (sId == null) {%>
					<script>
//						location.href='../main/login.do';
					</script>						
						<span class="h_name"><input type="button" value="로그인" onclick="location.href='../main/login.do?sUrl='+location.pathname" style="cursor:pointer"></span> 
					<%} else{%>
					<span class="h_name"><%=sId %>(<%=sName %>) <input type="button" value="로그아웃" onclick="fnLogout()" style="cursor:pointer"></span> 
					<%}%>
					
					
				</div>
				<div class="bg_2depth posA">
					<div class="inner posR">
						<a href="../sub05_etc/sub05_sitemap.do"><img class="posA gnb_bg" src="${pageContext.request.contextPath}/resources/images/common/gnb_sitemap.png" alt="새로 등록된 게시글(NEW아이콘)"></a>
					</div>
				</div>
			</div>
		</div><!--GNB End-->
		<script>
		//로그인
		  
			//로그아웃
			
		  function fnLogout(){		       
		       $.ajax(
		            {
		                url : '/demo5/logout',
		                data :"",             
		                method : 'post',
		                dataType : 'json',  
		                success : function(response){
		                  
		                    var str=response;
		                    
		                    if(response.result == "OK"){
								location.reload();
		                    } else {
		                		alert("로그아웃되지 않았습니다.")
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
		</script>
	</header>
<!-- header End-->