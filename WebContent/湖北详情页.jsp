﻿<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html;charset=utf-8"
    pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
  <head>
  <% String provin=(String)request.getAttribute("province"); %>
    <title><%=provin %>详情页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/湖北详情页/styles.css" type="text/css" rel="stylesheet"/>
    <style type="text/css">
    #apDiv1 {
	position: absolute;
	width: 271px;
	height: 41px;
	z-index: 1;
	left: 605px;
	top: 66px;
}
    </style>
    <script src="resources/scripts/jquery-3.2.1.min.js"></script>
    <script src="resources/scripts/axure/axQuery.js"></script>
    <script src="resources/scripts/axure/globals.js"></script>
    <script src="resources/scripts/axutils.js"></script>
    <script src="resources/scripts/axure/annotation.js"></script>
    <script src="resources/scripts/axure/axQuery.std.js"></script>
    <script src="resources/scripts/axure/doc.js"></script>
    <script src="resources/scripts/messagecenter.js"></script>
    <script src="resources/scripts/axure/events.js"></script>
    <script src="resources/scripts/axure/recording.js"></script>
    <script src="resources/scripts/axure/action.js"></script>
    <script src="resources/scripts/axure/expr.js"></script>
    <script src="resources/scripts/axure/geometry.js"></script>
    <script src="resources/scripts/axure/flyout.js"></script>
    <script src="resources/scripts/axure/model.js"></script>
    <script src="resources/scripts/axure/repeater.js"></script>
    <script src="resources/scripts/axure/sto.js"></script>
    <script src="resources/scripts/axure/utils.temp.js"></script>
    <script src="resources/scripts/axure/variables.js"></script>
    <script src="resources/scripts/axure/drag.js"></script>
    <script src="resources/scripts/axure/move.js"></script>
    <script src="resources/scripts/axure/visibility.js"></script>
    <script src="resources/scripts/axure/style.js"></script>
    <script src="resources/scripts/axure/adaptive.js"></script>
    <script src="resources/scripts/axure/tree.js"></script>
    <script src="resources/scripts/axure/init.temp.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script src="resources/scripts/axure/math.js"></script>
    <script src="resources/scripts/axure/jquery.nicescroll.min.js"></script>
    <script src="data/document.js"></script>
    <script src="files/湖北详情页/data.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
  </head>
  <body>
  <% ArrayList<String> in=(ArrayList)request.getAttribute("increase"); %>
  <% Map<String,String> st = (Map)request.getAttribute("stat"); %>
  <% String date=(String)request.getAttribute("date"); %>
  <% ArrayList<ArrayList<String>> allIncrese= (ArrayList)request.getAttribute("allIncrease"); %>
  <% ArrayList<String> allDate=(ArrayList)request.getAttribute("allDate"); %>
    <div id="base" class="">

      <!-- Unnamed (矩形) -->
      <div id="u0" class="ax_default box_1">
        
        <textarea name="textarea" id="textarea"></textarea>
        <div id="u0_div" class=""></div>
        <div id="u0_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u1" class="ax_default label">
        <img id="u1_img" class="img " src="images/湖北详情页/regen/u1.svg"/>
        <div id="u1_text" class="text ">
          <p><span><%=provin %>疫情数据</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u2" class="ax_default _统计数据">
        <div id="u2_div" class=""></div>
        <input id="u2_input" type="text" value="感染患者" class="u2_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      
       <div id="u3" class="ax_default _统计数据">
        <div id="u3_div" class=""></div>
        <input id="u3_input" type="text" value=<%=st.get((String)provin+"感染患者") %> class="u3_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u4" class="ax_default _统计数据">
        <div id="u4_div" class=""></div>
        <input id="u4_input" type="text" value="昨日+" class="u4_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u5" class="ax_default _统计数据">
        <div id="u5_div" class=""></div>
        <input id="u5_input" type="text" value=<%=in.get(0) %> class="u5_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u6" class="ax_default _统计数据">
        <div id="u6_div" class=""></div>
        <input id="u6_input" type="text" value="疑似患者" class="u6_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u7" class="ax_default _统计数据">
        <div id="u7_div" class=""></div>
        <input id="u7_input" type="text" value=<%=st.get((String)provin+"疑似患者") %> class="u7_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u8" class="ax_default _统计数据">
        <div id="u8_div" class=""></div>
        <input id="u8_input" type="text" value="昨日+" class="u8_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u9" class="ax_default _统计数据">
        <div id="u9_div" class=""></div>
        <input id="u9_input" type="text" value=<%=in.get(1) %> class="u9_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u10" class="ax_default _统计数据">
        <div id="u10_div" class=""></div>
        <input id="u10_input" type="text" value="累计治愈" class="u10_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u11" class="ax_default _统计数据">
        <div id="u11_div" class=""></div>
        <input id="u11_input" type="text" value="累计死亡" class="u11_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u12" class="ax_default _统计数据">
        <div id="u12_div" class=""></div>
        <input id="u12_input" type="text" value=<%=st.get((String)provin+"治愈") %> class="u12_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u13" class="ax_default _统计数据">
        <div id="u13_div" class=""></div>
        <input id="u13_input" type="text" value="昨日+" class="u13_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u14" class="ax_default _统计数据">
        <div id="u14_div" class=""></div>
        <input id="u14_input" type="text" value="昨日+" class="u14_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u15" class="ax_default _统计数据">
        <div id="u15_div" class=""></div>
        <input id="u15_input" type="text" value=<%=st.get((String)provin+"死亡") %> class="u15_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u16" class="ax_default _统计数据">
        <div id="u16_div" class=""></div>
        <input id="u16_input" type="text" value=<%=in.get(2) %> class="u16_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u17" class="ax_default _统计数据">
        <div id="u17_div" class=""></div>
        <input id="u17_input" type="text" value=<%=in.get(3) %> class="u17_input"/>
      </div>

      <!-- Unnamed (动态面板) -->
      <div id="u18" class="ax_default">
        <div id="u18_state0" class="panel_state" data-label="新增确诊趋势" style="">
          <div id="u18_state0_content" class="panel_state_content">
          </div>
        </div>
        <div id="u18_state1" class="panel_state" data-label="新增疑似趋势" style="visibility: hidden;">
          <div id="u18_state1_content" class="panel_state_content">
          </div>
        </div>
        <div id="u18_state2" class="panel_state" data-label="治愈趋势" style="visibility: hidden;">
          <div id="u18_state2_content" class="panel_state_content">
          </div>
        </div>
        <div id="u18_state3" class="panel_state" data-label="死亡趋势" style="visibility: hidden;">
          <div id="u18_state3_content" class="panel_state_content">
          </div>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u19" class="ax_default button">
        <div id="u19_div" class=""></div>
        <div id="u19_text" class="text ">
          <p><span>新增确诊趋势</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u20" class="ax_default button">
        <div id="u20_div" class=""></div>
        <div id="u20_text" class="text ">
          <p><span>新增疑似趋势</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u21" class="ax_default button">
        <div id="u21_div" class=""></div>
        <div id="u21_text" class="text ">
          <p><span>治愈趋势</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u22" class="ax_default button">
        <div id="u22_div" class=""></div>
        <div id="u22_text" class="text ">
          <p><span>死亡趋势</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u23" class="ax_default label">
        <div id="u23_div" class=""></div>
        <div id="u23_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u24" class="ax_default primary_button">
        <div id="u24_div" class=""></div>
        <div id="u24_text" class="text ">
          <p><span>&nbsp;&nbsp; 返回地图</span></p>
        </div>
      </div>

      <!-- Unnamed (形状) -->
      <div id="u25" class="ax_default icon">
        <img id="u25_img" class="img " src="images/湖北详情页/regen/u25.svg"/>
        <div id="u25_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u26" class="ax_default label">
        <div id="u26_div" class=""></div>
        <div id="u26_text" class="text ">
          <p><span>选择日期</span></p>
        </div>
      </div>


        <div id="apDiv1">
        <form action="statServlet?flag=mapStat" method="get">
        <input name="selected" type="date" value=<%=date %> />
        <input type="hidden" name="flag" value="increase" />
        <input type="hidden" name="province" value=<%=provin %> />
        <input type="submit" value="确认" /> 
        </form>
        </div>
    <script src="resources/scripts/axure/ios.js"></script>   
  </body>
  <script type="text/javascript" src="resources/scripts/echarts.min.js" ></script>
         <script type="text/javascript">
