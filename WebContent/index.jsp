<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>新闻管理网</title>
<link href="css/style.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/banner1.js"></script>
</head>

<body>
<iframe style="width:100%;height:220px" scrolling="no" frameborder="0" src="header.jsp"></iframe>
<div class="content">
   <div class="content_left">
      <div class="left_top">
         <div class="left_top_zuo">
            <div id="fader">
               <ul>
                  <li><a href="" title=""><img src="images/01.jpg" width="372px" height="242px" alt="李克强在座谈会频发问要求官员不要念稿"/></a></li>
                  <li><a href="" title=""><img src="images/02.jpg" width="372px" height="242px" alt="地铁无WIFI覆盖就别怪它影响运行"/></a></li>
                  <li><a href="" title=""><img src="images/03.jpg" width="372px" height="242px" alt="全球生育子女条件排名榜出炉 瑞士夺冠"/></a></li>
                  <li><a href="" title=""><img src="images/04.jpg" width="372px" height="242px" alt="《看客》美国大选特刊：奥巴马，总统难做"/></a></li>
                  <li><a href="" title=""><img src="images/05.jpg" width="372px" height="242px" alt="《看客》美国大选特刊之二：总统的“备胎”"/></a></li>
              </ul>
            </div><!--fader(banner) end-->
            <script type="text/javascript" src="js/banner2.js"></script> 
            <div class="scdt">
               <h1><span>国内新闻</span><a class="more" href="${pageContext.request.contextPath}/index_findNewsByCoulumn.action?page=1&newsCoulumn=国内新闻" title="">更多>></a></h1>
               <div class="intro">
               	  <%!int a = 0; %>
                  <s:iterator value="nList" var="news" status="status">
               	  <s:if test='#news.coulumn == "国内新闻"'>
               	  <%
               	  	a++;
               	  	if(a == 1){ 
               	  %>
                      <a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><img src="${pageContext.request.contextPath}/<s:property value="#news.image"/>" width="140px" height="113px" alt="" /></a>
	                  <h2><a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><s:property value="#news.title"/></a></h2>
	                  <p>
	                  <span style="max-width: 180px; overflow : hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical;">
	                  	<s:property value="#news.content"/>
	                  </span>
	                  <a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title="" style="float: right;">[详细]</a>
		              </p>
				  <% } %>
				  </s:if>
				  </s:iterator>
               </div><!--intro end-->
               <div class="list">
                  <ul>
                  <% a = 0;  %>
                  <s:iterator value="nList" var="news" status="status">
               	  <s:if test='#news.coulumn == "国内新闻"'>
               	  <%
               	  	a++;
               	  	if(a > 1 && a <7){ 
               	  %>
                      <li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><s:property value="#news.title"/></a></li>
				  <% } %>
				  </s:if>
				  </s:iterator>
                  </ul>
               </div><!--list end--> 
            </div><!--scdt end-->
            <div class="hyaq">
               <h1><span>财经频道</span><a class="more" href="${pageContext.request.contextPath}/index_findNewsByCoulumn.action?page=1&newsCoulumn=财经频道" title="">更多>></a></h1>
               <div class="intro">
               	  <% a = 0;  %>
                  <s:iterator value="nList" var="news" status="status">
               	  <s:if test='#news.coulumn == "财经频道"'>
               	  <%
               	  	a++;
               	  	if(a < 2){ 
               	  %>
                  <a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><img src="${pageContext.request.contextPath }/<s:property value="#news.image"/>" width="140px" height="113px" alt="" /></a>
                  <h2><a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><s:property value="#news.title"/></a></h2>
                  <p>
                  <span style="max-width: 180px; overflow : hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical;">
                  	<s:property value="#news.content"/>
                  </span>
                  <a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title="" style="float: right;">[详细]</a>
	              </p>
	           <% } %>   
	           </s:if>
			   </s:iterator>
               </div><!--intro end-->
               <div class="list">
                  <ul>
                  <% a = 0;  %>
                  <s:iterator value="nList" var="news" status="status">
               	  <s:if test='#news.coulumn == "财经频道"'>
               	  <%
               	  	a++;
               	  	if(a > 1 && a <7){ 
               	  %>
                      <li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><s:property value="#news.title"/></a></li>
				  <% } %>
				  </s:if>
				  </s:iterator>
				  </ul>
               </div><!--list end-->
            </div><!--hyaq end-->
            <div class="ppzs">
               <h1><span>艺术欣赏</span></h1>
               <div class="list">
                 <ul>
                   <li><img src="images/ppzs1.jpg" width="101px" height="99px" alt="" /><span>中联重科董事长...</span></li>
                   <li><img src="images/ppzs2.jpg" width="101px" height="99px" alt="" /><span>领导者不要...</span></li>
                   <li><img src="images/ppzs3.jpg" width="101px" height="99px" alt="" /><span>拒绝空谈...</span></li>
                   <li><img src="images/ppzs4.jpg" width="101px" height="99px" alt="" /><span>有远见的CEO们...</span></li>
                   <li><img src="images/ppzs5.jpg" width="101px" height="99px" alt="" /><span>从软银创始人身...</span></li>
                   <li><img src="images/ppzs6.jpg" width="101px" height="99px" alt="" /><span>宝洁CEO谈复兴...</span></li>
                </ul> 
               </div><!--list end-->   
            </div><!--ppzs end-->
         </div><!--top_left_zuo end-->
         <div class="left_top_you">
            <div class="hyyw">
                <h1><span>国际新闻</span><a class="more" href="${pageContext.request.contextPath}/index_findNewsByCoulumn.action?page=1&newsCoulumn=国际新闻" title="">更多>></a></h1>
                <div class="clear"></div>
                <div class="list">
                  <ul>
	                  <% a = 0;  %>
	                  <s:iterator value="nList" var="news" status="status">
	               	  <s:if test='#news.coulumn == "国际新闻"'>
	               	  <%
	               	  	a++;
	               	  	if(a < 2){ 
	               	  %>
                     <li class="li1">
                        <h2><a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><s:property value="#news.title"/></a></h2>
                        <p>
                        <span style="overflow : hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical;">
							<s:property value="#news.content"/>
                        </span>
                        <a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title="" style="float: right;">[详细]</a>
                        </p>
                     </li>
                      <% }   
	               	  	if(a > 1 && a <7){ 
	               	  %>
	                      <li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><s:property value="#news.title"/></a></li>
					  <% } %>
					  </s:if>
					  </s:iterator>
                   </ul>
                </div>
            </div><!--hyyw end-->
            <div class="hyfx">
                <h1><span>体育新闻</span><a class="more" href="${pageContext.request.contextPath}/index_findNewsByCoulumn.action?page=1&newsCoulumn=体育新闻" title="">更多>></a></h1>
                <div class="clear"></div>
                <div class="list">
                  <ul>
                  	 <% a = 0;  %>
	                  <s:iterator value="nList" var="news" status="status">
	               	  <s:if test='#news.coulumn == "体育新闻"'>
	               	  <%
	               	  	a++;
	               	  	if(a < 2){ 
	               	  %>
                     <li class="li1">
                        <h2><a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><s:property value="#news.title"/></a></h2>
						<p>
                        <span style="overflow : hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical;">
                        	<s:property value="#news.content"/>
                        </span>
                        <a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title="" style="float: right;">[详细]</a>
                        </p>
                     </li>
                      <% }   
	               	  	if(a > 1 && a < 9){ 
	               	  %>
	                      <li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><s:property value="#news.title"/></a></li>
					  <% } %>
					  </s:if>
					  </s:iterator>
                     </ul>
                </div>
            </div><!--hyfx end-->
            <div class="dfdt">
               <h1><span>科技频道</span><a class="more" href="${pageContext.request.contextPath}/index_findNewsByCoulumn.action?page=1&newsCoulumn=科技频道" title="">更多>></a></h1>
               <div class="intro">
                  <% a = 0;  %>
                  <s:iterator value="nList" var="news" status="status">
               	  <s:if test='#news.coulumn == "科技频道"'>
               	  <%
               	  	a++;
               	  	if(a < 2){ 
               	  %>
                  <a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><img src="${pageContext.request.contextPath}/<s:property value="#news.image"/>" width="140px" height="113px" alt="" /></a>
                  <h2><a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><s:property value="#news.title"/></a></h2>
                  <p>
                  <span style="max-width: 180px; overflow : hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical;">
                  	<s:property value="#news.content"/>
                  </span>
                  <a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title="" style="float: right;">[详细]</a>
	              </p>
	              <% } %>   
	           	  </s:if>
			  	  </s:iterator>
               </div><!--intro end-->
               <div class="list">
                  <ul>
                  <% a = 0;  %>
                  <s:iterator value="nList" var="news" status="status">
               	  <s:if test='#news.coulumn == "科技频道"'>
               	  <%
               	  	a++;
               	  	if(a > 1 && a <7){ 
               	  %>
                      <li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><s:property value="#news.title"/></a></li>
				  <% } %>
				  </s:if>
				  </s:iterator>
                  </ul>
               </div><!--list end-->
            </div><!--dfdt end-->
            <div class="zhxx">
               <h1><span>娱乐新闻</span><a class="more" href="${pageContext.request.contextPath}/index_findNewsByCoulumn.action?page=1&newsCoulumn=娱乐新闻" title="">更多>></a></h1>
               <div class="intro">
               	  <% a = 0;  %>
                  <s:iterator value="nList" var="news" status="status">
               	  <s:if test='#news.coulumn == "娱乐新闻"'>
               	  <%
               	  	a++;
               	  	if(a < 2){ 
               	  %>
                  <a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><img src="${pageContext.request.contextPath}/<s:property value="#news.image"/>" width="140px" height="113px" alt="" /></a>
                  <h2><a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><s:property value="#news.title"/></a></h2>
                  <p>
                  <span style="max-width: 180px; overflow : hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical;">
                  	<s:property value="#news.content"/>
                  </span>
                  <a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title="" style="float: right;">[详细]</a>
	              </p>
	              <% } %>   
	           	  </s:if>
			  	  </s:iterator>
               </div><!--intro end-->
               <div class="list">
                  <ul>
                  <% a = 0;  %>
                  <s:iterator value="nList" var="news" status="status">
               	  <s:if test='#news.coulumn == "娱乐新闻"'>
               	  <%
               	  	a++;
               	  	if(a > 1 && a <7){ 
               	  %>
                      <li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><s:property value="#news.title"/></a></li>
				  <% } %>
				  </s:if>
				  </s:iterator>   
                  </ul>
               </div><!--list end-->
            </div><!--zhxx end-->
         </div><!--top_left_you end-->
      </div><!--left_top end-->
	</div>
	
   <div class="content_right">
      <div class="qyfc">
            <h1>最近更新</h1>
               <div class="intro">
                  <s:iterator value="nList" var="news" status="status" begin="0" end="0">
                  <a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><img src="${pageContext.request.contextPath}/<s:property value="#news.image"/>" width="110px" height="113px" alt="" /></a>
                  <p>
                  <span style="overflow : hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 6; -webkit-box-orient: vertical;">
					<s:property value="#news.title"/>
                  </span>
                  <a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title="" style="float: right;">[详细]</a>
                  </p>
				  </s:iterator>
               </div><!--intro end-->
               <div class="list">
                  <ul>
                  <% a = 0;  %>
                  <s:iterator value="nList" var="news" status="status">
               	  <%
               	  	a++;
               	  	if(a > 1 && a < 8){ 
               	  %>
                      <li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><s:property value="#news.title"/></a></li>
				  <% } %>
				  </s:iterator>
                  </ul>
               </div><!--list end-->
	  </div><!--qyfc end-->
	  <div class="qyfc">
	      <h1>热点内容</h1>
	         <div class="intro">
	              <% a = 0;  %>
                <s:iterator value="nList" var="news" status="status">
               	<s:if test="#news.is_hot == 1">
               	  <%
               	  	a++;
               	  	if(a < 2){ 
               	  %>
                  <a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><img src="${pageContext.request.contextPath}/<s:property value="#news.image"/>" width="110px" height="113px" alt="" /></a>
                  <p>
                  <span style="overflow : hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 6; -webkit-box-orient: vertical;">
					<s:property value="#news.title"/>
                  </span>
                  <a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title="" style="float: right;">[详细]</a>
                  </p>
                  <% } %>
                </s:if>
				</s:iterator>
               </div><!--intro end-->
               <div class="list">
                  <ul>
                  <% a = 0;  %>
                  <s:iterator value="nList" var="news" status="status">
                  <s:if test="#news.is_hot == 1">
               	  <%
               	  	a++;
               	  	if(a > 1 && a < 8){ 
               	  %>
                      <li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="${pageContext.request.contextPath}/index_findNewsByNid.action?newsId=<s:property value="#news.nid"/>" title=""><s:property value="#news.title"/></a></li>
				  <% } %>
				  </s:if>
				  </s:iterator>
				  <% a = 0;  %>
                  </ul>
	         </div><!--list end-->
       </div><!--qyfc end-->
   </div><!--content_right end-->

   <div class="clear"></div><!--清除浮动-->
   <div class="link">
      <h1></h1>
      <ul>
         <li><a href="http://news.sina.com.cn/" title="">新浪新闻</a></li>
         <li><a href="http://news.ifeng.com/" title="">凤凰资讯</a></li>
         <li><a href="http://news.qq.com/" title="">腾讯新闻</a></li>
         <li><a href="http://www.xinhuanet.com/" title="">新华网</a></li>
         <li><a href="http://news.cntv.cn/" title="">央视网新闻</a></li>
         <li><a href="http://news.sohu.com/" title="">搜狐新闻</a></li>
         <li><a href="http://www.huanqiu.com/" title="">环球网</a></li>
         <li><a href="http://www.cankaoxiaoxi.com/" title="">参考消息</a></li>
         <li><a href="http://news.163.com/" title="">网易新闻</a></li>
         <li><a href="http://www.people.com.cn/" title="">人民网</a></li>
         <li><a href="http://www.zaobao.com/" title="">联合早报</a></li>
         <li><a href="http://www.chinanews.com/" title="">中国新闻网</a></li>
      </ul>
   </div><!--link end-->
</div><!--content end-->
<div class="footer">
   <ul>
       <li class="li_left">Powered by <span><a href="" title="">智商观察</a></span> More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a></li>
       <li class="li_right"><a href="" title="">Archiver</a>&nbsp;|&nbsp;<span><a href="" title="">智商观察</a></span>&nbsp;( 闽ICP备19898967号 )&nbsp;<a href="" title="">站长统计</a></li>
       <li class="li_left">&copy; 2001-2013 <a href="http://www.cssmoban.com" title="">www.cssmoban.com Inc.</a></li>
       <li class="li_right">GMT+8, 2013-10-28 08:53 , Processed in 0.287430 second(s), 20 queries .</li>
   </ul>
</div><!--footer end-->

</body>
</html>