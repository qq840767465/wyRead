<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link type="text/css" rel="stylesheet" href="css/book1.css">
	<link type="text/css" rel="stylesheet"
		href="css/gen_db1d64e286ab2aed26fb9ef03344c65d.css">


		<link type="text/css" rel="stylesheet" href="css/sns-plugin.css">
			<link type="text/css" rel="stylesheet" href="ys.css">
				<title>国风全部作品</title>
</head>

<body>
	<div class="g-hdw">
		<div id="J_Header">
			<div class="m-topbar">
				<div class="innerf-cb">
					<div class="derat">
						<ul class="snsf-cb">
							<li class="cbli"><a class="cba" href="#" title="网易云阅读">网易云阅读</a>
								<li>
									<li class="sep">|</li>
									<li class="cbli"><a class="cba" href="zhuye.do?method=findall" title="国风中文网">国风中文网</a>
										<li>
											<li class="sep">|</li>
											<li class="cbli2"><a class="cba" href="#" title="采薇书院">采薇书院</a>
												<li>
													<li class="sep">|</li>
													<li class="cbli3"><a class="cba" href="#"
														title="从电脑上导入书记">从电脑上导入书记</a>
														<li>
															<li class="sep">|</li>
															<li class="cbli4"><a class="cba" href="#"
																title="公众号">公众号</a>
																<li>
						</ul>
					</div>
					<div class="derat">
						<div class="j-ulink">
							<div class="login-1">
								<c:choose>
									<c:when test="${user.uname!=null }"><a href="#">${user.uname }</a></c:when>
									<c:otherwise>
										<a class="login" title="登录" data-reactid=".3.1.0.0"
											href="phbdenglu.jsp">登录</a>
									</c:otherwise>
								</c:choose><span
									class="s-sep">|</span> <a class="zhuce" href="#" title="注册">注册</a>

							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="m-headertop">
				<div class="inner">
					<h1 class="m-logo-gf">
							<a href="zhuye.do?method=findall"><img src="images/logo.png" alt="国风中文网" width="162"
								height="86"> </a>
						</h1>

					<div class="m-clouds">
						<div class="m-clouds1">
							<form class="J_form" action="sousuo.do?method=sousuo" method="post">
								<input type="text" class="s-placeholder" name="key"
									autocomplete="off" placeholder="书名" />
								<button type="submit" class="J_but"><img src="image/3.jpg"/></button>
							</form>
						</div>
					</div>
					<div class="m-clouds2">
						<a class="m-cloudszx" href="#">我的订阅</a> <a class="m-cloudszx1"
							href="#">我的书架</a>
					</div>
				</div>
			</div>
			<div class="m-headerbottom">
				<div class="m-inner">
					<ul class="m-mainlist">
						<li class="m-mainlist-li1"><a class="m-mainlist-a1"
							href="zhuye.do?method=findall">首页</a></li>
						<li class="m-mainlist-li2"><a class="m-mainlist-a2"
							href="gfphb.do?method=findallbook">全部作品</a></li>
						<li class="m-mainlist-li3"><a class="m-mainlist-a2" href="phb.do?method=showall">排行榜</a>
						</li>

						<li class="m-mainlist-li4"><a class="m-mainlist-a4" href="#"><b
								class="icon-don"></b>客户端</a></li>
						<li class="m-mainlist-li4"><a class="m-mainlist-a6" href="#"><b
								class="icon-don2"></b>充值</a></li>
						<li class="m-mainlist-li5"><a class="m-mainlist-a5" href="#"><b
								class="icon-don3"></b>作者中心</a></li>
					</ul>
				</div>
			</div>

		</div>
		<div id="J_HeaderFix"></div>
	</div>
	<div class="g-bdw g-bdw-1" style="margin-top: -5px;">
		<div class="g-bd yd-grid2col-page">
			<div class="m-breadcrumbs">
				当前位置： <a href="zhuye.do?method=findall">国风中文网</a><span style="margin:0px 6px;">&gt;</span>
				国风中文网书库
			</div>
			<div class="g-bdc yd-original-page">
				<div class="g-sd">
					<div class="widget widget-theme-original ">
						<div class="widget-header">
							<div class="widget-title grad-1 nav-header-active">
								<a class="inner" href="/yc/category" style="height:40px;">国风中文网书库</a>
							</div>
						</div>
						<div class="widget-content ">
							<ul>
								<li class=""><a href="gfphb.do?method=findbc_id&bc_id=1">都市生活</a>
								</li>
								<li class=""><a href="gfphb.do?method=findbc_id&bc_id=2">官场职场</a>
								</li>
								<li class=""><a href="gfphb.do?method=findbc_id&bc_id=3">玄幻仙侠</a>
								</li>
								<li class=""><a href="gfphb.do?method=findbc_id&bc_id=4">悬疑探险</a>
								</li>
								<li class=""><a href="gfphb.do?method=findbc_id&bc_id=5">军事谍战</a>
								</li>
								<li class=""><a href="gfphb.do?method=findbc_id&bc_id=6">科幻奇幻</a>
								</li>
								<li class=""><a href="gfphb.do?method=findbc_id&bc_id=7">同人网游</a>
								</li>
								<li class=""><a href="gfphb.do?method=findbc_id&bc_id=8">灵异恐怖</a>
								</li>
								<li class=""><a href="gfphb.do?method=findbc_id&bc_id=9">历史传奇</a>
								</li>
								<li class=" last"><a
									href="gfphb.do?method=findbc_id&bc_id=10">短篇小说</a>
								</li>
							</ul>
						</div>
					</div>
					<div id="J_Bang1" class="m-bang ">
						<div class="tabs" style="">
							<h4 class="grad-1">收藏榜</h4>
							<ul class="grad-1" style="height: 32px;">
								<li><a href="/yc/rank/sub/male#/day">日</a></li>
								<li class="crt"><a href="/yc/rank/sub/male#/week">周</a></li>
								<li><a href="/yc/rank/sub/male#/month">月</a></li>
							</ul>
						</div>
						<div class="contents">
							<div class="tab-item">
								<ol id="scrankweek" class="">
								<c:set var="index" value="1"></c:set>
								<c:forEach items="${books}" var="a">
									<li><span class="top">${index }</span>&nbsp;&nbsp;&nbsp;<a
										href="xiangqing.do?method=findbyid&bid=${a.bid }"
										target="_blank">${a.bname }</a></li>
									<c:set var="index" value="${index+1 }"></c:set>
								</c:forEach>
								</ol>
							</div>
						</div>



					</div>
					<div id="J_Bang1" class="m-bang ">
						<div class="tabs ">
							<h4 class="grad-1">点击榜</h4>
							<ul class="grad-1" style="height: 32px;">
								<li><a href="/yc/rank/sub/male#/day">日</a></li>
								<li class="crt"><a href="/yc/rank/sub/male#/week">周</a></li>
								<li><a href="/yc/rank/sub/male#/month">月</a></li>
							</ul>
						</div>
						<div class="contents">
							<div class="tab-item">
								<ol id="scrankweek" class="">
								<c:set var="index" value="1"></c:set>
								<c:forEach items="${books}" var="a">
									<li><span class="top">${index }</span>&nbsp;&nbsp;&nbsp;<a
										href="xiangqing.do?method=findbyid&bid=${a.bid }"
										target="_blank">${a.bname }</a></li>
									<c:set var="index" value="${index+1 }"></c:set>
								</c:forEach>
									
								</ol>
							</div>
						</div>



					</div>
				</div>
				<div class="g-mn">
					<div class="g-mnc">
						<div class="yd-store-content-container">
							<table
								class="yd-table yd-table-striped yd-original-table yd-original-store-table ">
								<thead>
									<tr class="grad-1">
										<th width="12%" style="text-align: center">序号</th>
										<th width="42%">书名/最新章节</th>
										<th width="12%" style="text-align: center">作者</th>
										<th width="16%" style="text-align: center">字数</th>
										<th width="18%" style="text-align: center">更新时间</th>
									</tr>
								</thead>
								<tbody>
									<c:set var="index" value="1"></c:set>
									<c:forEach items="${list }" var="a">
										<c:choose>
											<c:when test="${index%2==1 }">
												<tr class="even">
													<td style="text-align: center"><span
														class="serial-number">${index }</span></td>
													<td>
														<div class="book-name">
															<a href="xiangqing.do?method=findbyid&bid=${a.bid }" target="_blank">${a.bname }</a>
														</div>
													</td>
													<td style="text-align: center">${a.aname }</td>
													<td style="text-align: center">${a.bcount }&nbsp;万</td>
													<td style="text-align: center">08-05 21:45</td>
												</tr>
												<c:set var="index" value="${index+1 }"></c:set>
											</c:when>
											<c:otherwise>
												<tr class="odd">
													<td style="text-align: center"><span
														class="serial-number">${index }</span></td>
													<td>
														<div class="book-name">
															<a href="xiangqing.do?method=findbyid&bid=${a.bid }" target="_blank">${a.bname }</a>
														</div>
													</td>
													<td style="text-align: center">${a.aname }</td>
													<td style="text-align: center">${a.bcount }&nbsp;万</td>
													<td style="text-align: center">08-05 21:39</td>
												</tr>
												<c:set var="index" value="${index+1 }"></c:set>
											</c:otherwise>
										</c:choose>
									</c:forEach>

								</tbody>
							</table>
						</div>
						<div class="m-page m-page-b">
							<span class="nums"> <a
								href="/yc/category/0_0_0_0_1/p1/s30" class="j-crt">1</a> <a
								href="/yc/category/0_0_0_0_1/p2/s30">2</a> <a
								href="/yc/category/0_0_0_0_1/p3/s30">3</a> <a
								href="/yc/category/0_0_0_0_1/p4/s30">4</a> <a
								href="/yc/category/0_0_0_0_1/p5/s30">5</a> </span> <span class="dian">...</span>
							<span class="nums"> <a
								href="/yc/category/0_0_0_0_1/p100/s30">100</a> </span> <a
								href="/yc/category/0_0_0_0_1/p2/s30" class="go go-n">下一页</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="g-ftw">
		<div class="g-ft">
			<div class="m-foot">
				<p class="link">
					<a href="http://www.163.com" target="_blank">网易首页</a><span
						style="margin:0px 6px;">|</span> <a
						href="http://gb.corp.163.com/gb/about/overview.html"
						target="_blank">公司简介</a><span class="sep">|</span> <a
						href="http://help.163.com/" target="_blank">客户服务</a><span
						style="margin:0px 6px;">|</span> <a
						href="http://corp.163.com/gb/legal/legal.html" target="_blank">相关法律</a><span
						style="margin:0px 6px;">|</span> <a href="http://sitemap.163.com/"
						target="_blank">网站导航</a><span style="margin:0px 6px;">|</span> <a
						href="http://fankui.163.com/ft/comment.fb?pid=11001"
						target="_blank">意见反馈</a><span style="margin:0px 6px;">|</span> <a
						id="J_Service" href="javascript:void(0);">客服电话</a><span
						style="margin:0px 6px;">|</span> <a href="/help" target="_blank">帮助中心</a><span
						style="margin:0px 6px;">|</span> <a
						href="http://open.yuedu.163.com/" target="_blank">作者中心</a>
				</p>
			</div>
			<div class="m-right">
				<p>
					网易公司版权所有©1997-<span id="j-year">2017</span>
				</p>
			</div>
			<div class="m-share f-cb">
				<label>分享到：</label>
				<div class="share">
					<a href="javascript:;" class="s2 j-wxwx" data-type="xo">微信</a>
				</div>
				<div class="share">
					<a href="javascript:;" class="s4 j-yxyx" data-type="xo">易信</a>
				</div>
				<div class="share">
					<a id="_share_b_tsina"
						href="javascript:(function(){window.open('http://v.t.sina.com.cn/share/share.php?appkey=1560988037&amp;url='+encodeURIComponent('https://yuedu.163.com/')+'&amp;title='+encodeURIComponent('网易云阅读内容丰富、操作便捷，适合作为平时阅读、充电的软件工具，推荐大家都来下载！')+'&amp;pic='+encodeURIComponent('https://yuedust.yuedu.126.net/images/weibo_v3.jpg?2_20120731162723'),'_blank');})()"
						class="s1">微博</a>
				</div>
				<div class="share">
					<a
						href="javascript:(function(){window.open('http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?site='+encodeURIComponent('网易云阅读官方网站')+'&amp;url='+encodeURIComponent('https://yuedu.163.com/')+'&amp;title='+encodeURIComponent('网易云阅读--随时随地，品质阅读')+'&amp;pics='+encodeURIComponent('https://yuedust.yuedu.126.net/images/weibo_v3.jpg?3_20131202100833')+'&amp;summary='+encodeURIComponent('网易云阅读内容丰富、操作便捷，适合作为平时阅读、充电的软件工具，推荐大家都来下载！'),'_blank');})()"
						class="s3">QQ空间</a>
				</div>
			</div>

		</div>
	</div>
</body>
</html>
