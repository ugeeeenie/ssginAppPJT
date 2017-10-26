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
                  <h4 class="panel-title"><a id="resetBtn" class="collapsed" style="border-bottom:1px solid #ececec;">
                  	비밀번호 변경<span class="pull-right"><i class="icon s7-angle-down"></i></span></a></h4>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title"><a href="javascript:adChange();" class="collapsed" style="border-bottom:1px solid #ececec;">
                  	광고성 정보 수신 동의
                  	<span class="pull-right" style="margin-right:-20%;margin-top:-10px;">
                  		<img src="/resources/img/logo/toggle_on.png" style="width:40%;" id="adOnOff">
                  	</span></a>
                  </h4>
                </div>
              </div>
              <div class="panel panel-default" style="clear:both;">
                <div class="panel-heading">
                  <h4 class="panel-title"><a href="/ssgin/policy.app" class="collapsed" style="border-bottom:1px solid #ececec;">
                  	이용약관 및 정책<span class="pull-right"><i class="icon s7-angle-down"></i></span></a></h4>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title"><a id="appInfo" class="collapsed" style="border-bottom:1px solid #ececec;">
              	    앱 정보<span class="pull-right"><i class="icon s7-angle-down"></i></span></a></h4>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title"><a id="userDelete" class="collapsed">SSG IN 계정 해지<span class="pull-right"><i class="icon s7-angle-down"></i></span></a></h4>
                </div>
              </div>
            </div>
          </div>
	  </div>
  </div>
  <!-- End Main content -->
</div>

<input type="hidden" id="id" value="${loginUser.user_id}">

  <script src="/resources/lib/jquery/jquery.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js" type="text/javascript"></script>
  <script src="/resources/js/main.js" type="text/javascript"></script>
  <script src="/resources/lib/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
  <!-- <script src="/resources/js/app-dashboard.js" type="text/javascript"></script> -->
  <!-- <script src="/resources/js/ethereum/ssginLogin.js" type="text/javascript"></script>
  <script src="/resources/js/ethereum/ssginLeave.js" type="text/javascript"></script>   -->
  <script type="text/javascript">
    $(document).ready(function(){
    	// 전화번호 substr 띄우기
    	var phone = "${phone}";
    	phone = phone.substr(0, 3) + " - " + phone.substr(3, 1) + "*** - " + phone.substr(7);
    	$('#myPhone').text(phone + "  님");
    	
    	//initialize the javascript
    	App.init();
    	//App.dashboard();
    });
    
    $('#appInfo').click(function(){
		alert("SSG IN. Application ver 1.0 Made by Shinsegae I&C");
	});
    
    $('#resetBtn').click(function(){
    	console.log("reset");
    	
    	if(confirm("비밀번호 변경은 계정 설정을 처음부터 다시 진행합니다. 계속하시겠습니까?") == true){
    		location.href = "/ssgin/leave.app?state=reset";
    	}
    });
    
    $('#userDelete').click(function(){
    	console.log("userDelete");
    	
    	if(confirm("계정을 해지하시면 이전 데이터는 모두 삭제됩니다. 계속하시겠습니까?") == true){
    		location.href = "/ssgin/leave.app?state=delete";
    	}
    });
    
    function adChange(){
    	if($('#adOnOff').attr('src') == "/resources/img/logo/toggle_off.png"){
    		$('#adOnOff').attr('src', '/resources/img/logo/toggle_on.png');
    	}else{
        	$('#adOnOff').attr('src', '/resources/img/logo/toggle_off.png');
    	}
    	
    }
  </script>
</body>
</html>