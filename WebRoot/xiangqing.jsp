<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/style.css">
	<link href="ys.css" rel="stylesheet" type="text/css">
		<title>xq</title>
</head>

<style>
body {
	height: 36px;
	width: 100%;
}

#xq-h {
	width: 100%;
	height: 202px;
}

#xq-m {
	margin-top: 16px;
	height: 2000px;
	width: 100%;
	margin-bottom: 40px;
}

#xq-m-z {
	width: 980px;
	height: 2000px;
	margin: auto;
}

#xq-m-z-l {
	width: 720px;
	height: 1850px;
	float: left;
}

#xq-m-z-r {
	width: 240px;
	height: 1850px;
	float: right;
}

.bookstatus {
	position: relative;
	padding-left: 28px;
	border-left: 1px solid #e5e5e5;
	height: 277px;
	width: 211px;
}

.bookstatus div img {
	margin-left: 20px;
	width: 100px;
	height: 140px;
	margin-bottom: 20px;
}

.author {
	height: 196px;
	width: 204px;
	padding: 20px 18px;
}

.intro {
	height: 196px;
	width: 204px;
	background: #f6f6f4;
}

.intro a img {
	display: block;
	width: 100px;
	height: 100px;
	border-radius: 50px;
	margin: 0 auto;
}

.intro a span {
	position: relative;
	display: block;
	width: 46px;
	height: 19px;
	margin: -16px auto 0;
	line-height: 19px;
	background: #ABA59A;
	color: #fff;
	border-radius: 4px;
	text-align: center;
}

.intro a p {
	font-size: 16px;
	color: #06080A;
	height: 20px;
	margin-top: 10px;
	text-align: center;
	line-height: 24px;
}

.info {
	display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 3;
	text-overflow: ellipsis;
	overflow: hidden;
	margin-top: 18px;
	height: 45px;
	line-height: 15px;
	color: #545c66;
}

.booklist {
	background: #f6f6f4;
	padding: 20px 18px;
	margin-bottom: 10px;
	height: 419px;
	width: 204px;
}

.booklist h4 {
	padding-bottom: 12px;
	font-size: 16px;
	font-weight: bold;
	line-height: 20px;
	color: #06080a;
	border-bottom: 1px solid #cdcdcd;
}

.bj-tuijian {
	height: 376px;
	width: 204px;
}

.bj-tuijian li {
	position: relative;
	margin: 10px 0 20px;
	height: 112px;
	overflow: hidden;
}

.bj-tuijian li a {
	position: relative;
	float: left;
	margin-right: 10px;
	display: block;
	width: 84px;
	height: 112px;
	box-shadow: 0 10px 20px 0 rgba(0, 0, 0, 0.08), 0px 4px 4px 0
		rgba(0, 0, 0, 0.08);
}

.f-fl {
	width: 105px;
	height: 87px;
	float: left;
}

.f-fl p a {
	color: #06080a;
	font-size: 14px;
	line-height: 18px;
	max-height: 18px;
	display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 2;
	overflow: hidden;
	text-overflow: ellipsis;
}

