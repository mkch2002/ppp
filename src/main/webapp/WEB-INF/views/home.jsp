<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Home</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" ></script>
	<script>
	
	function fnJson() {
		$.ajax({
		    url : "${pageContext.request.contextPath}/json/jsonList.do",
		    type : "POST",
		    data:"sTitle=1" ,
		    dataType: "json",
		    success : function(response) {
		        
		    	for (var i =0 ; i < response.result.length ; i++) {
		    		console.log(response.result[0].bad);	
		    	}

		    	var str = "";
		    	
		    	str = response.someData ;
		    	$("#tbl01").append(str);
		    	//console.log("data.someData : " + data.someData);
		        //console.log("data.strData : " + data.strData);
		    },
		    error : function(jqXHR, textStatus, errorThrown) {
		        alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
		    }
		});
	}
	</script>
</head>
<body>
<h1>
<button onclick="fnJson()">클릭</button>
	Hello world!  
</h1>
<table id="tbl01">
</table>
</body>
</html>




