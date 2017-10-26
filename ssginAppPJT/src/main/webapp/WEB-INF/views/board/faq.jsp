<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%@include file="../include/sidebar.jsp"%>

<div class="am-content" style="max-height:570px;">
	<div class="page-head">
       	<h2>FAQ<span class="dot">.</span></h2>
     </div>
     
     <div class="main-content">
     	<div class="row" style="margin:0;">
	     	<!--Hover table-->
	        <div class="col-sm-12">
	            <div id="accordion4" class="panel-group accordion accordion-semi">
	            <table style="width:100%;">
	            	<c:forEach items="${faq}" var="faq" varStatus="state">
	            		<tr>
	            		<td style="border-top:1px solid lightgray;border-bottom: 1px solid lightgray;">
            			  <div class="panel panel-default">
			                <div class="panel-heading danger">
			                  <h4 class="panel-title">
			                  	<a data-toggle="collapse" data-parent="#accordion4" href="#ac4-${state.index}" class="collapsed">
			                  	${faq.faq_seq}&nbsp;&nbsp;&nbsp;${faq.faq_title}
			                  	<label class="pull-right" style="margin:0;"><i class="s7-angle-down"></i></label></a>
			                  </h4>
			                </div>
			                <div id="ac4-${state.index}" class="panel-collapse collapse">
			                  <div class="panel-body">${faq.faq_content}</div>
			                </div>
			              </div>
	            		</td>
	            		</tr>
	            	</c:forEach>
	            </table>
	            <div class="col-sm-12">
	            	<div class="dataTables_paginate paging_simple_numbers" id="table1_paginate">
	            		<ul class="pagination">
	            			<c:if test="${paging.pageNo eq paging.firstPageNo}">
	            				<li class="paginate_button previous disabled" id="table_previous">
	            					<a href="#" aria-controls="table" data-dt-idx="0" tabindex="0">이전</a>
	            				</li>
	            			</c:if>
	            			<c:if test="${paging.pageNo != paging.firstPageNo}">
	            				<li class="paginate_button previous" id="table_previous">
	            					<a href="javascript:prevPage(${paging.pageNo});" aria-controls="table" data-dt-idx="0" tabindex="0">이전</a>
	            				</li>
	            			</c:if>
	            			<c:forEach begin="${paging.firstPageNo}" end="${paging.endPageNo}" step="1" var="num">
	            				<c:if test="${paging.pageNo eq num}">
		            				<li class="paginate_button active">
		            					<a href="#" aria-controls="table" data-dt-idx="${num}" tabindex="0">${num}</a>
		            				</li>
	            				</c:if>
	            				<c:if test="${paging.pageNo != num}">
		            				<li class="paginate_button">
		            					<a href="javascript:clickPage(${num});" aria-controls="table" data-dt-idx="${num}" tabindex="0">${num}</a>
		            				</li>
	            				</c:if>
	            			</c:forEach>
	            			<c:if test="${paging.pageNo eq paging.finalPageNo}">
	            				<li class="paginate_button next disabled" id="table_next">
	            					<a href="#" aria-controls="table" data-dt-idx="6" tabindex="0">다음</a>
	            				</li>
	            			</c:if>
	            			<c:if test="${paging.pageNo != paging.finalPageNo}">
	            				<li class="paginate_button next" id="table_next">
	            					<a href="javascript:nextPage(${paging.pageNo};)" aria-controls="table" data-dt-idx="6" tabindex="0">다음</a>
	            				</li>
	            			</c:if>
	            		</ul>
	            	</div>
	            </div>
	          </div>
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
  <script type="text/javascript">
    $(document).ready(function(){
    	// 전화번호 substr 띄우기
    	var phone = "${phone}";
    	phone = phone.substr(0, 3) + " - " + phone.substr(3, 1) + "*** - " + phone.substr(7);
    	$('#myPhone').text(phone + "  님");
    	
    	//initialize the javascript
    	App.init();
    });
    
    function prevPage(pageNo){
    	location.href = "/board/faq.app?pageNo=" + (pageNo - 1);
    }
    
    function clickPage(pageNo){
    	location.href = "/board/faq.app?pageNo=" + (pageNo);
    }
    
    function nextPage(pageNo){
    	location.href = "/board/faq.app?pageNo=" + (pageNo + 1);
    }
  </script>
</body>
</html>