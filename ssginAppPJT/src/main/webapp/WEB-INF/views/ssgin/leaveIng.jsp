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
   <style>
	.wrap-loading{ /*화면 전체를 어둡게 합니다.*/
		position: fixed;
		left:0;
		right:0;
		top:0;
		bottom:0;
		background: white;
		/*filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#20000000', endColorstr='#20000000');    /* ie */
		z-index : 99999;
	}
	.wrap-loading div{ /*로딩 이미지*/
		position: fixed;
        top:30%;
        /* left:50%;
        margin-left: -21px;
        margin-top: -21px; */
    }
    .display-none{ /*감추기*/
        display:none;
    }
	</style>
</head>
<body style="overflow-y:hidden;">
<div class="am-wrapper am-nosidebar-left">
    <<!-- div class="am-top-header">
      <div class="container-fluid">
        <div class="navbar-header">
          <div class="page-title"><span>SSG IN.</span></div>
    	</div>
      </div>
    </div> -->
    
   
		
    <div class="am-content">
      <!-- Main content -->
      <div class="main-content">
      	 <div class="wrap-loading">
			<div><img src="/resources/img/logo/loading.gif" style="width:100%;position:fixed;top:20%;"/></div>
			<div style="left:31%;top:60%;"><span style="font-weight:bold;font-size:24pt;color:#555555;font-family:'NanumSquare';">
				SSG- OUT..</span></div>
		</div>
		<input type="hidden" id="hash" value="${loginUser.user_id}">
		<input type="hidden" id="state" value="${state}">
		<input type="hidden" id="ip" value="${ip}">
		
		<div class="panel panel-info" style="width:100%;">
			<div class="panel-heading">
				<h3 class="panel-title">Filter</h3>
			</div>
			<div class="panel-body" id="filter">
			</div>
		</div>
		<!-- /.content -->
	  </div>
	 </div>
</div>

  <script src="/resources/lib/jquery/jquery.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js" type="text/javascript"></script>
  <script src="/resources/js/main.js" type="text/javascript"></script>
  <script src="/resources/lib/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
  
  <script src="/resources/js/ethereum/web3.js"></script>
  <script src="/resources/js/ethereum/clipboard.min.js"></script>
  <script src="/resources/js/ethereum/ethereum.js"></script>
  <script src="/resources/js/ethereum/ssginLeave.js"></script>
</body>
</html>