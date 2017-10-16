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
      <div class="main-content">
		<div class="form-group text-center">
			<div class="row">
				<!-- left column -->
				<div class="col-md-12">
					<!-- general form elements -->
					<div class="box">
						<div class="box-header with-border">
							<h2>로그인</h2>
						</div>

						<div class="box-body" id="loginBox" style="display: block;">
							<!-- <form id="loginForm" method="post"> -->
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
							<!-- </form> -->
							<form id="phoneForm" method="post">
								<input type="hidden" id="phoneNum" name="phoneNum" value="">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.content -->
  </div>
 </div>
</div>

	<%-- <input type="hidden" id="name" value="${userInfo.user_name}">
	<input type="hidden" id="birth" value="${userInfo.user_birth}">
	<input type="hidden" id="gender" value="${userInfo.user_sex}">
	<input type="hidden" id="phone" value="${userInfo.user_phone}"> --%>
	<input type="hidden" id="hash" value="${loginUser.user_id}">

  <script src="/resources/lib/jquery/jquery.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js" type="text/javascript"></script>
  <script src="/resources/js/main.js" type="text/javascript"></script>
  <script src="/resources/lib/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="/resources/js/ethereum/web3.js"></script>	
  <script src="/resources/js/ethereum/clipboard.min.js"></script>	
  <script src="/resources/js/ethereum/ethereum.js"></script>
  <script src="/resources/js/ethereum/ssginLogin.js" type="text/javascript"></script> 
  <script src="/resources/js/ethereum/ssginLeave.js" type="text/javascript"></script> 
  
  <script>
    //android -> javascript
    //안드로이드 버튼 클릭시 
    $(document).ready(function(){
    	location.href="app://finger"
    });
    
    function getNum(phone) {
        $('#phoneNum').val(phone);
    }
        
    function authFinger() {
        $('#phoneForm').attr('action', '/ssgin/main.app');
        $('#phoneForm').submit();
    }
    </script>
  </body>
</html>
