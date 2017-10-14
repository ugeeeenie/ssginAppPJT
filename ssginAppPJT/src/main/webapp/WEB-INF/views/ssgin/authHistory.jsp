<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%@include file="../include/sidebar.jsp"%>

<!-- Main content -->
  <div class="am-content">
      <div class="page-head">
        <h2 align="center">인증내역 보기</h2>
      </div>
      
	  <div class="main-content">
	   <div class="row">
          <div class="col-md-12">
            <ul class="timeline">
            	<c:forEach items="${list}" var="log">
            		<c:if test="${log.auth_success eq 'Y'}">
	            		<li class="timeline-item success">
			                <div class="timeline-date"><span>인증완료</span></div>
			                <div class="timeline-content">
		                  	<div class="timeline-header"><span class="timeline-time">${log.auth_time}</span>
		                    <p class="timeline-activity"><a href="#">${log.auth_url}</a></p>
		                  </div>
		                </div>
		              </li>
			        </c:if>
			        <c:if test="${log.auth_success != 'Y'}">
	            		<li class="timeline-item fail">
			                <div class="timeline-date"><span>인증실패</span></div>
			                <div class="timeline-content">
		                  	<div class="timeline-header"><span class="timeline-time">${log.auth_time}</span>
		                    <p class="timeline-activity"><a href="#">${log.auth_url}</a></p>
		                  </div>
		                </div>
		              </li>
			        </c:if>
            	</c:forEach>
              <li class="timeline-loadmore" style="list-style:none;"><a href="#" class="load-more-btn"><span>더보기</span></a></li>
            </ul>
          </div>
        </div>
      </div>
  </div>
  <!-- End Main content -->
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