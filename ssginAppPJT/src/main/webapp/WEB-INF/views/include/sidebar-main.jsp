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
  <link rel="stylesheet" type="text/css" href="/resources/css/mainStyle.css" />
  <style type="text/css">
  .bottom-sidebar {
  	position: relative;
    top: 270px;
  }
  .bottom-sidebar li {
  	float : left;
  	width : 25%;
  }
  </style>
</head>
<body>
  <div class="am-wrapper">
    <nav class="navbar navbar-default navbar-fixed-top am-top-header" style="background:#f0f0f0;">
      <div class="container-fluid">
        <div class="navbar-header">
          <div class="page-title"><span style="color:rgb(49,51,64);">SSG IN.</span></div>
          <a href="#" class="am-toggle-left-sidebar navbar-toggle collapsed">
          <span class="icon-bar">
	          <span style="background-color:rgb(49,51,64);"></span>
	          <span style="background-color:rgb(49,51,64);"></span>
	          <span style="background-color:rgb(49,51,64);"></span>
          </span></a>
        </div>
      </div>
    </nav>
    <div class="am-left-sidebar">
      <div class="content">
       <div class="page-title">
       		<div class="am-logo">
	        	<div class="row" style="position:relative;top:20%;">
	       			<a href="/ssgin/main.app">
		        		<img src="../../resources/img/logo/ssgin_letter.png">
		        		<span style="position:relative;left:-12%;top:-2px;">
		        			<img src="/resources/img/logo/home_icon.png" style="width:32px;"></span>
	        		</a>
	       		</div>
	        	<div class="row">
	        		<span style="font-size:small;" id="myPhone"></span>
	         	</div>
	         </div>
        </div>
        <ul class="sidebar-elements">
          <li class="parents"><a href="/ssgin/myBlockInfo.app" class="label label-primary"><i class="s7-plugin"></i>MY 쓱- BLOCK&nbsp;&nbsp;</a>
          </li>
          <li class="parents"><a href="/ssgin/authHistory.app" class="label label-primary">인증내역보기</a>
          </li>
          <li class="parents"><a href="/ssgin/ssginInfo.app" class="label label-primary">SSG IN. 소개</a>
          </li>
          <li class="parents"><a href="/ssgin/settings.app" class="label label-primary"><i class="s7-settings"></i>&nbsp;&nbsp;SETTINGS</a>
          </li>
        </ul>
        <div class="bottom-sidebar">
	        <ul class="sidebar-elements">
	          <li class="parents"><a href="/board/notice.app" style="font-size:x-small;padding:10px;"><i class="s7-comment" style="font-size:x-large;"></i><br>공지사항</a>
	          </li>
	          <li class="parents"><a href="/board/faq.app" style="font-size:x-small;padding:10px;"><i class="s7-magic-wand" style="font-size:x-large;"></i><br>FAQ</a>
	          </li>
	          <li class="parents"><a href="/board/event.app" style="font-size:x-small;padding:10px;"><i class="s7-gift" style="font-size:x-large;"></i><br>EVENT</a>
	          </li>
	          <li class="parents"><a href="/board/useStore.app" style="font-size:x-small;padding:10px;"><i class="s7-browser" style="font-size:x-large;"></i><br>사용처</a>
	          </li>
	        </ul>
        </div>
        <!--Sidebar bottom content-->
      </div>
    </div>