<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<%@include file="../include/sidebar-main.jsp"%>

<!-- Main content -->
    <div class="am-content" style="max-height:570px;">
      <div class="main-content">
        <div class="row">
          <div class="col-md-6">
            <div class="widget widget-calendar">
              <div class="cal-container">
                <div class="cal-notes">
	              <span class="day" style="text-align:right">간편본인인증</span>
	              <span class="date"style="text-align:right; color:#FF1212;">간편한, 안전한 블록체인</span>
	              <span id="phoneNum" class="date" style="text-align:right; color:#FFB4B4;"></span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
	        <div class="col-md-6">
	          <div class="panel panel-default">
	            <div class="panel-body">
	            	<img src="../../resources/img/board/main_event.png" style="width:100%;">
	            </div>
	          </div>
	        </div>
      	</div>
      	<div id="accordion" class="panel-group accordion accordion-semi">
        <div class="panel panel-default">
          <div class="panel-heading success">
            <h4 class="panel-title">
            	<a id="toggleCollapse" data-toggle="collapse" data-parent="#accordion" href="#ac4-1" class="collapsed" aria-expanded="false" style="text-align:center; border:1px solid lightgray;">
            		<i id="arrow" class="icon s7-angle-right-circle"></i> 인증내역보기
            	</a>
            </h4>
          </div>
          <div id="ac4-1" class="panel-collapse collapse" style="min-height:500px;">
          </div>
        </div>
      </div>
      </div>
    </div>
    <!-- End Main content -->
  </div>
  <!-- <script src="assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
  <script src="assets/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js" type="text/javascript"></script>
  <script src="assets/js/main.js" type="text/javascript"></script>
  <script src="assets/lib/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="assets/lib/jquery-flot/jquery.flot.js" type="text/javascript"></script>
  <script src="assets/lib/jquery-flot/jquery.flot.pie.js" type="text/javascript"></script>
  <script src="assets/lib/jquery-flot/jquery.flot.resize.js" type="text/javascript"></script>
  <script src="assets/lib/jquery-flot/plugins/jquery.flot.orderBars.js" type="text/javascript"></script>
  <script src="assets/lib/jquery-flot/plugins/curvedLines.js" type="text/javascript"></script>
  <script src="assets/lib/jquery.sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
  <script src="assets/lib/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
  <script src="assets/lib/jquery.vectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
  <script src="assets/lib/jquery.vectormap/maps/jquery-jvectormap-us-merc-en.js" type="text/javascript"></script>
  <script src="assets/lib/jquery.vectormap/maps/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
  <script src="assets/lib/jquery.vectormap/maps/jquery-jvectormap-uk-mill-en.js" type="text/javascript"></script>
  <script src="assets/lib/jquery.vectormap/maps/jquery-jvectormap-fr-merc-en.js" type="text/javascript"></script>
  <script src="assets/lib/jquery.vectormap/maps/jquery-jvectormap-us-il-chicago-mill-en.js" type="text/javascript"></script>
  <script src="assets/lib/jquery.vectormap/maps/jquery-jvectormap-au-mill-en.js" type="text/javascript"></script>
  <script src="assets/lib/jquery.vectormap/maps/jquery-jvectormap-in-mill-en.js" type="text/javascript"></script>
  <script src="assets/lib/jquery.vectormap/maps/jquery-jvectormap-map.js" type="text/javascript"></script>
  <script src="assets/lib/jquery.vectormap/maps/jquery-jvectormap-ca-lcc-en.js" type="text/javascript"></script>
  <script src="assets/lib/countup/countUp.min.js" type="text/javascript"></script>
  <script src="assets/lib/chartjs/Chart.min.js" type="text/javascript"></script>
  <script src="assets/js/app-dashboard.js" type="text/javascript"></script>
  <script type="text/javascript">
    $(document).ready(function(){
    	//initialize the javascript
    	App.init();
    	App.dashboard();
    
    });
  </script> -->
  <script src="/resources/lib/jquery/jquery.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js" type="text/javascript"></script>
  <script src="/resources/js/main.js" type="text/javascript"></script>
  <script src="/resources/lib/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
  <!-- <script src="/resources/lib/jquery-flot/jquery.flot.js" type="text/javascript"></script>
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
  <script src="/resources/lib/chartjs/Chart.min.js" type="text/javascript"></script> -->
  <script src="/resources/lib/prettify/prettify.js" type="text/javascript"></script>
  <!-- <script src="/resources/js/app-dashboard.js" type="text/javascript"></script> -->
   <script type="text/javascript">
    $(document).ready(function(){
    	// 전화번호 substr 띄우기
    	var phone = "${phone}";
    	phone = phone.substr(0, 3) + " - " + phone.substr(3, 1) + "*** - " + phone.substr(7);
    	$('#phoneNum').text(phone);
    	$('#myPhone').text(phone + "  님");
    	
    	//initialize the javascript
    	App.init();
    	//App.dashboard();
    });
    
    // 인증내역 토글 처리
    $('#toggleCollapse').click(function(){
    	if($('#ac4-1').attr('class') == "panel-collapse collapse"){
    		location.href = "/ssgin/authHistory.app";
    	}
    });
  </script>
</body>	
</html>

