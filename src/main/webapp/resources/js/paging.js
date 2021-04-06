/**
* 페이징 처리 함수
* @name  pagingView
* options : 페이징 처리 옵션
*/
pagingView = function(options) {
	if (options.pageNo == undefined){
	} else {
		 var pageNo = options.pageNo;									//현재  클릭한 페이지 번호
		 var pagingHTML 		= "";
		 var page 			=  parseInt(pageNo);							//parseInt(Number(options.pageSize)); 	// 현재  클릭한 페이지 번호
		 var totalCount		 = parseInt(Number(options.totalcnt));     //실제 데이터 총 갯수
		 var pageBlock		 = parseInt(Number(options.pageSize));   //한화면에 보여질 리스트갯수
		 var navigatorNum    = 10; 						// 페이지번호를 몇개씩 보여줄것인가 1 | 2 | 3 | 4 | 5 ...
		 var pagenum = "pagenum";
		 if (typeof(options.pagenum)!="undefined") {
			 
			 pagenum = options.pagenum;
		 }
		 
		 var navigatorId = "";
		 var pagingNumYn    = "";

		 if (typeof(options.navigatorNum) =="undefined") {
			 navigatorNum    = options.pageSize; 						// 페이지번호를 몇개씩 보여줄것인가 1 | 2 | 3 | 4 | 5 ...
		 } else {
			 navigatorNum    = options.navigatorNum; 						// 페이지번호를 몇개씩 보여줄것인가 1 | 2 | 3 | 4 | 5 ...
		 }

		 if (typeof(options.navigatorId) =="undefined") {
			 navigatorId = "paging";
		 } else {
		
			 if (options.navigatorId =="") {
				 navigatorId = "paging";
				 
			 } else {
				 navigatorId    = options.navigatorId; 						//페이징 내용을 보여줄 ID
			 }
		 }
		 
		 // 기본적으로 총 카운트 갯수보다 가져올 갯수가 적으면 페이징 숨김
		 if (pageBlock < totalCount) {
			 pagingNumYn = "N";
		 } else {
			 pagingNumYn = "Y"; 						// 갯수가 하나일때 숨긴여부
		 }

		 var firstPageNum	 = 1;
		 var lastPageNum		 = Math.floor((totalCount-1)/pageBlock) + 1;
		 var previewPageNum  = page == 1 ? 1 : page-1;
		 //var previewPageNum  = page == 1 ? 1 : parseInt((pageNo-1)/navigatorNum) * navigatorNum +1 - 10;
		 var nextPageNum		 = page == lastPageNum ? lastPageNum : page + 1 ;
		 //var nextPageNum		 = page == lastPageNum ? lastPageNum : parseInt((pageNo-1)/navigatorNum) * navigatorNum + navigatorNum + 1;
		 var indexNum		 = pageNo <= navigatorNum  ? 0 : parseInt((pageNo-1)/navigatorNum) * navigatorNum;
		 if (totalCount > 0) {

			 if(pagingNumYn == "N") {
				 pagingHTML+= "<p>";

				 //맨앞으로. 이전 버튼 생성 사용않는다면 지워도 무방.
				 if (previewPageNum > -1) {
					 if (pageNo > 1) {
						 pagingHTML += "<a   href='#none'  style='cursor:pointer' id='"+pagenum+"' pagenum="+firstPageNum+" class='pre_end'><img src='/sp04/resources/images/template/arr02.png' alt='맨앞' class='page_direction01' style='vertical-align:middle;cursor:pointer' /></a> ";
						 pagingHTML += "<a   href='#none'  style='cursor:pointer' id='"+pagenum+"' pagenum="+previewPageNum+"><img src='/sp04/resources/images/template/arr03.png' alt='이전' class='page_direction01' style='vertical-align:middle;cursor:pointer'/></a> ";
					 }else{
						 pagingHTML += "<img src='/sp04/resources/images/template/arr02.png' alt='맨앞' class='page_direction01' style='vertical-align:middle;cursor:pointer' />";
						 pagingHTML += "<img src='/sp04/resources/images/template/arr03.png' alt='이전' class='page_direction01' style='vertical-align:middle;cursor:pointer'/> ";
					 }
				 } else {
					 pagingHTML += "<img src='/sp04/resources/images/template/arr04.png' alt='맨앞' class='page_direction01' style='vertical-align:middle;cursor:pointer' /> ";
					 pagingHTML += "<img src='/sp04/resources/images/template/arr05.png' alt='이전' class='page_direction01' style='vertical-align:middle;cursor:pointer'/>";

				 }

				 //페이지 처리.
				 pagingHTML += "<span class=\"num\">";

				 for (var i=1; i<=navigatorNum; i++) {

					 var pageNum = i + indexNum;

					 if (pageNum == pageNo){

 						 // 2015-09-16 김태훈수정, 페이징 번호가 커질때 간격이 안맞는 부분을 수정
						 switch( pageNum.toString().length ) {

						 case 1 :

							 pagingHTML += "<a  href='#none' class='on'  style='cursor:pointer'>"+pageNum+"</a>";
							 break;

						 case 2 :

							 pagingHTML += "<a  href='#none' class='on'  style='cursor:pointer;width : 22px;'>"+pageNum+"</a>";
							 break;

						 case 3 :

							 pagingHTML += "<a  href='#none' class='on'  style='cursor:pointer;width : 30px;'>"+pageNum+"</a>";
							 break;

						 case 4 :

							 pagingHTML += "<a  href='#none' class='on'  style='cursor:pointer;width : 40px;'>"+pageNum+"</a>";
							 break;

						 default :

							 // 페이징에 1만페이징 경우 생기면 여기로 추가
							 pagingHTML += "<a  href='#none'  class='on'  style='cursor:pointer'>"+pageNum+"</a>";
							 break;
						 }

					 }
					 else{

 						 // 2015-09-16 김태훈수정, 페이징 번호가 커질때 간격이 안맞는 부분을 수정
						 switch( pageNum.toString().length ) {

						 case 1 :

							 pagingHTML += "<a  href='#none'  class='noneborder'  style='cursor:pointer;'  id='"+pagenum+"' pagenum="+pageNum+">"+pageNum+"</a>";
							 break;

						 case 2 :

							 pagingHTML += "<a  href='#none'  class='noneborder'  style='cursor:pointer;width : 22px;'  id='"+pagenum+"' pagenum="+pageNum+">"+pageNum+"</a>";
							 break;

						 case 3 :

							 pagingHTML += "<a  href='#none'  class='noneborder'  style='cursor:pointer;width : 30px;'  id='"+pagenum+"' pagenum="+pageNum+">"+pageNum+"</a>";
							 break;

						 case 4 :

							 pagingHTML += "<a  href='#none'  class='noneborder'  style='cursor:pointer;width : 40px;'  id='"+pagenum+"' pagenum="+pageNum+">"+pageNum+"</a>";
							 break;

						 default :

							 // 페이징에 1만페이징 경우 생기면 여기로 추가
							 pagingHTML += "<a  href='#none'  class='noneborder'  style='cursor:pointer;'  id='"+pagenum+"' pagenum="+pageNum+">"+pageNum+"</a>";
							 break;
						 }
					 }

					 if (pageNum==lastPageNum){
						 break;
					 }
				 }

				 pagingHTML += "</span>";
				 //맨뒤로 다음 버튼 생성 사용않는다면 지워도 무방.
				// if (pageNo < lastPageNum - (navigatorNum-1)) {
				 if (pageNo < lastPageNum) {
					 pagingHTML += "<a href='#none' style='cursor:pointer' id='"+pagenum+"' pagenum="+nextPageNum+"><img src='/sp04/resources/images/template/arr04.png' alt='다음' class='page_direction02' style='vertical-align:middle'/></a> ";
					 pagingHTML += "<a href='#none'  style='cursor:pointer' id='"+pagenum+"' pagenum="+lastPageNum+"><img src='/sp04/resources/images/template/arr05.png' alt='맨끝' class='page_direction01' style='vertical-align:middle'/></a>";
				 }else{
					 pagingHTML += "<a  href='#none'  style='cursor:pointer'><img src='/sp04/resources/images/template/arr04.png' alt='다음' class='page_direction02' style='vertical-align:middle'/></a> ";
					 pagingHTML += "<a   href='#none' style='cursor:pointer'><img src='/sp04/resources/images/template/arr05.png' alt='맨끝' class='page_direction01' style='vertical-align:middle'/></a>";
				 }
			 }
		 }

		 //paging 에 바인딩
		 $("#"+ navigatorId).html(pagingHTML);

	}
};

