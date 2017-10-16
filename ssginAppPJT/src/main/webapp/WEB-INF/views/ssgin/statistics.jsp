<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@include file="../include/sidebar.jsp"%>

<!-- Main content -->
    <div class="am-content">
    	<div class="page-head">
        	<h2 align="center">SSG IN 통계</h2>
      	</div>
      	
      <div class="main-content">
        <!--+general-chart("classes", "title", "height", "id", "counter value", "counter desc", tools enabled (use true or false))-->
        <div class="row">
          <div class="col-md-4">
            <div class="widget widget-pie">
              <div class="widget-head"><span class="title">Top Sales</span></div>
              <div class="row chart-container">
                <div class="col-md-6">
                  <div id="widget-top-1" class="chart"></div>
                </div>
                <div class="col-md-6">
                  <div class="legend"></div>
                </div>
              </div>
              <div class="row chart-info">
                <div class="col-xs-4"><span class="title">New Clients</span><span data-toggle="counter" data-end="180" class="number">0</span></div>
                <div class="col-xs-4"><span class="title">Total Sales</span><span data-toggle="counter" data-end="500" data-prefix="$" class="number">$0</span></div>
                <div class="col-xs-4"><span class="title">Refunds</span><span data-toggle="counter" data-end="90" class="number">0</span></div>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="widget widget-pie">
              <div class="widget-head"><span class="title">Monthly Visits</span></div>
              <div class="row chart-container">
                <div class="col-md-6">
                  <div id="widget-top-2" class="chart"></div>
                </div>
                <div class="col-md-6">
                  <div class="legend"></div>
                </div>
              </div>
              <div class="row chart-info">
                <div class="col-xs-4"><span class="title">New Visitors</span><span data-toggle="counter" data-end="25" data-suffix="%" class="number">0%</span></div>
                <div class="col-xs-4"><span class="title">Conversions</span><span data-toggle="counter" data-end="350" class="number">0</span></div>
                <div class="col-xs-4"><span class="title">Bounce Rate</span><span data-toggle="counter" data-end="40" data-suffix="%" class="number">0%</span></div>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="widget widget-pie widget-pie-stats">
              <div class="widget-head"><span class="title">Advertisement</span></div>
              <div class="row chart-container">
                <div class="col-md-6">
                  <div id="widget-top-3" class="chart"></div>
                </div>
                <div class="col-md-6">
                  <div class="legend">
                    <table>
                      <tbody>
                        <tr>
                          <td class="legendColorBox">
                            <div>
                              <div style="width:10px;height:10px;overflow:hidden" class="clr-alt3"></div>
                            </div>
                          </td>
                          <td class="legendLabel">Google Ads</td>
                          <td class="legendData">$752</td>
                        </tr>
                        <tr>
                          <td class="legendColorBox">
                            <div>
                              <div style="width:10px;height:10px;overflow:hidden" class="clr-alt4"></div>
                            </div>
                          </td>
                          <td class="legendLabel">Facebook</td>
                          <td class="legendData">$300</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div class="row chart-info">
                <div class="col-xs-6">
                  <div id="spk1" class="sparkline"></div><span class="title">Profit</span><span data-toggle="counter" data-end="70" data-suffix="%" class="number">0%</span>
                </div>
                <div class="col-xs-6">
                  <div id="spk2" class="sparkline"></div><span class="title">Return</span><span data-toggle="counter" data-end="30" data-suffix="%" class="number">0%</span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <div class="row">
              <div class="col-md-6">
                                <div class="widget widget-fullwidth widget-small">
                                  <div class="widget-head">
                                    <div class="tools"><span class="value">25.3K</span></div><span class="title">Current Earnings</span>
                                  </div>
                                  <div class="chart-container">
                                    <div id="linechart-mini1" style="height: 92px;"></div>
                                  </div>
                                </div>
                                <div class="widget widget-fullwidth widget-small">
                                  <div class="widget-head">
                                    <div class="tools"><span class="value">18%</span></div><span class="title">Support Tickets</span>
                                  </div>
                                  <div class="chart-container">
                                    <div id="barchart-mini1" style="height: 92px;"></div>
                                  </div>
                                </div>
              </div>
              <div class="col-md-6">
                <div class="widget widget-radar">
                  <div class="widget-head">
                    <div class="tools"><span class="icon s7-upload"></span><span class="icon s7-edit"></span></div><span class="title">Page Views</span>
                  </div>
                  <div class="chart-container">
                    <canvas id="radar-chart1" height="180px"></canvas>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6">
                    <div class="widget widget-fullwidth line-chart">
                      <div class="widget-head">
                        <div class="tools"><span class="icon s7-upload"></span><span class="icon s7-edit"></span><span class="icon s7-close"></span></div><span class="title">Filled Points</span>
                      </div>
                      <div class="chart-container">
                        <div class="counter">
                          <div class="value">80%</div>
                          <div class="desc">More Visits</div>
                        </div>
                        <div id="line-chart1" style="height: 260px;"></div>
                      </div>
                    </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <div class="widget widget-calendar">
              <div class="cal-container">
                <div class="cal-notes"><span class="day">Thursday</span><span class="date">September 24</span><span class="title">Notes<span class="icon s7-plus"></span></span>
                  <ul>
                    <li><span class="hour">14h</span><span class="event-name">Meeting with investors</span></li>
                    <li><span class="hour">8h</span><span class="event-name">Dentist date</span></li>
                  </ul>
                </div>
                <div class="cal-calendar">
                  <div class="ui-datepicker"></div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12"></div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="widget widget-map">
              <div class="widget-head"><span class="title">Global Stats</span></div>
              <div class="map-container">
                <div id="world-map" style="height: 227px;"></div>
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
  <script src="/resources/lib/jquery-flot/jquery.flot.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery-flot/jquery.flot.pie.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery-flot/jquery.flot.resize.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery-flot/plugins/jquery.flot.orderBars.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery-flot/plugins/curvedLines.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/maps/jquery-jvectormap-us-merc-en.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/maps/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/maps/jquery-jvectormap-uk-mill-en.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/maps/jquery-jvectormap-fr-merc-en.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/maps/jquery-jvectormap-us-il-chicago-mill-en.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/maps/jquery-jvectormap-au-mill-en.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/maps/jquery-jvectormap-in-mill-en.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/maps/jquery-jvectormap-map.js" type="text/javascript"></script>
  <script src="/resources/lib/jquery.vectormap/maps/jquery-jvectormap-ca-lcc-en.js" type="text/javascript"></script>
  <script src="/resources/lib/countup/countUp.min.js" type="text/javascript"></script>
  <script src="/resources/lib/chartjs/Chart.min.js" type="text/javascript"></script>
  <script src="/resources/js/app-dashboard.js" type="text/javascript"></script>
  <script type="text/javascript">
    $(document).ready(function(){
    	// 전화번호 substr 띄우기
    	var phone = "${phone}";
    	phone = phone.substr(0, 3) + " - " + phone.substr(3, 1) + "*** - " + phone.substr(7);
    	$('#myPhone').text(phone + "  님");
    	
    	//initialize the javascript
    	App.init();
    	App.dashboard();
    
    });
  </script>
</body>
</html>