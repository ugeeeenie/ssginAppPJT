<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@include file="../include/sidebar.jsp"%>

<!-- Main content -->
  <div class="am-content">
	  <div class="main-content">
		<!--Accordions-->
        <div class="row">
          <div class="col-sm-6">
            <div id="accordion1" class="panel-group accordion">
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title"><a href="/ssgin/updatePwd.app" class="collapsed"><i class="icon s7-angle-down"></i> 비밀번호 변경 </a></h4>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title"><a href="#" class="collapsed" style="width:70%;float:left;"><i class="icon s7-angle-down"></i> 광고성 정보 수신 동의</a>
	                  <span class="switch-button">
	                    <input type="checkbox" checked name="adsCheck" id="adsCheck">
	                      <span><label for="adsCheck"></label></span>
	                  </span>
                  </h4>
                </div>
              </div>
              <div class="panel panel-default" style="clear:both;">
                <div class="panel-heading">
                  <h4 class="panel-title"><a href="/ssgin/policy.app" class="collapsed"><i class="icon s7-angle-down"></i> 이용약관 및 정책</a></h4>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title"><a href="#" id="appInfo" class="collapsed"><i class="icon s7-angle-down"></i> 앱 정보</a></h4>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title"><a href="#" id="userDelete" class="collapsed"><i class="icon s7-angle-down"></i> SSG IN 계정 해지</a></h4>
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
  <script src="/resources/js/app-dashboard.js" type="text/javascript"></script>
  <script type="text/javascript">
    $(document).ready(function(){
    	//initialize the javascript
    	App.init();
    	App.dashboard();
    });
    
    $('#appInfo').click(function(){
		alert("SSG IN. Application ver 1.0 Made by Shinsegae I&C");
	});
	
	$('#userDelete').click(function(){
		if(confirm("계정을 해지하시겠습니까?")){
			location.href = "/intro.app";
		}
	});
  </script>
</body>
</html>