<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
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
    <div class="am-content">
      <!-- 캐러셀 시작 -->
		<!-- <div class="form-group text-center"> -->
			<div id="carousel-example-generic" class="carousel slide">
				<!-- Indicators -->
				<!-- <ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol> -->
				<!-- Carousel items -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="/resources/img/intro_n_1.png" alt="First slide">
					</div>
					<div class="item">
						<img src="/resources/img/intro_n_2.png" alt="Second slide">
					</div>
					<div class="item">
						<img src="/resources/img/intro_n_3.png" alt="Third slide">
						<a href="/ssgin/joinForm.app"><img src="../../resources/img/go.png"></a>
					</div>
				</div>
				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev" wrap="false">
	              <!-- <span class="icon-prev"></span> -->
	               <img src="../../left.png" class="control">
	            </a>
	            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next" wrap="false">
	             <!--  <span class="icon-next"></span> -->
	              <img src="../../right.png" class="control">
	            </a>
			</div>
		<!-- </div> -->
	<!-- 캐러셀 끝 -->
  </div>
  <script src="/resources/lib/jquery/jquery.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js" type="text/javascript"></script>
  <script src="/resources/js/main.js" type="text/javascript"></script>
  <script src="/resources/lib/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
  <script type="text/javascript">
  $('.carousel').carousel('pause');
  </script>
</body>