var dom = document.getElementById("u18_state0");
var myChart = echarts.init(dom);
var app = {};
data = [<% 
    for(int i = 0 ; i < allDate.size() ; i++)
    {
    	%> [ "<%=allDate.get(i) %>" , <%=allIncrese.get(i).get(0) %> ],
    <%	
    }
%>];

var dateList = data.map(function (item) {
    return item[0];
});
var valueList = data.map(function (item) {
    return item[1];
});
option = null;
option = {
    title: {
        text: '感染患者新增趋势图'
    },
    tooltip: {
        trigger: 'axis'
    },
    legend: {
        data: ['人数']
    },
    grid: {
        containLabel: true
    },
    toolbox: {
        feature: {
            saveAsImage: {}
        }
    },
    xAxis: {
        type: 'category',
        boundaryGap: false,
        data: dateList
    },
    yAxis: {
        type: 'value'
    },
    series: [
        {
            name: '人数',
            type: 'line',
            stack: '总量',
            data: valueList
        }
    ]
};
;
if (option && typeof option === "object") {
    myChart.setOption(option, true);
}
       </script>
<script type="text/javascript">
var dom = document.getElementById("u18_state1");
var myChart = echarts.init(dom);
var app = {};
data = [<% 
    for(int i = 0 ; i < allDate.size() ; i++)
    {
    	%> [ "<%=allDate.get(i) %>" , <%=allIncrese.get(i).get(1) %> ],
    <%	
    }
%>];