.category {
	margin-top: 5px;
	color: #5984B3;
	line-height: 30px;
	overflow: hidden;
	height: 14px;
	line-height: 14px;
	width: 99px;
	display: block;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.description {
	margin-top: 20px;
	height: 30px;
	line-height: 15px;
	color: #545c66;
	display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 2;
	overflow: hidden;
	text-overflow: ellipsis;
}

.bookdetail {
	position: relative;
	height: 237px;
	-webkit-transition: height .3s ease;
	transition: height .3s ease;
}

.cover {
	position: relative;
	float: left;
	margin-right: 22px;
	width: 172px;
	height: 237px;
}

.cover img {
	width: 172px;
	height: 237px;
}

.xq-fl {
	width: 506px;
	float: left;
	height: 156px;
}

.xq-fl h3 {
	position: relative;
	font-size: 20px;
	font-weight: bold;
	color: #06080a;
	line-height: 24px;
	max-height: 45px;
}

.xq-fl h3 span {
	font-size: 14px;
	font-weight: normal;
	color: #545c66;
	margin-left: 14px;
}

.xq-fl h3 span a {
	text-decoration: none;
	color: #333;
	outline: none;
}

.description-j-desc {
	display: none;
	position: relative;
	min-height: 110px;
	max-height: 154px;
	margin-top: 20px;
	font-size: 14px;
	color: #545c66;
	line-height: 22px;
	text-align: justify;
	overflow: hidden;
	-webkit-transition: height .3s ease;
	transition: height .3s ease;
	height: 110px;
	display: block;
	width: 506px;
}

.ops {
	position: absolute;
	bottom: 0;
	left: 194px;
	height: 38px;
	width: 293px;
}

.btn-main-fill {
	float: left;
	width: 100px;
	height: 36px;
	line-height: 36px;
	margin-right: 10px;
	background-color: #d50808;
	border: 1px solid #d50808;
	display: inline-block;
	width: 94px;
	height: 28px;
	line-height: 28px;
	border-radius: 4px;
	font-size: 14px;
	text-align: center;
	background-color: #c9483c;
	color: #fff;
	border: 1px solid #c9483c;
	text-decoration: none;
	outline: none;
	cursor: pointer;
	outline: none;
}

.btn-main-fill-2 {
	float: left;
	width: 100px;
	height: 36px;
	line-height: 36px;
	margin-right: 10px;
	color: #d50808;
	border: 1px solid #d50808;
	display: inline-block;
	width: 94px;
	height: 28px;
	line-height: 28px;
	border-radius: 4px;
	font-size: 14px;
	text-align: center;
	background-color: transparent;
	color: #c9483c;
	border: 1px solid #c9483c;
}

.m-chapter {
	margin-top: 38px;
	width: 720px;
	height: 169px;
}

.tabs {
	height: 32px;
	width: 720px;
	border-bottom: 1px solid #cdcdcd;
}

.contents {
	margin-top: 20px;
	width: 720px;
	height: 116px;
}

.crt {
	float: left;
	font-size: 16px;
	color: #06080a;
	font-weight: bold;
	padding: 0 20px;
	height: 30px;
	line-height: 20px;
	cursor: pointer;
	border-bottom: 2px solid transparent;
	color: #d50808;
	border-color: #d50808;
	display: block;
}

.crt2 {
	float: left;
	font-size: 16px;
	color: #06080a;
	font-weight: bold;
	padding: 0 20px;
	height: 30px;
	line-height: 20px;
	cursor: pointer;
	border-bottom: 2px solid transparent;
}

.crt2 a {
	text-decoration: none;
	color: #333;
	outline: none;
	cursor: pointer;
	font-size: 16px;
	font-weight: bold;
	line-height: 20px;
}

.tab-item {
	height: 116px;
	width: 720px;
}

.tab-item h4 {
	display: inline-block;
	margin-bottom: 10px;
	font-size: 16px;
	font-weight: bold;
	color: #06080a;
}

.updatetime {
	float: right;
	font-size: 12px;
	color: #545c66;
}

#j-latesupdate {
	display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 4;
	overflow: hidden;
	text-overflow: ellipsis;
	height: 84px\9;
	max-height: 84px;
	font-size: 12px;
	color: #545c66;
	line-height: 22px;
}

.m-detail-comments {
	margin-top: 36px;
	margin-bottom: 60px;
	height: 1378px;
	width: 720px;
}

.m-detail-comments h3 {
	font-size: 16px;
	font-weight: bold;
	color: #06080a;
	padding-bottom: 10px;
	border-bottom: 1px solid #cdcdcd;
}

.m-comment-wrap {
	height: 1266px;
	width: 720px;
	margin-top: 20PX;
}

.head-pic {
	top: 0;
	left: 0;
	width: 44px;
	height: 44px;
	border-radius: 22px;
	overflow: hidden;
	float: left;
}

.head-pic a {
	text-decoration: none;
	color: #333;
	outline: none;
}

.head-pic a img {
	width: 44px;
	height: 44px;
	border: medium none;
	cursor: pointer;
}

