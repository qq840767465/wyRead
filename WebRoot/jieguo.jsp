<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="ss_css/clist.css" rel="stylesheet" type="text/css">
	<link href="ss_css/gen_db1d64e286ab2aed26fb9ef03344c65d.css"
		rel="stylesheet" type="text/css">
		<link href="ss_css/sns-plugin.css" rel="stylesheet" type="text/css">
			<link href="ss_css/ursLogin.css" rel="stylesheet" type="text/css">
				<link href="css/style.css" rel="stylesheet" type="text/css">
					<link type="text/css" rel="stylesheet" href="ys.css">
						<title>搜索</title>
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
									<li class="cbli"><a class="cba" href="#" title="国风中文网">国风中文网</a>
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
								<a href="javascript:void(0);" title="登录">登录</a> <span
									class="s-sep">|</span> <a class="zhuce" href="注册.html"
									title="注册">注册</a>
							</div>

						</div>

					</div>

				</div>


			</div>
			<div class="m-headertop">
				<div class="inner">
					<h1 class="m-logo">
						<img src="images/logo.png" />
					</h1>
					<div class="m-clouds">
						<div class="m-clouds1">
							<form class="J_form" action="sousuo.do?method=sousuo" method="post">
								<input type="text" class="s-placeholder1" name="key"
									autocomplete="off" placeholder="琅琊榜" style="height:14px;" />
								<button type="submit" class="J_but">
									<img src="image/3.jpg" alt="" />
								</button>
							</form>
						</div>
					</div>
					<span class="J_form"> </span>
					<div class="m-clouds2">
						<a class="m-cloudszx" href="#">我的订阅</a> <a class="m-cloudszx1"
							href="#">我的书架</a>
					</div>
				</div>
			</div>
			<div class="m-headerbottom">
				<div class="m-inner">
					<ul class="m-mainlist">
						<li class="m-mainlist-li1"><a class="m-mainlist-a1" href="#">首页</a>
						</li>
						<li class="m-mainlist-li2"><a class="m-mainlist-a2"
							href="gfphb.do?method=findallbook">全部作品</a></li>
						<li class="m-mainlist-li3"><a class="m-mainlist-a2" href="#">排行榜</a>
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
	<div class="g-bdw">
		<div class="g-bd g-bd-1">
			<div class="g-bdc">
				<div class="g-mn">
					<div class="g-mnc">
						<div id="J_SearchBox" class="m-searchrlt">
							<p class="tip">“琅琊榜”的搜索结果</p>
							
							<div class="contents" style="height: auto;">
								<div>
									<ul id="J_Container" class="m-resultlist">
									<c:forEach items="${books}" var="books">
										<li class="searchItem" data-link="">
											<div class="book">
												<a class="cover" href="" target="_blank"> <img
													width="114" height="160" src="${books.b_img }">
												</a>
												<h5>
													<a
														href=""
														target="_blank">${books.bname}</a>
												</h5>
												<p class="download">${books.aname }</p>
												<p class="share" style="margin-top: 50px;">
													${books.bintroduction }
												</p>
											</div></li>
									</c:forEach>
									</ul>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="g-ftw">
		<div class="g-ft">
			<p class="g-ft-p">
				<a href="http://www.163.com" target="_blank">网易首页</a><span
					class="g-ftw-sp">|</span> <a
					href="http://gb.corp.163.com/gb/about/overview.html"
					target="_blank">公司简介</a><span class="g-ftw-sp">|</span> <a
					href="http://help.163.com/" target="_blank">客户服务</a><span
					class="g-ftw-sp">|</span> <a
					href="http://corp.163.com/gb/legal/legal.html" target="_blank">相关法律</a><span
					class="g-ftw-sp">|</span> <a href="http://sitemap.163.com/"
					target="_blank">网站导航</a><span class="g-ftw-sp">|</span> <a
					href="http://fankui.163.com/ft/comment.fb?pid=11001"
					target="_blank">意见反馈</a><span class="g-ftw-sp">|</span> <a
					href="javascript:void(0);">客服电话</a><span class="g-ftw-sp">|</span>
				<a href="/help" target="_blank">帮助中心</a><span class="g-ftw-sp">|</span>
				<a href="http://open.yuedu.163.com/" target="_blank">作者中心</a>
			</p>
			<div class="m-right">
				<p class="g-ft-p">网易公司版权所有©1997-2017</p>
			</div>

		</div>
	</div>
</body>
</html>
