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
							<h2>비밀번호 설정</h2>
						</div>
						<div class="box-body" id="joinBox" style="display: block;">
							<form id="goJoin" method="post">
							<div class="form-group">
								<input type="password" class="form-control" name="user_pwd" placeholder="비밀번호 6자리 입력(숫자만)"
									minlength="6" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')">
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
    		 $('#goJoin').attr('action', '/ssgin/join.app');
    		 $('#goJoin').submit();
    	});
    	
    	
    	
    	//initialize the javascript
    	App.init();
    	//App.uiNotifications();
    });
  </script>
</body>
</html>