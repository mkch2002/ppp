//오늘 날짜 및 특정날짜 가져오기
function fn_today(yyyy,mm,dd,dash){
    var today;

    if(typeof(yyyy) == "undefined"){
        today = new Date();
        yyyy = today.getFullYear();
        mm = today.getMonth()+1;
        dd = today.getDate();
        
    } else {
        today = new Date(yyyy,mm,dd);
    }
    mm = parseInt(mm);
    dd = parseInt(dd);
    if(mm <10 ){
    	mm = '0'+ mm;
    }

    if(dd < 10){
    	dd = '0' + dd;
    }
    
    if(typeof(dash) == "undefined"){
    	dash = '-';
    }
    
    return yyyy +dash+ mm +dash+ dd;
}

//날짜 나누기
function fn_date(yyyymmdd,dash){
	
	var yyyy = yyyymmdd.substring(0,4);
	var mm = yyyymmdd.substring(4,6);
	var dd = yyyymmdd.substring(6,8);

	return fn_today(yyyy,mm,dd,dash);
}

//연도 더하기
function fn_addYear(yyyymmdd,yy){
	
	yyyymmdd = yyyymmdd.replace(/-/gi,'').replace(/\//gi,'');

	var	yyyy = yyyymmdd.substring(0,4);
	var mm = yyyymmdd.substring(4,6);
	var dd = yyyymmdd.substring(6,8);

	var d = new Date(yyyy,mm,dd);
	
	d.setFullYear(d.getFullYear()+yy);
	
	var yyyy2 = d.getFullYear();
	var mm2 = d.getMonth()+1;
	var dd2 = 	d.getDate();
	
	if(mm2 < 10){
		mm2 = '0' + mm2;
	}
	if(dd2 <10){
		dd2 = '0' +dd2;
	}
	return yyyy2+''+mm2+''+dd2;
}

// 연월일시분초ms 요일까지

function fn_time (q,w,e,r,t,y,u,i){
	
	 var o;
	
	if(typeof(q) == "undefined"){
        d = new Date();
        
         q = d.getFullYear();
    	 w = d.getMonth()+1;
    	 e = d.getDate();
    	 r = d.getHours();
    	 t = d.getMinutes();
    	 y = d.getSeconds();
    	 u = d.getMilliseconds();
    	 i = d.getDay();

	    }
	
	// 요일 한글로 만들기
	
		if(i == 0){
		    o = '일요일'
		} else if(i == 1){
		    o = '월요일'
		} else if(i == 2){
		    o = '화요일'
		} else if(i == 3){
		    o = '수요일'
		} else if(i == 4){
		    o = '목요일'
		} else if(i == 5){
		    o = '금요일'
		} else {
		    o = '토요일'
		}
	
    if(w < 10){
    	w = '0' + w;
    }
    
    if(e < 10){
    	e = '0' + e;
    }
    
    if(r < 10){
    	r = '0' + r;
    }
    
    if(t < 10){
    	t = '0' + t;
    }
    
    if(y < 100){
    	y = '0' + y;
    }
    
    if(u < 10){
    	u = '00' + u;
    }   else if (u < 100){
    	u = '0' + u;
    }
	return q +'-'+ w +'-'+ e +' '+ r +':'+ t +':'+y +' '+ u +' '+ o;
	
}

//데이트피커

var picker = new Pikaday({ 
	 field: document.getElementById('datepicker'),
	 format: 'yyyy-MM-dd',
	 toString(date, format) {
	   let day = ("0" + date.getDate()).slice(-2);
	   let month = ("0" + (date.getMonth() + 1)).slice(-2);
	   let year = date.getFullYear();
	   return `${year}-${month}-${day}`;
	 }
	});
