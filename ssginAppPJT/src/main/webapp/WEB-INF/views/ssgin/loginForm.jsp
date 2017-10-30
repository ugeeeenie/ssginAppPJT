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
  <link rel="stylesheet" href="/resources/css/mainStyle.css" type="text/css"/>
  <style type="text/css">
  .am-wrapper, .am-content, .main-content {
  	background: #292b37;
  }
  input[type=number] {
  	padding: 0;
    text-align: center;
    font-size: xx-large;
  }
  input[type=number]:focus {
	color: transparent;
	/* text-shadow: 0px 0px 0px #555555;  
	-webkit-text-fill-color: transparent; */
  }
  </style>
</head>
<body>
<div class="am-wrapper">
    <div class="am-content">
      <!-- Main content -->
      <div class="main-content">
      	<div class="form-group text-center">
			<div class="row">
				<!-- left column -->
				<div class="col-md-12">
					<!-- general form elements -->
					<div class="box" style="position:fixed;top:20%;margin-right:15px;">
						<div class="box-header with-border" style="text-align:center;">
							<img src="/resources/img/intro/intro_text.png" style="width:50%;">
						</div>
						<div class="box-body" id="joinBox" style="display: block;">
							<div class="form-group">
								<div class="row" style="margin:50px;">
									<div class="col-xs-2" style="padding:3px;">
										<input type="number" class="form-control" id="pwd1" size="1" maxlength="1" 
											onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"
											onclick="javascript:focusMove();"
											oninput="javascript:checkAndNext(this.id);">
									</div>
									<div class="col-xs-2" style="padding:3px;">
										<input type="number" class="form-control" id="pwd2" size="1" maxlength="1" 
											onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"
											oninput="javascript:checkAndNext(this.id);"
											onclick="javascript:focusMove();"
											onkeydown="javascript:backspace(event);">
									</div>	
									<div class="col-xs-2" style="padding:3px;">
										<input type="number" class="form-control" id="pwd3" size="1" maxlength="1"
											onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" 
											oninput="javascript:checkAndNext(this.id);"
											onclick="javascript:focusMove();"
											onkeydown="javascript:backspace(event);">
									</div>	
									<div class="col-xs-2" style="padding:3px;">
										<input type="number" class="form-control" id="pwd4" size="1" maxlength="1" 
											onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"
											oninput="javascript:checkAndNext(this.id);"
											onclick="javascript:focusMove();"
											onkeydown="javascript:backspace(event);">
									</div>	
									<div class="col-xs-2" style="padding:3px;">
										<input type="number" class="form-control" id="pwd5" size="1" maxlength="1" 
											onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"
											oninput="javascript:checkAndNext(this.id);"
											onclick="javascript:focusMove();"
											onkeydown="javascript:backspace(event);">
									</div>	
									<div class="col-xs-2" style="padding:3px;">
										<input type="number" class="form-control" id="pwd6" size="1" maxlength="1" 
											onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"
											oninput="javascript:checkAndNext(this.id);"
											onclick="javascript:focusMove();"
											onkeydown="javascript:backspace(event);">
									</div>	
									<input type="hidden" id="pwd" name="pwd">
								</div>
							</div>
							<div class="form-group text-center">
								<a id="loginBtn" class="btn btn-primary" style="width:80%;">인증하기</a><br><br>
								<a id="resetBtn" style="font-color:red;">
									비밀번호 찾기/재설정<i class="fa fa-times spaceLeft"></i>
								</a>
							</div>
							<form id="phoneForm" method="post">
								<input type="hidden" id="phoneNum" name="phoneNum" value="">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- <div class="form-group text-center">
			<div class="row">
				left column
				<div class="col-md-12">
					general form elements
					<div class="box">
						<div class="box-header with-border">
							<h2>로그인</h2>
						</div>

						<div class="box-body" id="loginBox" style="display: block;">
							<form id="loginForm" method="post">
								<div class="form-group text-center">
									<div class="form-group">
										<input type="password" class="form-control" id="pwd" name="pwd" placeholder="비밀번호 6자리 입력(숫자만)"
										minlength="6" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')">
									</div>
									<button id="loginBtn" class="btn btn-primary">
										로그인<i class="fa fa-times spaceLeft"></i>
									</button><p/><br>
									<a id="resetBtn" style="font-color:red;">
										비밀번호 찾기/재설정<i class="fa fa-times spaceLeft"></i>
									</a>
								</div>
							</form>
							<form id="phoneForm" method="post">
								<input type="hidden" id="phoneNum" name="phoneNum" value="">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		/.content -->
  </div>
 </div>
</div>
</div>

	<%-- <input type="hidden" id="name" value="${userInfo.user_name}">
	<input type="hidden" id="birth" value="${userInfo.user_birth}">
	<input type="hidden" id="gender" value="${userInfo.user_sex}">
	<input type="hidden" id="phone" value="${userInfo.user_phone}"> --%>
	<input type="hidden" id="hash" value="${loginUser.user_id}">
	<input type="hidden" id="url" value="${url}">
	<input type="hidden" id="ip" value="${ip}">

  <script src="/resources/lib/jquery/jquery.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js" type="text/javascript"></script>
  <script src="/resources/js/main.js" type="text/javascript"></script>
  <script src="/resources/lib/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="/resources/js/ethereum/web3.js"></script>	
  <script src="/resources/js/ethereum/clipboard.min.js"></script>	
  <script src="/resources/js/ethereum/ethereum.js"></script>
  <script src="/resources/js/ethereum/ssginLogin.js?ver=2" type="text/javascript"></script> 
  <script>
    //android -> javascript
    //안드로이드 버튼 클릭시 
    $(document).ready(function(){
    	location.href = "app://finger";
    });
    
    $('#resetBtn').click(function(){
    	console.log("reset");
    	
    	if(confirm("비밀번호 재설정은 계정 설정을 처음부터 다시 진행합니다. 계속하시겠습니까?") == true){
    		location.href = "/ssgin/leave.app?state=reset";
    	}
    });
    
    function getNum(phone) {
        $('#phoneNum').val(phone);
    }
        
    function authFinger() {
    	var ip = $('#ip').val();
        var url = $('#url').val();
        var authUrl = "";
        var action = "";
        
        if(url == "ssgin"){
         authUrl = "http://www.ssgin.com";
         action = "/ssgin/main.app";
        }
        if(url == "ssgpay"){
         authUrl = "http://www.ssgpay.com";
         action = "http://" + ip + ":8081/succmain.ssgpay?what=succ";
        }
     }
    
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
