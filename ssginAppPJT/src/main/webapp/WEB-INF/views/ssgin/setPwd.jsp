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
  <link rel="stylesheet" type="text/css" href="/resources/lib/jquery.nanoscroller/css/nanoscroller.css"/><!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <link rel="stylesheet" type="text/css" href="/resources/lib/jquery.gritter/css/jquery.gritter.css"/>
  <link rel="stylesheet" href="/resources/css/mainStyle.css" type="text/css"/>
  <style type="text/css">
  .row-colors {
  	line-height: 2cm;
  	font-size: xx-large;
  }
  input[type=number] {
  	padding: 0;
    text-align: center;
    font-size: xx-large;
  }
  </style>
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
    <div class="am-content">
      <!-- Main content -->
      <div class="main-content" style="background:#555555;color:white;">
		<div class="form-group text-center">
			<div class="row">
				<!-- left column -->
				<div class="col-md-12">
					<!-- general form elements -->
					<div class="box">
						<div class="box-header with-border">
							<h2>비밀번호 설정</h2>
						</div>
						<div class="box-body" id="joinBox" style="display: block;">
							<form id="goJoin" method="post">
							<div class="form-group">
								<div class="row" style="margin:50px 0;">
									<div class="col-xs-2" style="margin-left:7%;margin-right:-3%;">
										<input type="number" class="form-control" id="pwd1" size="1" maxlength="1" 
											onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"
											oninput="javascript:checkAndNext(this.id);">
									</div>
									<div class="col-xs-2" style="margin-right:-3%;">
										<input type="number" class="form-control" id="pwd2" size="1" maxlength="1" 
											onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"
											oninput="javascript:checkAndNext(this.id);"
											onclick="javascript:focusMove();"
											onkeydown="javascript:backspace(event);">
									</div>	
									<div class="col-xs-2" style="margin-right:-3%;">
										<input type="number" class="form-control" id="pwd3" size="1" maxlength="1"
											onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" 
											oninput="javascript:checkAndNext(this.id);"
											onclick="javascript:focusMove();"
											onkeydown="javascript:backspace(event);">
									</div>	
									<div class="col-xs-2" style="margin-right:-3%;">
										<input type="number" class="form-control" id="pwd4" size="1" maxlength="1" 
											onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"
											oninput="javascript:checkAndNext(this.id);"
											onclick="javascript:focusMove();"
											onkeydown="javascript:backspace(event);">
									</div>	
									<div class="col-xs-2" style="margin-right:-3%;">
										<input type="number" class="form-control" id="pwd5" size="1" maxlength="1" 
											onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"
											oninput="javascript:checkAndNext(this.id);"
											onclick="javascript:focusMove();"
											onkeydown="javascript:backspace(event);">
									</div>	
									<div class="col-xs-2" style="margin-right:7%;">
										<input type="number" class="form-control" id="pwd6" size="1" maxlength="1" 
											onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"
											oninput="javascript:checkAndNext(this.id);"
											onclick="javascript:focusMove();"
											onkeydown="javascript:backspace(event);">
									</div>	
									<input type="hidden" id="user_pwd" name="user_pwd">
								</div>
							</div>
							<div class="form-group text-center">
								<a id="nextBtn" class="btn btn-primary">가입하기</a>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="col-md-12" style="padding:0;color:white;position:relative;top:132px;display:none;" id="keypad">
           <div class="panel panel-transparent">
                <div class="row colors">
                  <button class="col-xs-4 btn btn-dark" id="num1">1</button>
                  <button class="col-xs-4 btn btn-dark" id="num2">2</button>
                  <button class="col-xs-4 btn btn-dark" id="num3">3</button>
                </div>
                <div class="row colors">
                  <button class="col-xs-4 btn btn-dark" id="num4">4</button>
                  <button class="col-xs-4 btn btn-dark" id="num5">5</button>
                  <button class="col-xs-4 btn btn-dark" id="num6">6</button>
                </div>
                <div class="row colors">
                  <button class="col-xs-4 btn btn-dark" id="num7">7</button>
                  <button class="col-xs-4 btn btn-dark" id="num8">8</button>
                  <button class="col-xs-4 btn btn-dark" id="num9">9</button>
                </div>
                <div class="row colors">
                  <button class="col-xs-4 btn btn-dark">　</button>
                  <button class="col-xs-4 btn btn-dark" id="num10">0</button>
                  <button class="col-xs-4 btn btn-dark"><span><i class="s7-left-arrow"></i></span></button>
                </div>
             </div>
           </div>
         </div>
	  </div>
	<!-- /.content -->
  	</div>
  </div>
  
  <script src="/resources/lib/jquery/jquery.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js" type="text/javascript"></script>
  <script src="/resources/js/main.js" type="text/javascript"></script>
  <script src="/resources/lib/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.gritter/js/jquery.gritter.js" type="text/javascript"></script>
  <script type="text/javascript">
    $(document).ready(function(){
    	 $.gritter.add({
		        title: '지문사용 등록안내',
		        text: 'SSG IN. 시스템은 휴대폰에 등록되어 있는 지문을 이용합니다.<br>지문인증 사용시 결제비밀번호를 제출한 것과 동일하게 간주됩니다.<br>휴대폰에 등록된 지문 관리 및 이용에 대한 책임은 이용자 본인에게 있습니다.',
		        image: '/resources/img/intro/fingerprint.png',
		        class_name: 'clean img-rounded',
		        time: '3000',
		      });
    	 
    	$('#nextBtn').click(function(){
    		if($('#pwd6').val() == ""){
    			alert("비밀번호 6자리를 입력해주세요.");
    			return;
    		}
    		
    		var pwd = $('#pwd1').val() + $('#pwd2').val() + $('#pwd3').val()
    				+ $('#pwd4').val() + $('#pwd5').val() + $('#pwd6').val();
    		$('#user_pwd').val(pwd);
    		alert("pwd : " + pwd);
    		
    		 $('#goJoin').attr('action', '/ssgin/join.app');
    		 $('#goJoin').submit();
    	});
    	
    	//initialize the javascript
    	App.init();
    	//App.uiNotifications();
    });
    
    function checkAndNext(id){
    	var element = document.getElementById(id);
    	if(element.value.length > element.maxLength){
    		element.value = element.value.slice(0, element.maxLength);
    	}
    	
    	var idNum = Number(id.substr(3, 1)) + 1;
    	if(idNum <= 6){
    		var idStr = "#pwd" + idNum;
        	$(idStr).focus();
    	}
    }
    
    function focusMove(){
   		$('#pwd1').val("");
   		$('#pwd2').val("");
   		$('#pwd3').val("");
   		$('#pwd4').val("");
   		$('#pwd5').val("");
   		$('#pwd6').val("");
   		
   		$('#pwd1').focus();
    }
    
    function backspace(event){
    	if(event.keyCode == 8){ //backspace Keycode = 8
    		focusMove();
    	}
    }
  </script>
</body>
</html>