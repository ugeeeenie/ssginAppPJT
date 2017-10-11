<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>SSG IN. APP</title>
  <link rel="stylesheet" type="text/css" href="/resources/lib/stroke-7/style.css"/>
  <link rel="stylesheet" type="text/css" href="/resources/lib/jquery.nanoscroller/css/nanoscroller.css"/>
  <link rel="stylesheet" type="text/css" href="/resources/lib/select2/css/select2.min.css"/>
  <link rel="stylesheet" type="text/css" href="/resources/lib/bootstrap-slider/css/bootstrap-slider.css"/>
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <link rel="stylesheet" href="/resources/css/mainStyle.css" type="text/css"/>
  <style type="text/css">
  .radio-group label {
	  overflow: hidden;
	}
	
	 .radio-group input {
    /* This is on purpose for accessibility. Using display: hidden is evil.
    This makes things keyboard friendly right out tha box! */
   height: 0px;
   width: 0px;
   position: absolute;
   top: -20px;
} .radio-group .not-active  {
   color: #3276b1;
   background-color: #fff;
}
  </style>
</head>
<body>
<div class="am-wrapper">
    <div class="am-top-header">
      <div class="container-fluid">
        <div class="navbar-header">
          <div class="page-title"><span>SSG IN.</span></div>
    	</div>
      </div>
    </div>
      <!-- Main content -->
      <div class="am-content">
      <div class="page-head">
        <h2>회원가입</h2>
      </div>
      <div class="main-content">
        <div class="row wizard-row">
          <div class="col-md-12 fuelux">
            <div class="block-wizard panel panel-default">
              <div id="wizard1" class="wizard wizard-ux">
                <ul class="steps">
                  <li data-step="1" class="active">Step 1<span class="chevron"></span></li>
                  <li data-step="2">Step 2<span class="chevron"></span></li>
                  <li data-step="3">Step 3<span class="chevron"></span></li>
                </ul>
                <div class="step-content">
                  <div data-step="1" class="step-pane active" id="data1">
                      <div class="form-group">
						<label>이용약관(필수)</label><br> 
						<textarea cols="100" rows="15" readonly>
						</textarea><br>
						<div class="col-sm-6">
	                      <div class="am-checkbox" style="text-align:right;width:80%;">
	                        <input id="agree1" type="checkbox" class="needsclick">
	                        <label for="agree1">동의합니다.</label>
	                      </div>
	                    </div>
					  </div><br>
					  <div class="form-group">
						<label>개인정보 취급방침(필수)</label><br> 
						<textarea cols="100" rows="15" readonly>
						</textarea><br>
						<div class="col-sm-6">
	                      <div class="am-checkbox" style="text-align:right;width:80%;">
	                        <input id="agree2" type="checkbox" class="needsclick">
	                        <label for="agree2">동의합니다.</label>
	                      </div>
	                    </div>
					  </div>
                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <button id="nextBtn1" data-wizard="#wizard1" class="btn btn-primary btn-space wizard-next" onclick="checkAgree();">다음 <i class="icon s7-angle-right" style="font-size:25pt;"></i></button>
                        </div>
                      </div>
                  </div>
               
                  <div data-step="2" class="step-pane" id="data2">
                  	<label>회원정보 입력</label><br> 
                  	<form action="/ssgin/setPwd.app" data-parsley-validate="" novalidate="" method="post">
	                  <div class="form-group">
	                    <input type="text" name="user_name" parsley-trigger="change" required placeholder="이름" autocomplete="off" class="form-control">
	                  </div>
	                  <div class="form-group" style="width:80%; float:left;">
	                    <input type="text" name="user_birth" parsley-trigger="change" required placeholder="생년월일 6자리(ex.900101)" autocomplete="off" class="form-control"
	                    	maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')">
	                  </div>
	                  <div class="input-group">
                         <div class="btn-group radio-group">
                           	<label class="btn btn-primary" style="position:relative;float:left;width:50%;font-size:14pt;margin-top:0;border:1px solid #F0F0F0;">
                           	 남 <input type="radio" value="1" name="user_sex"></label>
                           	<label class="btn btn-primary not-active" style="position:relative;float:left;width:50%;font-size:14pt;margin-top:0;border:1px solid #F0F0F0;">
                           	 여 <input type="radio" value="2" name="user_sex"></label>
                         </div>
                      </div>
	                  <div class="form-group" style="clear:both;">
	                    <select class="form-control" id="telecom" style="position: absolute; float: left; width: 10%;">
							<option value="SKT">SK</option>
							<option value="KT">KT</option>
							<option value="LGU+">LGU+</option>
						</select>
						<input type="text" name="user_phone" parsley-trigger="change" required placeholder="핸드폰번호 전체를 입력해주세요('-'제외)" autocomplete="off" class="form-control"
	                    	maxlength="11" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" style="position: relative; left: 10%; width: 90%;">
	                  </div>
	                  <div class="text-right">
	                    <button type="submit" data-wizard="#wizard1" class="btn btn-space btn-primary">다음 <i class="icon s7-angle-right" style="font-size:25pt;"></i></button>
	                  </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <script src="/resources/lib/jquery/jquery.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js" type="text/javascript"></script>
  <script src="/resources/js/main.js" type="text/javascript"></script>
  <script src="/resources/lib/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="/resources/lib/fuelux/js/wizard.js" type="text/javascript"></script>
  <script src="/resources/lib/select2/js/select2.min.js" type="text/javascript"></script>
  <script src="/resources/lib/bootstrap-slider/js/bootstrap-slider.js" type="text/javascript"></script>
  <script src="/resources/lib/parsley/parsley.min.js" type="text/javascript"></script>
  <script src="/resources/js/app-form-wizard.js" type="text/javascript"></script>
  <script type="text/javascript">
    $(document).ready(function(){
    	//initialize the javascript
    	App.init();
    	App.wizard();
    });
    
    function checkAgree(){
  	  if($('#agree1').prop('checked') == false){
  			alert("이용약관에 동의해주세요.");
  			return;
  		}
  	  
  	  else if($('#agree2').prop('checked') == false){
  			alert("개인정보 취급방침에 동의해주세요.");
  			return;
  		}
  	  
  	  else{
  		  //location.href = "/ssgin/joinForm.app";
  		  $('#data1').prop('class', 'step-pane');
  		  $('#data2').prop('class', 'step-pane active');
  	  }
    }
    
    $('.radio-group label').on('click', function(){
        $(this).removeClass('not-active').siblings().addClass('not-active');
	});
    
    $('#submitBtn').click(function(){
    	$('#joinForm').prop('action', '/ssgin/setPwd.app');
    	$('#joinForm').submit();
    });
  </script>
</body>
</html>