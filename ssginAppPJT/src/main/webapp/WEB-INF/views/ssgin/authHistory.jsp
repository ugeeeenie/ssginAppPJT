<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%@include file="../include/sidebar.jsp"%>

<div class="am-content" style="max-height:570px;">
	<div id="accordion" class="panel-group accordion accordion-semi">
	   <div class="panel panel-default">
	     <div class="panel-heading danger">
	       <h4 class="panel-title">
	       	<a id="toggleCollapse" data-toggle="collapse" data-parent="#accordion" href="#ac4-1" style="text-align:center; border:1px solid;">
	       		<i id="arrow" class="icon s7-angle-down-circle"></i> 인증내역보기
	       	</a>
	       </h4>
	     </div>
	     <div id="ac4-1" class="panel-collapse collapse in" style="min-height:500px;">
	       <div class="main-content" style="padding:0;">
			  <div class="row">
			    <div class="col-md-12">
			      <ul class="timeline"></ul>
			    </div>
			  </div>
			</div>
	      </div>
		</div>
	</div>
</div>
  <!-- End Main content -->
</div> 
  
  <script src="/resources/lib/jquery/jquery.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js" type="text/javascript"></script>
  <script src="/resources/js/main.js" type="text/javascript"></script>
  <script src="/resources/lib/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="/resources/lib/prettify/prettify.js" type="text/javascript"></script>
  <!-- <script src="/resources/js/app-dashboard.js" type="text/javascript"></script> -->
  <script type="text/javascript">
    $(document).ready(function(){
    	// 전화번호 substr 띄우기
    	var phone = "${phone}";
    	phone = phone.substr(0, 3) + " - " + phone.substr(3, 1) + "*** - " + phone.substr(7);
    	$('#myPhone').text(phone + "  님");
    	
    	//initialize the javascript
    	App.init();
    	//App.dashboard();
    	
    	loadMore(1);
    });
    
 	// 인증내역 토글 처리
    $('#toggleCollapse').click(function(){
    	if($('#ac4-1').attr('class') == "panel-collapse collapse in"){
    		location.href = "/ssgin/main.app";
    	}
    });
 	
    function loadMore(pageNo){
    	console.log("pageNo : " + pageNo);
    	
    	$.ajax({
    		url : "/ssgin/loadMore.app",
    		type : "post",
    		data : { pageNo : pageNo },
    		dataType : "json",
    		success : function(data){
    			$('.timeline-loadmore').empty();
    			
    			var listStr = "";
    			for(var i = 0 ; i < data.list.length ; i++){
    				if(data.list[i].auth_success == "Y"){
    					listStr += '<li class="timeline-item success">'
	             				+ '<div class="timeline-date"><span>인증완료 <img src="../../resources/img/history/check_v.png" style="width:20%;"></span></div>'
		             			+ '<div class="timeline-content">'
		              			+ '<div class="timeline-header"><span class="timeline-time">' + data.list[i].auth_time + '</span>';
		              	if(data.list[i].auth_url.length < 24){
		              		listStr += '<p class="timeline-activity pull-right"><span href="#" style="color:#000;">' + data.list[i].auth_url + '</span></p>';
		              	}else{
		              		listStr += '<p class="timeline-activity pull-right"><span href="#" style="color:#000;">' + data.list[i].auth_url.substr(0, 24) + '...</span></p>';
		              	}		
		              	
		              	listStr += '</div></div></li>';
    				}else{
    					listStr += '<li class="timeline-item success">'
             				+ '<div class="timeline-date"><span>인증실패 <img src="../../resources/img/history/fail_x.png" style="width:20%;"></span></div>'
	             			+ '<div class="timeline-content">'
	              			+ '<div class="timeline-header"><span class="timeline-time">' + data.list[i].auth_time + '</span>';
              			if(data.list[i].auth_url.length < 24){
		              		listStr += '<p class="timeline-activity pull-right"><span href="#" style="color:#000;">' + data.list[i].auth_url + '</a></span>';
		              	}else{
		              		listStr += '<p class="timeline-activity pull-right"><span href="#" class="pull-right" style="color:#000;">' + data.list[i].auth_url.substr(0, 24) + '...</span></p>';
		              	}		
			              	
			            listStr += '</div></div></li>';
    				}
    			}
    			
    			if(data.paging.totalCount > data.paging.endRowNum){
    				listStr += '<li class="timeline-loadmore" style="list-style:none;">'
    						+ '<a href="javascript:loadMore(' + data.paging.pageNo + 1 + ');" class="btn btn-primary" style="width:100%;font-size:12pt;">'
    						+ '더보기</a></li>';
    			}else{
    				$('.timeline').css('margin', '0 auto');
    			}
    			
    			$('.timeline').append(listStr);
    		}
    	});
    }
    </script>
</body>
</html>