.static-comment {
	height: 126px;
	width: 647px;
	float: left;
	display: block;
}

.reply-box {
	margin-left: 10px;
	width: 647px;
	height: 126px;
}

.reply-box form {
	width: 647px;
	height: 126px;
}

.contentwrap {
	position: relative;
	padding: 10px;
	background: #fff;
	border: #ebe6e1 solid 1px;
	font-size: 14px;
	width: 625px;
	height: 60px;
}

.contentwrap textarea {
	display: block;
	width: 100%;
	height: 60px;
	overflow: auto;
	font-size: 14px;
	font-family: Microsoft Yahei;
	resize: none;
	border: none;
	color: #06080a;
}

.bottombar {
	height: 44px;
	line-height: 44px;
	margin-bottom: 10px;
	margin-top: 10px;
}

.btn {
	float: right;
	font-size: 12px;
	height: 44px;
	line-height: 44px;
	width: 56px;
}

.btn a {
	background-color: #d50808;
	display: inline-block;
	width: 46px;
	height: 24px;
	line-height: 24px;
	border-radius: 4px;
	font-size: 12px;
	text-align: center;
	color: #fff;
	vertical-align: middle;
	margin-left: 10px;
	outline: none;
}

.j-commentlist {
	height: 1000px;
	width: 720px;
}

.j-itmeli {
	position: relative;
	padding: 20px 0 14px 54px;
	border-top: 1px solid #e5e5e5;
	zoom: 1;
	list-style: none outside none;
}

.head-pic1 {
	position: absolute;
	top: 0;
	left: 0;
	width: 44px;
	height: 44px;
	border-radius: 22px;
	overflow: hidden;
	top: 20px;
}

.head-pic1 a {
	text-decoration: none;
	color: #333;
	outline: none;
}

.head-pic1 a img {
	width: 44px;
	height: 44px;
	border: medium none;
	cursor: pointer;
}

.infos {
	height: 18px;
	line-height: 18px;
	font-size: 12px;
	color: #888;
}

.infos cite a {
	color: #3c98c9;
	outline: none;
	font-style: normal;
	font-weight: normal;
	height: 18px;
	line-height: 18px;
	font-size: 12px;
	position: relative;
	border-top: 1px solid #e5e5e5;
}

blockquote {
	height: 20px;
	width: 666px;
	text-align: left;
	font-size: 12px;
	line-height: 20px;
	color: #06080a;
	padding-top: 5px;
	margin: 0;
}

.opt {
	position: relative;
	margin-top: 10px;
	text-align: right;
	font-size: 12px;
	height: 20px;
	width: 666px;
}

.time {
	float: left;
	color: #798594;
	text-align: right;
	font-size: 12px;
}

.opt a i {
	display: inline-block;
	position: relative;
	width: 16px;
	height: 15px;
	top: 1px;
	left: -3px;
	text-align: right;
	font-size: 12px;
	color: #c9483c;
	font-style: normal;
}

.opt a {
	color: #c9483c;
	text-align: right;
	font-size: 12px;
}

.j-pager {
	height: 60px;
	width: 720px;
	margin-top: 100px;
}

.pager {
	text-align: center;
	height: 60px;
	line-height: 60px;
	font-size: 12px;
	margin: 20px 27px 40px;
}

.cur {
	border: 1px solid #d50808;
	color: #fff;
	display: inline-block;
	width: 32px;
	height: 32px;
	line-height: 32px;
	border-radius: 4px;
	font-size: 12px;
	text-align: center;
	margin: 0 5px;
	outline: none;
}

.pager a {
	display: inline-block;
	width: 32px;
	height: 32px;
	line-height: 32px;
	border-radius: 4px;
	font-size: 12px;
	text-align: center;
	margin: 0 5px;
	color: #999;
	border: #e0ddd8 solid 1px;
}

a.txt {
	width: 50px;
}
</style>


