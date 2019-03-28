<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link type="text/css" rel="stylesheet" href="gf_css/book.css">
<link type="text/css" rel="stylesheet" href="gf_css/header.css">
<link type="text/css" rel="stylesheet" href="gf_css/header_v2.css">
<link type="text/css" rel="stylesheet" href="gf_css/layer.css">
<link type="text/css" rel="stylesheet" href="gf_css/rank.css">
<link type="text/css" rel="stylesheet" href="gf_css/ursLogin.css">
<link type="text/css" rel="stylesheet" href="css/gen_db1d64e286ab2aed26fb9ef03344c65d.css">

<link type="text/css" rel="stylesheet" href="gf_css/ys.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
								</c:choose> <span
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
					<ul class="m-mainlist"  style="margin-top: 20px;">
						<li class="m-mainlist-li1"><a class="m-mainlist-a1"
							href="zhuye.do?method=findall">首页</a></li>
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
  	<div class="g-bdw g-bdw-1" style="margin-top: 40px;">
    	<div class="g-bd yd-grid2col-page g-bd-large">
        	<div class="g-bdc yd-book-page yd-book-rank-page">
            	<div class="g-sd j-accordion j-affix" data-offset-top="201">
                        <dl class="multi">
                            <dt class="crt">
                                <a href="/rank" title="总榜单"><strong>总榜单</strong></a>
                            </dt>
                            <dd>
                                <ul>
                                    <li>
                                        <a href="/yc/rank/sell/male" title="畅销榜">畅销榜</a>
                                    </li>
                                    <li>
                                        <a href="/yc/rank/sub/male" title="收藏榜">收藏榜</a>
                                    </li>
                                    <li>
                                        <a href="/yc/rank/pv/male" title="点击榜">点击榜</a>
                                    </li>
                                    <li>
                                        <a href="/yc/rank/articlepresent/male" title="赠阅榜">赠阅榜</a>
                                    </li>
                                    <li class="last">
                                        <a href="/yc/rank/monthlyticket" title="月票榜">月票榜</a>
                                    </li>
                                </ul>
                            </dd>
                        </dl>
                    </div>
               	<div class="g-mn">
                	<div class="g-mnc yd-book-rank-container yd-rank-container yd-grid2col-standard-container">
                    	<div class="m-bang-list-wrap contents yd-rank-content f-cb">
                        	<div class="m-bang-list m-bang-list-l">
                                <div class="wrap">
                                    <div class="tabs">
                                        <h3>畅销榜</h3>
                                            </div>
                                    <div class="contents">
                                        <div class="tab-item m-foldlist">
                                                    <ul class="">
               
               
                <li>
                    <div class="unfold">
                        <i>1</i>
                        <a class="img" href="xiangqing.do?method=findbyid&bid=${b1.bid }"><img src="${pageContext.request.contextPath}/image/xqimg/shuxq/${b1.b_img }" target="_blank"></a>
                        <h3><a href="xiangqing.do?method=findbyid&bid=${b1.bid }" target="_blank">${b1.bname}</a></h3>
                            <p><a href="gfphb.do?method=findbc_id&bc_id=${n1.bc_id }" target="_blank">${n1.bcname }</a> | 连载中</p>
                        <p><a href="" target="_blank">${a1 }</a></p>
                    </div>
                </li>
                
                <c:set var="index" value="2"></c:set>
                <c:forEach items="${list }" var="a" begin="1">
                <li>
                    <p class="fold">
                        <a href="xiangqing.do?method=findbyid&bid=${a.bid }" target="_blank">
                            <i>
                                ${index }
                            </i>${a.bname }
                        </a>
                    </p>
                </li>
                <c:set var="index" value="${index+1 }"></c:set>
               	</c:forEach>
    </ul>
    <!-- vampire:success -->







                                                <a class="more" href="/yc/rank/sell/male#/week"><i></i>查看更多&gt;</a>
                                            </div>
                                    </div>
                                </div>
                          	</div>
                            <div class="m-bang-list m-bang-list-m">
                            	<div class="wrap">
                                    <div class="tabs">
                                        <h3>收藏榜</h3>
                                            </div>
                                    <div class="contents">
                                        <div class="tab-item m-foldlist">
                                                    <ul class="">
                <li>
                    <div class="unfold">
                        <i>1</i>
                        <a class="img" href="xiangqing.do?method=findbyid&bid=${b2.bid }"><img src="${pageContext.request.contextPath}/image/xqimg/shuxq/${b2.b_img }" target="_blank"></a>
                        <h3><a href="xiangqing.do?method=findbyid&bid=${b2.bid }" target="_blank">${b2.bname}</a></h3>
                            <p><a href="gfphb.do?method=findbc_id&bc_id=${n2.bc_id }" target="_blank">${n2.bcname }</a> | 连载中</p>
                        <p><a href="" target="_blank">${a2 }</a></p>
                    </div>
                </li>
                
                <c:set var="index" value="2"></c:set>
                <c:forEach items="${list2 }" var="a" begin="1">
                <li>
                    <p class="fold">
                        <a href="xiangqing.do?method=findbyid&bid=${a.bid }" target="_blank">
                            <i>
                                ${index }
                            </i>${a.bname }
                        </a>
                    </p>
                </li>
                <c:set var="index" value="${index+1 }"></c:set>
               	</c:forEach>
    </ul>
    <!-- vampire:success -->







                                                <a class="more" href="/yc/rank/sell/male#/week"><i></i>查看更多&gt;</a>
                                            </div>
                                    </div>
                                </div>
                            </div>
                            <div class="m-bang-list m-bang-list-r">
                            	<div class="wrap">
                                    <div class="tabs">
                                        <h3>点击榜</h3>
                                            </div>
                                    <div class="contents">
                                        <div class="tab-item m-foldlist">
                                           		<ul class="">
                <li>
                    <div class="unfold">
                        <i>1</i>
                        <a class="img" href=""><img src="${pageContext.request.contextPath}/image/xqimg/shuxq/${b3.b_img }" target="_blank"></a>
                        <h3><a href="" target="_blank">${b3.bname}</a></h3>
                            <p><a href="gfphb.do?method=findbc_id&bc_id=${n3.bc_id }" target="_blank">${n3.bcname }</a> | 连载中</p>
                        <p><a href="" target="_blank">${a3 }</a></p>
                    </div>
                </li>
                
                <c:set var="index" value="2"></c:set>
                <c:forEach items="${list3 }" var="a" begin="1">
                <li>
                    <p class="fold">
                        <a href="xiangqing.do?method=findbyid&bid=${a.bid }" target="_blank">
                            <i>
                                ${index }
                            </i>${a.bname }
                        </a>
                    </p>
                </li>
                <c:set var="index" value="${index+1 }"></c:set>
               	</c:forEach>
    </ul>
    <!-- vampire:success -->
                                                    







                                                <a class="more" href="/yc/rank/sell/male#/week"><i></i>查看更多&gt;</a>
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
               	</div>
               	
               	
               	
               	<div class="g-mn">
                	<div class="g-mnc yd-book-rank-container yd-rank-container yd-grid2col-standard-container">
                    	<div class="m-bang-list-wrap contents yd-rank-content f-cb">
                        	<div class="m-bang-list m-bang-list-l">
                                <div class="wrap">
                                    <div class="tabs">
                                        <h3>赠阅榜</h3>
                                            </div>
                                    <div class="contents">
                                        <div class="tab-item m-foldlist">
                                                    <ul class="">
                <li>
                    <div class="unfold">
                        <i>1</i>
                        <a class="img" href=""><img src="${pageContext.request.contextPath}/image/xqimg/shuxq/${b3.b_img }" target="_blank"></a>
                        <h3><a href="" target="_blank">${b3.bname}</a></h3>
                            <p><a href="gfphb.do?method=findbc_id&bc_id=${n3.bc_id }" target="_blank">${n3.bcname }</a> | 连载中</p>
                        <p><a href="" target="_blank">${a3 }</a></p>
                    </div>
                </li>
                
                <c:set var="index" value="2"></c:set>
                <c:forEach items="${list3 }" var="a" begin="1">
                <li>
                    <p class="fold">
                        <a href="xiangqing.do?method=findbyid&bid=${a.bid }" target="_blank">
                            <i>
                                ${index }
                            </i>${a.bname }
                        </a>
                    </p>
                </li>
                <c:set var="index" value="${index+1 }"></c:set>
               	</c:forEach>
    </ul>
    <!-- vampire:success -->







                                                <a class="more" href="/yc/rank/sell/male#/week"><i></i>查看更多&gt;</a>
                                            </div>
                                    </div>
                                </div>
                          	</div>
                            <div class="m-bang-list m-bang-list-m">
                            	<div class="wrap">
                                    <div class="tabs">
                                        <h3>月票榜</h3>
                                            </div>
                                    <div class="contents">
                                        <div class="tab-item m-foldlist">
                                                    <ul class="">
                <li>
                    <div class="unfold">
                        <i>1</i>
                        <a class="img" href=""><img src="${pageContext.request.contextPath}/image/xqimg/shuxq/${b3.b_img }" target="_blank"></a>
                        <h3><a href="" target="_blank">${b3.bname}</a></h3>
                            <p><a href="gfphb.do?method=findbc_id&bc_id=${n3.bc_id }" target="_blank">${n3.bcname }</a> | 连载中</p>
                        <p><a href="" target="_blank">${a3 }</a></p>
                    </div>
                </li>
                
                <c:set var="index" value="2"></c:set>
                <c:forEach items="${list3 }" var="a" begin="1">
                <li>
                    <p class="fold">
                        <a href="xiangqing.do?method=findbyid&bid=${a.bid }" target="_blank">
                            <i>
                                ${index }
                            </i>${a.bname }
                        </a>
                    </p>
                </li>
                <c:set var="index" value="${index+1 }"></c:set>
               	</c:forEach>
    </ul>
    <!-- vampire:success -->








                                                <a class="more" href="/yc/rank/sell/male#/week"><i></i>查看更多&gt;</a>
                                            </div>
                                    </div>
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
            <div class="m-foot">
                <p class="link">
                    <a href="http://www.163.com" target="_blank">网易首页</a><span style="margin:0px 6px;">|</span>
                    <a href="http://gb.corp.163.com/gb/about/overview.html" target="_blank">公司简介</a><span class="sep">|</span>
                    <a href="http://help.163.com/" target="_blank">客户服务</a><span style="margin:0px 6px;">|</span>
                    <a href="http://corp.163.com/gb/legal/legal.html" target="_blank">相关法律</a><span style="margin:0px 6px;">|</span>
                    <a href="http://sitemap.163.com/" target="_blank">网站导航</a><span style="margin:0px 6px;">|</span>
                    <a href="http://fankui.163.com/ft/comment.fb?pid=11001" target="_blank">意见反馈</a><span style="margin:0px 6px;">|</span>
                    <a id="J_Service" href="javascript:void(0);">客服电话</a><span style="margin:0px 6px;">|</span>
                    <a href="/help" target="_blank">帮助中心</a><span style="margin:0px 6px;">|</span>
                    <a href="http://open.yuedu.163.com/" target="_blank">作者中心</a>
                </p>
            </div>
            <div class="m-right"><p>网易公司版权所有©1997-<span id="j-year">2017</span></p></div>
            <div class="m-share f-cb">
                <label>分享到：</label>
                <div class="share"><a href="javascript:;" class="s2 j-wxwx" data-type="xo">微信</a></div>
                <div class="share"><a href="javascript:;" class="s4 j-yxyx" data-type="xo">易信</a></div>
                <div class="share"><a id="_share_b_tsina" href="javascript:(function(){window.open('http://v.t.sina.com.cn/share/share.php?appkey=1560988037&amp;url='+encodeURIComponent('https://yuedu.163.com/')+'&amp;title='+encodeURIComponent('网易云阅读内容丰富、操作便捷，适合作为平时阅读、充电的软件工具，推荐大家都来下载！')+'&amp;pic='+encodeURIComponent('https://yuedust.yuedu.126.net/images/weibo_v3.jpg?2_20120731162723'),'_blank');})()" class="s1">微博</a></div>
                <div class="share"><a href="javascript:(function(){window.open('http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?site='+encodeURIComponent('网易云阅读官方网站')+'&amp;url='+encodeURIComponent('https://yuedu.163.com/')+'&amp;title='+encodeURIComponent('网易云阅读--随时随地，品质阅读')+'&amp;pics='+encodeURIComponent('https://yuedust.yuedu.126.net/images/weibo_v3.jpg?3_20131202100833')+'&amp;summary='+encodeURIComponent('网易云阅读内容丰富、操作便捷，适合作为平时阅读、充电的软件工具，推荐大家都来下载！'),'_blank');})()" class="s3">QQ空间</a></div>
            </div>
            
        </div>
    </div>
    
</body>
</html>
