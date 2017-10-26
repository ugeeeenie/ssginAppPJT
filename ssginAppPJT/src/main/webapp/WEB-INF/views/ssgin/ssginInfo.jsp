<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%@include file="../include/sidebar.jsp"%>

<div class="am-content" style="max-height:570px;">
	<div class="page-head">
       	<h2>SSG IN. 소개<span class="dot">.</span></h2>
     </div>
     
     <div class="main-content">
     	<img src="../../resources/img/board/ssgin_info.png" width="100%">
     </div>
</div>
  <!-- End Main content -->
</div> 
  
  <script src="/resources/lib/jquery/jquery.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js" type="text/javascript"></script>
  <script src="/resources/js/main.js" type="text/javascript"></script>
  <script src="/resources/lib/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
  <script type="text/javascript">
    $(document).ready(function(){
    	// 전화번호 substr 띄우기
    	var phone = "${phone}";
    	phone = phone.substr(0, 3) + " - " + phone.substr(3, 1) + "*** - " + phone.substr(7);
    	$('#myPhone').text(phone + "  님");
    	
    	//initialize the javascript
    	App.init();
    });
    </script>
</body>
</html>