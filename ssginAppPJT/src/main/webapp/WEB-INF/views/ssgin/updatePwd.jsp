<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/sidebar-back.jsp"%>

<!-- Main content -->
   <div class="am-content">
     <div class="main-content">
		<div class="form-group text-center">
			<div class="row">
				<!-- left column -->
				<div class="col-md-12">
					<!-- general form elements -->
					<div class="box">
						<div class="box-header with-border">
							<h2>비밀번호 변경</h2>
						</div>
						<div class="box-body" id="joinBox" style="display: block;">
							<form action="/ssgin/main.app" method="post">
							<div class="form-group">
								<input type="password" class="form-control" id="pwd" name="pwd" placeholder="비밀번호 6자리 입력(숫자만)">
							</div>
							<div class="form-group text-center">
								<input type="submit" id="nextBtn" class="btn btn-primary" value="다음">
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
  </div>
	<!-- /.content -->
</div>

  <script src="/resources/lib/jquery/jquery.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js" type="text/javascript"></script>
  <script src="/resources/js/main.js" type="text/javascript"></script>
  <script src="/resources/lib/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="/resources/js/app-dashboard.js" type="text/javascript"></script>
  <script type="text/javascript">
    $(document).ready(function(){
    	//initialize the javascript
    	App.init();
    	App.dashboard();
    });
  </script>
</body>
</html>