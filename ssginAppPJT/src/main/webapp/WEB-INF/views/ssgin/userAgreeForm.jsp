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
<div class="am-wrapper">
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
							<h2>약관동의</h2>
						</div>
						<div class="box-body" id="joinBox" style="display: block;">
							<div class="form-group">
								<label>이용약관(필수)</label><br> 
								<input type="checkbox" id="agree1">동의합니다.
							</div>
							<div class="form-group">
								<label>개인정보 취급방침(필수)</label><br> 
								<input type="checkbox" id="agree2">동의합니다.
							</div>
							<div class="form-group text-center">
								<button id="nextBtn" class="btn btn-primary" onclick="checkAgree();">다음</button>
							</div>
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
  <script>
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
		  location.href = "/ssgin/joinForm.app";
	  }
  }
  </script>
</body>
</html>