var dateList = data.map(function (item) {
    return item[0];
});
var valueList = data.map(function (item) {
    return item[1];
});
option = null;
option = {
    title: {
        text: '疑似患者新增趋势图'
    },
    tooltip: {
        trigger: 'axis'
    },
    legend: {
        data: ['人数']
    },
    grid: {
        containLabel: true
    },
    toolbox: {
        feature: {
            saveAsImage: {}
        }
    },
    xAxis: {
        type: 'category',
        boundaryGap: false,
        data: dateList
    },
    yAxis: {
        type: 'value'
    },
    series: [
        {
            name: '人数',
            type: 'line',
            stack: '总量',
            data: valueList
        }
    ]
};
;
if (option && typeof option === "object") {
    myChart.setOption(option, true);
}
       </script>
       <script type="text/javascript">
var dom = document.getElementById("u18_state2");
var myChart = echarts.init(dom);
var app = {};
data = [<% 
    for(int i = 0 ; i < allDate.size() ; i++)
    {
    	%> [ "<%=allDate.get(i) %>" , <%=allIncrese.get(i).get(2) %> ],
    <%	
    }
%>];

var dateList = data.map(function (item) {
    return item[0];
});
var valueList = data.map(function (item) {
    return item[1];
});
option = null;
option = {
    title: {
        text: '治愈变化趋势图'
    },
    tooltip: {
        trigger: 'axis'
    },
    legend: {
        data: ['人数']
    },
    grid: {
        containLabel: true
    },
    toolbox: {
        feature: {
            saveAsImage: {}
        }
    },
    xAxis: {
        type: 'category',
        boundaryGap: false,
        data: dateList
    },
    yAxis: {
        type: 'value'
    },
    series: [
        {
            name: '人数',
            type: 'line',
            stack: '总量',
            data: valueList
        }
    ]
};
;
if (option && typeof option === "object") {
    myChart.setOption(option, true);
}
       </script>
       <script type="text/javascript">
var dom = document.getElementById("u18_state3");
var myChart = echarts.init(dom);
var app = {};
data = [<% 
    for(int i = 0 ; i < allDate.size() ; i++)
    {
    	%> [ "<%=allDate.get(i) %>" , <%=allIncrese.get(i).get(3) %> ],
    <%	
    }
%>];

var dateList = data.map(function (item) {
    return item[0];
});
var valueList = data.map(function (item) {
    return item[1];
});
option = null;
option = {
    title: {
        text: '死亡变化趋势图'
    },
    tooltip: {
        trigger: 'axis'
    },
    legend: {
        data: ['人数']
    },
    grid: {
        containLabel: true
    },
    toolbox: {
        feature: {
            saveAsImage: {}
        }
    },
    xAxis: {
        type: 'category',
        boundaryGap: false,
        data: dateList
    },
    yAxis: {
        type: 'value'
    },
    series: [
        {
            name: '人数',
            type: 'line',
            stack: '总量',
            data: valueList
        }
    ]
};
;
if (option && typeof option === "object") {
    myChart.setOption(option, true);
}
       </script>
</html>
