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
	} 
	.radio-group .not-active  {
	   color: #3276b1;
	   background-color: #fff;
	}
	.form-group-nopadding { padding-left:0px; padding-right:0px; }
	label.btn-radio { margin-top:0; padding:13px 17px; border:1px solid #F0F0F0; font-size: small; font-weight: bold;}
    .am-wrapper { background-color: #fff; }

  </style>
  
  <script src="http://code.jquery.com/jquery-latest.js"></script> 
</head>
<body>
<div class="am-wrapper am-nosidebar-left">
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
                  <li data-step="1" class="active" id="steps1">Step 1<span class="chevron"></span></li>
                  <li data-step="2" id="steps2">Step 2<span class="chevron"></span></li>
                  <li data-step="3" id="steps3">Step 3<span class="chevron"></span></li>
                </ul>
                <div class="step-content">
                  <div data-step="1" class="step-pane active" id="data1">
                    <div class="form-group">
                        <label for="" class="col-xs-12 control-label form-group-nopadding">이용약관(필수)</label>
                        <div class="col-xs-12 form-group-nopadding"><textarea cols="100" rows="15" readonly class="form-control"></textarea></div>
                        <div class="col-xs-12 form-group-nopadding">
                          <div class="am-checkbox pull-right">
                            <input id="agree1" type="checkbox" class="needsclick">
                            <label for="agree1">동의합니다.</label>
                          </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-xs-12 control-label form-group-nopadding">개인정보 취급방침(필수)</label>
                        <div class="col-xs-12 form-group-nopadding"><textarea cols="100" rows="15" readonly class="form-control"></textarea></div>
                        <div class="col-xs-12 form-group-nopadding">
                          <div class="am-checkbox pull-right">
                            <input id="agree2" type="checkbox" class="needsclick">
                            <label for="agree2">동의합니다.</label>
                          </div>
                        </div>
                    </div>
                    <div class="form-group">
                      <div class="col-xs-12 form-group-nopadding text-right">
                      	<!-- <a href="javascript:checkAgree();" class="btn btn-primary btn-space wizard-next" data-wizard="#wizard1"><img src="../../resources/img/next.png" style="width:100%;"></a> -->
                        <button id="nextBtn1" data-wizard="#wizard1" onclick="checkAgree();" style="border:none;padding:0;"><img class="btn-img" src="../../resources/img/next.png" style="width:100%;"></button>
                      </div>
                    </div>
                  </div>
               
                  <div data-step="2" class="step-pane" id="data2">
                    <form id="joinFormStep2" class="form-horizontal" data-parsley-validate="" novalidate="" method="post">
                      <div class="form-group" style="padding-bottom: 0;padding-top: 0;">
                        <p class="form-control-static">회원정보 입력</p>
                      </div>
                      <div class="form-group">
                        <input type="text" name="user_name" parsley-trigger="change" required placeholder="이름" autocomplete="off" class="form-control">
                      </div>
                      <div class="row">
                        <div class="col-xs-8 form-group-nopadding">
                          <input type="text" name="user_birth" parsley-trigger="change" required placeholder="생년월일 6자리(ex.900101)" autocomplete="off" class="form-control"
                        maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')">
                        </div>
                        <div class="col-xs-4 form-group-nopadding">
                          <div class="input-group pull-right">
                           <div class="btn-group radio-group">
                              <label class="btn btn-primary btn-radio">
                              	 남 <input type="radio" value="1" name="user_sex" checked></label>
                              <label class="btn btn-primary btn-radio not-active">
                              	 여 <input type="radio" value="2" name="user_sex"></label>
                           </div>
                         </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-xs-3 form-group-nopadding">
                          <select class="form-control" id="telecom">
                            <option value="SKT">SK</option>
                            <option value="KT">KT</option>
                            <option value="LGU+">LGU+</option>
                          </select>
                        </div>
                        <div class="col-xs-9 form-group-nopadding">
                          <input type="text" name="user_phone" parsley-trigger="change" required placeholder="핸드폰번호 전체를 입력해주세요('-'제외)" autocomplete="off" class="form-control"
                        maxlength="11" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')">
                        </div>
                      </div>
	                  <div class="row">
	                     <div class="col-xs-8 form-group-nopadding">
	                        <input type="text" id="authNum" parsley-trigger="change" required autocomplete="off" class="form-control" maxlength="6" 
	                          		onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" disabled>
	                     </div>
	                     <div class="col-xs-4 form-group-nopadding">
	                     	<div class="input-group pull-right">
	                        	<a id="phoneAuthBtn" class="btn btn-space btn-alt3" style="font-size: small; margin: 2% 0;">인증번호 받기</a>
	                     	</div>
	                     </div>
	                  </div>
                      <div class="form-group">
                        <div class="col-xs-12 form-group-nopadding text-right">
                        	<button id="nextBtn2" data-wizard="#wizard1" onclick="compareNum();" style="border:none;padding:0;"><img class="btn-img" src="../../resources/img/next.png" style="width:100%;"></button>
                        	<!-- <a href="javascript:joinFormSubmit();" class="" data-wizard="#wizard1"><img src="../../resources/img/next.png" style="width:100%;"></a> -->
                        </div>
                      </div>
                    </form>
                    <input type="hidden" id="randomNum">
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
  <!-- <script src="/resources/js/app-form-wizard.js" type="text/javascript"></script> -->
  <script type="text/javascript">
    $(document).ready(function(){
    	//initialize the javascript
    	App.init();
    	//App.wizard();
    	
    	$('.radio-group label').on('click', function(){
            $(this).removeClass('not-active').siblings().addClass('not-active');
    	});
        
    	
        $('#phoneAuthBtn').click(function(){
        	location.href="app://noti";
        	$('#authNum').removeAttr('disabled');
        });
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
  		  
  		  $('.steps').find('#steps1').prop('class', 'complete');
  		  $('.steps').find('#steps2').prop('class', 'active');  		  
  	  }
    }
    
    function receiveNum(num){
    	$('#randomNum').val(num);
    }
    
    function compareNum(){
    	/* $('#joinFormStep2').attr('action', '/ssgin/setPwd.app');
	    $('#joinFormStep2').submit(); */
	      
	    var num = $('#randomNum').val();
	    
	    if($('#authNum').is(":disabled")){
	    	alert("인증번호 받기를 클릭하세요");
	    	return;
	    }else{
	    	if(num == $('#authNum').val()){
	    		  alert("휴대폰 인증에 성공하였습니다.");
	    		  
	    		  $('#joinFormStep2').attr('action', '/ssgin/setPwd.app');
	    	      $('#joinFormStep2').submit();
	    	}else{
	    		  alert("인증번호가 일치하지 않습니다.");
	    		  return;
	    	} 
	    }
    }
  </script>
</body>
</html>