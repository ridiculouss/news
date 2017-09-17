<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>新闻管理网</title>
<link href="css/style.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/banner1.js"></script>
<style>
 body{width:100%;margin:0px auto; font-size:12px;font-family:"宋体";background-color: #FFFFFF;}
 .blue {COLOR: white; FONT-FAMILY: "宋体"; FONT-SIZE: 12px}
 A:link {COLOR: black; TEXT-DECORATION: none}
 A:visited {COLOR: black; TEXT-DECORATION: none}
 A:hover {COLOR: red; TEXT-DECORATION: underline}
 #bok_0 {MARGIN:0 auto; left: expression((body.clientWidth-1000)/2);WIDTH: 1000px;}
 #topbar{height:6px; width:100%; line-height:6px; background:#154e7e; color:#fff; overflow:hidden;}
 .zzj_1{height:7px; width:100%;}
 .zzj_2{height:54px; width:100%;}
   .zzj_2a{height:100%; width:250px;text-align:center;float:left;}
   .zzj_2b{height:100%; width:750px;text-align:left;float:right;background:url(http://www.zzu.edu.cn/images/w_news.gif);line-height:54px;}
 .zzj_3{height:60px; width:100%;line-height:60px; font-weight:500; font-size:18px;font-family:"黑体";text-align:center;color:#000;background-color:#E6E6E6;}
 .zzj_4{height:40px; width:100%;line-height:40px; font-weight:100; font-size:14px;font-family:"宋体";text-align:center;color:#333;background-color:#F1F1F1;}
 .zzj_5{mid-height:300px;height:auto;width:960px;line-height:26px; font-size:14px;font-family:"宋体";text-align:left;color:#333;background-color:#F8F8F8;padding:20px;}
 .zzj_6{height:6px; width:100%;background-color:#8c0c08;}
 .zzj_7{height:40px; width:100%;line-height:20px;font-size:12px;font-family:"宋体";text-align:center;color:#666666;background-color:#FFFFFF;}
 .zzj_8a{height:110px; width:100%;background-color:#F8F8F8;}
   .zzj_8a_0a{height:100%; width:60px;float:left;}
   .zzj_8a_1{height:100%; width:160px;float:left;line-height:15px; font-size:12px;font-family:"宋体";text-align:center;color:#43929e;}
   .zzj_8a_2{height:100%; width:20px;float:left;}
   .zzj_8a_0b{height:100%; width:60px;float:right;}
 .zzj_8b{height:45px;width:100%;background-color:#F8F8F8;}
 .zzj_8c{height:7px; width:100%;background-color:#F8F8F8;}
 .zzj_9{height:36px; width:100%;line-height:36px; font-weight:500; font-size:18px;font-family:"黑体";text-align:left;color:#0056b7;background-color:#F2F2F2;}
 .zzj_9a{height:32px; width:100%;background-color:#E6E6E6;text-align:left;line-height:32px;}
 .zzj_9b{height:7px; width:100%;background-color:#E6E6E6;text-align:left;background:url(http://www.zzu.edu.cn/images/w_bar2.gif);}
 .zzj_f1{font-size:14px;color:#FF0000;}
 .zzj_f2{font-size:14px;color:#000;}
 .zzj_f3{font-size:14px;color:#0000FF;}
</style>
</head>

<body>
<div id="bok_0">
  <div class="zzj_1"></div>
  <div class="zzj_3"><s:property value="#session.existNews.title" /></div>
  <div class="zzj_4">
  	作者：<span class="zzj_f2"><s:property value="#session.existNews.author" /></span>&nbsp; &nbsp;
  	信息来源：<span class="zzj_f2"><s:property value="#session.existNews.source" /></span>&nbsp; &nbsp;
  	发布日期：<span class="zzj_f2">${ session.existNews.date}</span>&nbsp; &nbsp;
  	所属栏目：<span class="zzj_f2"><s:property value="#session.existNews.coulumn" /></span>&nbsp; &nbsp;
  	浏览量：<span class="zzj_f2"><s:property value="#session.existNews.click" /></span>
  </div>
  
  <div class="zzj_5">  
  	<div class="aaa">  
    <p>
    <font size="3">
    <pre style="white-space: pre-wrap;/* css-3 */
	white-space: -moz-pre-wrap;/* Mozilla, since 1999 */
	white-space: -pre-wrap;/* Opera 4-6 */
	white-space: -o-pre-wrap;/* Opera 7 */
	word-wrap: break-word;/* Internet Explorer 5.5+ */" >
    <s:property value="#session.existNews.content" />
    </pre>
    </font>
    <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img width="660" src="${pageContext.request.contextPath }/<s:property value="#session.existNews.image" />" border="0" /> 
    </p>
    </div>
  </div>
  
  <div class="zzj_1"></div>
  <div class="zzj_6"></div>
  <div class="zzj_1"></div>
  <div class="zzj_7">兼容Internet Explorer 8+、Firefox 18+、Safari 5+、Chrome 22+、Opera 12+等浏览器<br />
    建议1024×768以上分辨率、小字体、真彩浏览
  </div>
</div>
</body>
</html>
