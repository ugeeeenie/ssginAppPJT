<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<%@include file="../include/sidebar.jsp"%>
<style type="text/css">
body {
	overflow-y: hidden;
}
</style>
<!-- Main content -->
    <div class="am-content">
    	<div class="page-head">
        	<h2>MY 쓱- BLOCK<span class="dot">.</span></h2>
      	</div>
      	
      <div class="main-content">
        <!--+general-chart("classes", "title", "height", "id", "counter value", "counter desc", tools enabled (use true or false))-->
        <div class="row">
          <div class="col-md-12" style="text-align:center;margin:5% 0 8%;">
            <img src="../../resources/img/logo/ssg_block.png" style="width:80%;margin-top:-10%;">
          </div>
          <div class="col-md-12">
            <div class="widget widget-pie">
              <div class="widget-head">
              	<div class="title">MY BLOCK NUMBER</div>
              	<hr>
              	<div class="content">${loginUser.user_block}</div>
              	<br>
              	<div class="title">MY TRANSACTION</div>
              	<hr>
              	<div class="content" id="userTx"></div>
              </div>
          </div>
         </div>
        <div class="row">
          
        </div>
      </div>
    </div>
    <!-- End Main content -->
  </div>

  <script src="/resources/lib/jquery/jquery.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js" type="text/javascript"></script>
  <script src="/resources/js/main.js" type="text/javascript"></script>
  <script src="/resources/lib/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery-flot/jquery.flot.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery-flot/jquery.flot.pie.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery-flot/jquery.flot.resize.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery-flot/plugins/jquery.flot.orderBars.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery-flot/plugins/curvedLines.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/maps/jquery-jvectormap-us-merc-en.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/maps/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/maps/jquery-jvectormap-uk-mill-en.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/maps/jquery-jvectormap-fr-merc-en.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/maps/jquery-jvectormap-us-il-chicago-mill-en.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/maps/jquery-jvectormap-au-mill-en.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/maps/jquery-jvectormap-in-mill-en.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/maps/jquery-jvectormap-map.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/maps/jquery-jvectormap-ca-lcc-en.js" type="text/javascript"></script>
  <script src="/resources/lib/countup/countUp.min.js" type="text/javascript"></script>
  <script src="/resources/lib/chartjs/Chart.min.js" type="text/javascript"></script>
  <script src="/resources/js/app-dashboard.js" type="text/javascript"></script>
  <script type="text/javascript">
    $(document).ready(function(){
    	// 전화번호 substr 띄우기
    	var phone = "${phone}";
    	phone = phone.substr(0, 3) + " - " + phone.substr(3, 1) + "*** - " + phone.substr(7);
    	$('#myPhone').text(phone + "  님");
    	
    	// 트랜잭션 ID 띄우기
    	var tx = "${loginUser.user_tx}";
    	var txStr = "";
    	if(tx.length > 20){
    		for(var i = 0 ; i < (tx.length / 20) ; i++){
    			if(i < (tx.length / 20)){
    				txStr += tx.substr(i*20, 20) + "<br>";
    			}else{
    				txStr += tx.substr(i*20);
    			}
    		}
    	}
    	
    	$('#userTx').append(txStr);
    	
    	//initialize the javascript
    	App.init();
    	App.dashboard();
    
    });
  </script>
</body>
</html>