<body>
	<div id="xq-h">
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
									<c:choose>
									<c:when test="${user.uname!=null }"><a href="#">${user.uname }</a></c:when>
									<c:otherwise>
										<a class="login" title="登录"
											href="xqdenglu.jsp">登录</a>
									</c:otherwise>
								</c:choose>
								<span class="s-sep">|</span> <a class="zhuce" href="#"
										title="注册">注册</a>

								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="m-headertop">
					<div class="inner">
						<h1 class="m-logo">
							<a href="zhuye.do?method=findall"><img src="images/logo.png" /></a>
						</h1>
						<div class="m-clouds">
							<div class="m-clouds1">
								<form class="J_form" action="sousuo.do?method=sousuo" method="post">
									<input type="text" class="s-placeholder1" style="height: 14px;"
										name="key" placeholder="书名" />
									<button type="submit" class="J_but">
										<img src="image/3.jpg" alt="" />
									</button>
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
							<li class="m-mainlist-li1"><a class="m-mainlist-a1" href="#">首页</a>
							</li>
							<li class="m-mainlist-li2"><a class="m-mainlist-a2"
								href="gfphb.do?method=findallbook">全部作品</a>
							</li>
							<li class="m-mainlist-li3"><a class="m-mainlist-a2" href="#">排行榜</a>
							</li>
							<li class="m-mainlist-li4"><a class="m-mainlist-a4" href="#"><b
									class="icon-don"></b>客户端</a>
							</li>
							<li class="m-mainlist-li4"><a class="m-mainlist-a6" href="#"><b
									class="icon-don2"></b>充值</a>
							</li>
							<li class="m-mainlist-li5"><a class="m-mainlist-a5" href="#"><b
									class="icon-don3"></b>作者中心</a>
							</li>
						</ul>
					</div>
				</div>

			</div>
			<div id="J_HeaderFix"></div>
		</div>
	</div>
	<div id="xq-m">
		<div id="xq-m-z">
			<div id="xq-m-z-l">
				<div class="bookdetail">
					<a href="#" class="cover"><img src="${pageContext.request.contextPath}/image/xqimg/shuxq/${b.b_img}" />
					</a>
					<div class="xq-fl">
						<h3>
							${b.bname } <span><a href="#">${a.aname }</a>&nbsp;&nbsp;著</span>
						</h3>
						<div class="description-j-desc">${b.bintroduction }</div>
						<div class="ops">
							<a href="#" onclick="" class="btn-main-fill">立即阅读</a> <a href="#"
								class="btn-main-fill-2">加入书架</a>
						</div>
					</div>
				</div>
				<div class="m-chapter">
					<ul class="tabs">
						<li class="crt">最近更新</li>
						<li class="crt2"><a href="#">全部目录 <span>(1971章)</span> </a>
						</li>
					</ul>
					<div class="contents">
						<div class="tab-item" style="overflow: hidden;">
							<a href="#"><h4>046旧人</h4>
							</a> <span class="updatetime">更新时间：昨天 10:23</span> <a href="#"><p
									id="j-latesupdate">
									秘书很快就回来了。<br /> 进来后，他就直奔鲁山，然后凑到他耳边低语道：“书记，来的人好像是梁副省长的前妻。”<br />
									鲁山一愣，旋即就说道：“你先去把人安排到接待室去等着。”<br />
									秘书走开后，鲁山将身子往梁建靠近了一点，然后低声说道：“梁副省长，外面有个女人，说是您的旧识。”<br />
								</p>
							</a>
						</div>
					</div>
				</div>
				<div class="m-detail-comments">
					<h3>评论</h3>
					<div class="m-comment-wrap">
						<div class="head-pic">
							<a href="#"><img src="${pageContext.request.contextPath }/image/xqimg/zuozhe/${a.a_img}" />
							</a>
						</div>
						<div class="static-comment">
							<div class="reply-box">
								<form id="form1" action="comment.do?method=pinglun&bid=${b.bid }&uid=${user.uid}"  method="post">
									<div class="contentwrap">
										<textarea name="pinglun"><c:choose><c:when test="${user.uname!=null }"></c:when><c:otherwise>请登录后评论</c:otherwise></c:choose></textarea>
									</div>
									<div class="bottombar">
										<p class="btn">
											<input type="submit" value="评 论 "></input>
										</p>
									</div>
								</form>
							</div>
						</div>
						<br />
						<br />
						<br />
						<br />
						<br />
						<br />
						<ul class="j-commentlist">
							<c:forEach items="${c }" var="c">
								<li class="j-itmeli">
									<div class="head-pic1">
										<a href="#"><img src="${pageContext.request.contextPath }/image/xqimg/zuozhe/${a.a_img}" />
										</a>
									</div>
									<div class="infos">
										<cite><a href="#">${c.uname}</a>
										</cite>
									</div>
									<blockquote>${c.content }</blockquote>
									<div class="opt">
										<span class="time">${c.time }发表</span>
										<!-- 点赞数加一 -->
										<a href="javascript:void(0)" onclick="change(${c.cid})"><i
											id="flag">☆</i>（<i id="${c.cid }">${c.thumbs }</i>）</a>
									</div></li>
							</c:forEach>

						</ul>

						<div class="j-pager">
							<div class="pager">
								<a href="#" class="cur">1</a> <a href="#">2</a> <a href="#">3</a>
								<a href="#">4</a> <a href="#" class="txt">下一页</a> <a href="#"
									class="txt">尾页</a>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div id="xq-m-z-r">
				<div class="bookstatus">
					<div>
						<img src="${pageContext.request.contextPath}/image/xqimg/shuxq/${b.b_img}" />
					</div>
					<div>状态:&nbsp;&nbsp;连载中</div>
					<div>字数:&nbsp;&nbsp;${b.bcount }&nbsp;万</div>
					<div>点击:&nbsp;&nbsp;${b.b_click }</div>
					<div>分类:&nbsp;&nbsp;${bc.bcname }</div>
				</div>
				<div class="author">
					<div class="intro">
						<a href="#"> <img src="${pageContext.request.contextPath }/image/xqimg/zuozhe/${a.a_img}" /> <span>作者</span>
							<p>${a.aname }</p> </a>
						<div class="info">${a.a_introduction }</div>
					</div>
				</div>

				<div class="booklist">
					<h4>编辑推荐</h4>
					<div class="bj-tuijian">
						<ul>
							<li><a href="#"><img style="height: 100%;width:100%;" src="images/shouji_buttom1.jpg" />
							</a>
								<div class="f-fl">
									<p>
										<a href="#">催眠大师</a>
									</p>
									<p>
										<a href="#" class="category">亚城木夢叶</a>
									</p>
									<br /> <br />

									<P class="description">你有钱？老子会催眠！你有枪？老子会催眠！你有美</P>
								</div></li>
							<li><a href="#"><img style="height: 100%;width:100%;" src="images/shouji_buttom1.jpg" />
							</a>
								<div class="f-fl">
									<p>
										<a href="#">催眠大师</a>
									</p>
									<p>
										<a href="#" class="category">亚城木夢叶</a>
									</p>
									<br /> <br />

									<P class="description">你有钱？老子会催眠！你有枪？老子会催眠！你有美</P>
								</div></li>
							<li><a href="#"><img style="height: 100%;width:100%;" src="images/shouji_buttom1.jpg" />
							</a>
								<div class="f-fl">
									<p>
										<a href="#">催眠大师</a>
									</p>
									<p>
										<a href="#" class="category">亚城木夢叶</a>
									</p>
									<br /> <br />

									<P class="description">你有钱？老子会催眠！你有枪？老子会催眠！你有美</P>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="xq-f">
		<a id="aaa" style="display: none;">${b.bid }</a>
	</div>
	</div>

</body>
</html>
<script>
	
	function change(a){
		
		//通过js向服务器发起请求
		var request = new XMLHttpRequest();
		request.onreadystatechange = function(){
			if(request.readyState == 4 && request.status==200){
				var ret = request.responseText;
				document.getElementById(a).innerHTML=ret;
			}
		}
		
		request.open("post","comment.do?method=addthumbs&cid="+a);
		request.send("cid="+a);
		
	}

</script>
