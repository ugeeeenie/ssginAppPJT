<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%@include file="../include/sidebar.jsp"%>

<div class="am-content">
	<div class="page-head">
       	<h2>EVENT<span class="dot">.</span></h2>
     </div>
     
     <div class="main-content">
     	<div class="gallery-container">
          <div class="item">
            <div class="photo">
              <div class="img"><img src="../../resources/img/event1.png">
                <div class="over">
                  <div class="func">
                  	<a href="#"><i class="icon s7-search"></i></a>
                  </div>
                </div>
              </div>
              <div class="description">
                <div class="desc">
                  <h4>ALL SSG FAMILY 쓱데이즈 1</h4><span>2017.10.16 - 2017.10.17</span>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="photo">
              <div class="img"><img src="../../resources/img/event2.png">
                <div class="over">
                  <div class="func">
                  	<a href="#"><i class="icon s7-search"></i></a>
                  </div>
                </div>
              </div>
              <div class="description">
                <div class="desc">
                  <h4>ALL SSG FAMILY 쓱데이즈 2</h4><span>2017.10.16 - 2017.10.17</span>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="photo">
              <div class="img"><img src="../../resources/img/event3.png">
                <div class="over">
                  <div class="func">
                  	<a href="#"><i class="icon s7-search"></i></a>
                  </div>
                </div>
              </div>
              <div class="description">
                <div class="desc">
                  <h4>스타필드 사은행사</h4><span>2017.10.13 - 2017.10.31</span>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="photo">
              <div class="img"><img src="../../resources/img/event4.png">
                <div class="over">
                  <div class="func">
                  	<a href="#"><i class="icon s7-search"></i></a>
                  </div>
                </div>
              </div>
              <div class="description">
                <div class="desc">
                  <h4>SSG카드 SUPER EVENT</h4><span>2017.07.20 - 2017.12.31</span>
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
  <script src="/resources/lib/jquery.magnific-popup/jquery.magnific-popup.min.js" type="text/javascript"></script>
  <script src="/resources/lib/masonry/masonry.pkgd.min.js" type="text/javascript"></script>
  <script src="/resources/js/app-page-gallery.js" type="text/javascript"></script>
  <script type="text/javascript">
    $(document).ready(function(){
    	// 전화번호 substr 띄우기
    	var phone = "${phone}";
    	phone = phone.substr(0, 3) + " - " + phone.substr(3, 1) + "*** - " + phone.substr(7);
    	$('#myPhone').text(phone + "  님");
    	
    	//initialize the javascript
    	App.init();
    	
    });
    
    $(window).load(function(){
    	App.pageGallery();
    });
  </script>
</body>
</html>