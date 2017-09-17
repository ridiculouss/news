<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新闻管理网</title>
<style>
 body{width:100%;margin:0px auto; font-size:12px;font-family:"宋体";background-color: #FFFFFF;}
 .blue {COLOR: white; FONT-FAMILY: "宋体"; FONT-SIZE: 12px}
 A:link {COLOR: black; TEXT-DECORATION: none}
 A:visited {COLOR: black; TEXT-DECORATION: none}
 A:hover {COLOR: red; TEXT-DECORATION: underline}
 #bok_0 {MARGIN:0 auto; left: expression((body.clientWidth-1000)/2);WIDTH: 1000px;}
 #topbar{height:6px; width:100%; line-height:6px; background:#154e7e; color:#fff; overflow:hidden;}
 .zzj_1{height:7px; width:100%;}
 .zzj_2{height:45px; width:100%;background:url(http://www16.zzu.edu.cn/msgw/images/nmtop.gif);text-align:right;line-height:45px;}
   .zzj_2a{height:100%; width:250px;text-align:center;float:left;}
   .zzj_2b{height:100%; width:750px;text-align:left;float:right;background:url(http://www.zzu.edu.cn/images/w_news.gif);line-height:54px;}
 .zzj_3{height:40px; width:100%;line-height:40px; font-weight:500; font-size:18px;font-family:"黑体";text-

align:center;color:#0056b7;background-color:#E6E6E6;}
 .zzj_4{height:32px; width:100%;line-height:32px; font-size:12px;font-family:"宋体";text-align:center;color:#333333;background-

color:#F1F1F1;}
 .zzj_5{mid-height:500px;height:auto;width:100%;background-color:#F8F8F8;}
   .zzj_5a{height:22px;width:100%;line-height:22px; font-size:12px;font-family:"宋体";text-align:left;color:#777777;overflow:hidden;}
   .zzj_5b{height:7px;width:100%;background:url(http://www.zzu.edu.cn/images/w_bar2s.gif);}

 .zzj_6{height:6px; width:100%;background-color:#8c0c08;}
 .zzj_7{height:40px; width:100%;line-height:20px;font-size:12px;font-family:"宋体";text-align:center;color:#666666;background-

color:#FFFFFF;}
 .zzj_8a{height:110px; width:100%;background-color:#F8F8F8;}
   .zzj_8a_0a{height:100%; width:60px;float:left;}
   .zzj_8a_1{height:100%; width:160px;float:left;line-height:15px; font-size:12px;font-family:"宋体";text-align:center;color:#43929e;}
   .zzj_8a_2{height:100%; width:20px;float:left;}
   .zzj_8a_0b{height:100%; width:60px;float:right;}
 .zzj_8b{height:45px;width:100%;background-color:#F8F8F8;}
 .zzj_8c{height:7px; width:100%;background-color:#F8F8F8;}
 .zzj_9{height:36px; width:100%;line-height:36px; font-weight:500; font-size:18px;font-family:"黑体";text-

align:left;color:#0056b7;background-color:#F2F2F2;}
 .zzj_9a{height:32px; width:100%;background-color:#E6E6E6;text-align:left;line-height:32px;}
 .zzj_9b{height:7px; width:100%;background-color:#E6E6E6;text-align:left;background:url(http://www.zzu.edu.cn/images/w_bar2.gif);}

 .zzj_f1{font-size:14px;color:#FF0000;}
 .zzj_f2{font-size:14px;color:#2352b1;}
 .zzj_f3{font-size:14px;color:#0000FF;}
 .zzj_f5{font-size:12px;color:#0000FF;font-family: 宋体;}
 .zzj_f6_a{font-size:14px;color:#0033CC;}
 .zzj_f6_b{font-size:14px;color:#0000FF;}
 .zzj_f6_c{font-size:14px;color:#014a8e;}
 .zzj_f7{font-size:12px;color:#666666;font-family: 宋体;float: right; text-align: left;margin-right: 100px;width: 350px;}
 .zzj_f8{width:14px;height:12px;border:0px solid #60bae2;vertical-align:middle;}

 .mybtn5a{font-family: 宋体; font-size: 12px; color: #0000FF;border:1px solid #60bae2;border-radius:3px;-moz-border-radius:3px; 

height:18px;line-height:18px;text-align:center;width:50px;}
 .mybtn5b{font-family: 宋体; font-size: 12px; color: #808080;border:1px solid #60bae2;border-radius:3px;-moz-border-radius:3px; 

height:18px;line-height:18px;text-align:center;width:50px;}
</style>
</head>

<body>
<iframe style="width:100%;height:220px" scrolling="no" frameborder="0" src="header.jsp"></iframe>
<div id="bok_0">

  <div class="zzj_1"></div>

  <div class="zzj_1"></div>
  <div class="zzj_3" style="text-align: center"><h1></h1><s:property value="#session.newsCoulumn"/></h1></div>
  <div class="zzj_4">共<s:property value="pageBean.totalCount"/>条，每页<s:property value="pageBean.eachPageCount"/>条，分<s:property value="pageBean.totalPage"/>页，&nbsp;&nbsp;&nbsp;
  <s:if test="pageBean.page != 1">
  <a href="${pageContext.request.contextPath}/index_findNewsByCoulumn.action?page=1&newsCoulumn=<s:property value="#session.newsCoulumn"/>"><span class="mybtn5b">第一页</span></a>&nbsp;&nbsp;
  <a href="${pageContext.request.contextPath }/index_findNewsByCoulumn.action?page=<s:property value="pageBean.page-1"/>&newsCoulumn=<s:property value="#session.newsCoulumn"/>"><span class="mybtn5b">前一页</span></a>&nbsp;&nbsp;
	</s:if>
	<s:if test="pageBean.page != pageBean.totalPage">
	<a href="${pageContext.request.contextPath }/index_findNewsByCoulumn.action?page=<s:property value="pageBean.page+1"/>&newsCoulumn=<s:property value="#session.newsCoulumn"/>"><span class="mybtn5a">下一页</span></a>&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath }/index_findNewsByCoulumn.action?page=<s:property value="pageBean.totalPage"/>&newsCoulumn=<s:property value="#session.newsCoulumn"/>"><span class="mybtn5a">最后一页</span></a>
	</s:if>
</div>
  <div class="zzj_5">   
  <s:iterator var="news" value="pageBean.list" status="status">
  
<div class="zzj_5a">
[<s:property value="#status.count"/>] <s:property value="#news.date"/>&nbsp;<a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" target="_blank"><span class="zzj_f6_c"><s:property value="#news.title"/></span></a>

<span class="zzj_f7">（来源：<s:property value="#news.source"/>，作者：<s:property value="#news.author"/>，已阅<s:property value="#news.click"/>次）</span></div><div class="zzj_5b">

</div>

	</s:iterator>
  </div>
  
  <div class="zzj_1"></div>
  <div class="zzj_6"></div>
  <div class="zzj_1"></div>
  <div class="zzj_7">本页面在Internet Explorer 8+、Firefox 18+、Safari 5+、Google Chrome 22+、Opera 12+等浏览器中进行了兼容性验证<br />
    建议使用1024×768以上分辨率/小字体/真彩浏览本网站
  </div>
</div>
</form>
</body>
</html>