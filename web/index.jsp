<%@ page import="java.util.List" %>
<%@page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/30
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>全国天气查询</title>
    <link rel="shortcut icon" href="image/1.icon">
    <style type="text/css">
      body {
        background-image: url("image/0.jpg");
        background-repeat: no-repeat;
        background-size: 100%;
      }
      #query{
        text-align:center;
        margin-top:30px;
      }
      #in1{
        width:250px;
        height:30px;
        opacity: 0.6;
        font-size:15px;
        vertical-align: middle;
      }
      #in2{
        height:30px;
        width:65px;
        font-size:17px;
        vertical-align: middle;
      }
      #content{
        width: 80%;
        margin:0 auto;
        text-indent: 2em;
        height: 400px;
      }
      h3{
        text-align: center;
      }
      #bottom{
        text-align: center;
        margin-top: 50px;
        color: cadetblue;
      }
      #bottom2{
        text-align: center;
        margin-top: 560px;
        color: black;
      }
      h4{
        color: red;
      }
      span{text-indent: 3em;}
    </style>
    <script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
    <script type="text/javascript">
        function fun() {
            var city = $("#in1").val();
            if(city == null || city == ""){
              alert("请输入您要查询的城市！")
              return false;
            }else {
              return true;
            }
        }
    </script>
  </head>
  <body>
  <div id="query">
    <form action="/query" method="get" onsubmit="return fun();">
      <input type="text" name="city" placeholder="请输入市级以上的城市" id="in1"/>
      <input type="submit" value="查询" id="in2">
    </form>
  </div>
      <%List<String> list = (List<String>) request.getAttribute("list");
        if(list!=null && list.size()>0){
        String str[] = new String[list.size()];

            for(int i=0;i<list.size();i++){
              if(list.get(i).startsWith("访问被限制")) {
                  return ;
              }else {
                str[i] = list.get(i).toString();
              }
            }%>
  <div id="content">
              <h4>今日天气</h4>
              <span>所属省份:</span> <span id="span"><%=str[0]%></span><br/>
              <span>城市名:</span> <span><%=str[1]%></span><br/>
              <span>查询时间:</span> <span><%=str[4]%></span><br/>
              <span>温度:</span> <span><%=str[5]%></span><br/>
              <span>天气:</span> <span><%=str[6]%></span>&nbsp;<span><%=str[7]%></span><br/>
              <span><%=str[10]%></span><br/>
              <span><%=str[11]%></span><br/>
              <h4>明日天气</h4>
              <span>温度:</span> <span><%=str[12]%></span><br/>
              <span>天气:</span> <span><%=str[13]%>&nbsp;<span><%=str[14]%></span></span><br/>
              <h4>后天天气</h4>
              <span>温度:</span> <span><%=str[17]%></span><br/>
              <span>天气:</span> <span><%=str[18]%>&nbsp;<span><%=str[19]%></span></span><br/>
              <h4>城市简介</h4>
              <span><%=str[22]%></span><br/>
    <div id="bottom">
      &copy;&nbsp;copyright lzf link http://www.webxml.com.cn &nbsp;2017.3.31<br/><br/><br/>
    </div>
  </div>
        <%  }else{%>
  <div id="bottom2">
    &copy;&nbsp;copyright lzf link http://www.webxml.com.cn &nbsp;2017.3.31<br/><br/><br/>
  </div>
  <%}%>
  <script type="text/javascript">
    var city = $("#span").html();
    switch (city){
      case "浙江":
        $("body").css({
          'background-image': 'url("image/浙江.jpg")',
              'background-repeat': 'no-repeat',
              'background-size': '100%'
         });
        break;
      case "直辖市":
        $("body").css({
          'background-image': 'url("image/上海.jpg")',
          'background-repeat': 'no-repeat',
          'background-size': '100%'
        });
        break;
      case "内蒙古":
        $("body").css({
          'background-image': 'url("image/内蒙古.jpg")',
          'background-repeat': 'no-repeat',
          'background-size': '100%'
        });
        break;
      case "四川":
        $("body").css({
          'background-image': 'url("image/四川.jpg")',
          'background-repeat': 'no-repeat',
          'background-size': '100%'
        });
        break;
      case "广东":
        $("body").css({
          'background-image': 'url("image/广东.jpg")',
          'background-repeat': 'no-repeat',
          'background-size': '100%'
        });
        break;
      case "新疆":
        $("body").css({
          'background-image': 'url("image/新疆.jpg")',
          'background-repeat': 'no-repeat',
          'background-size': '100%'
        });
        break;
      case "江苏":
        $("body").css({
          'background-image': 'url("image/江苏.jpg")',
          'background-repeat': 'no-repeat',
          'background-size': '100%'
        });
        break;
      case "江西":
        $("body").css({
          'background-image': 'url("image/江西.jpg")',
          'background-repeat': 'no-repeat',
          'background-size': '100%'
        });
        break;
      case "河南":
        $("body").css({
          'background-image': 'url("image/河南.jpg")',
          'background-repeat': 'no-repeat',
          'background-size': '100%'
        });
        break;
      case "湖南":
        $("body").css({
          'background-image': 'url("image湖南.jpg")',
          'background-repeat': 'no-repeat',
          'background-size': '100%'
        });
        break;
      case "西藏":
        $("body").css({
          'background-image': 'url("image/西藏.jpg")',
          'background-repeat': 'no-repeat',
          'background-size': '100%'
        });
        break;
      case "贵州":
        $("body").css({
          'background-image': 'url("image/贵州.jpg")',
          'background-repeat': 'no-repeat',
          'background-size': '100%'
        });
        break;
      case "辽宁":
        $("body").css({
          'background-image': 'url("image/辽宁.jpg")',
          'background-repeat': 'no-repeat',
          'background-size': '100%'
        });
        break;
      case "陕西":
        $("body").css({
          'background-image': 'url("image/陕西.jpg")',
          'background-repeat': 'no-repeat',
          'background-size': '100%'
        });
        break;
      case "黑龙江":
        $("body").css({
          'background-image': 'url("image/黑龙江.jpg")',
          'background-repeat': 'no-repeat',
          'background-size': '100%'
        });
        break;
      default:
        $("body").css({
          'background-image': 'url("image/0.jpg")',
          'background-repeat': 'no-repeat',
          'background-size': '100%'
        });
    }
  </script>
  </body>
</html>
