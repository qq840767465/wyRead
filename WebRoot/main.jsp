
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="applicable-device" content="pc">
<title>主页</title>
<link rel="stylesheet" type="text/css" href="css/1.css">
<meta name="keywords" content="免费、电子书、杂志、漫画、文学、经管、名著、励志">
<meta name="description"
	content="全面丰富的电子书籍、顶级杂志、精彩漫画、包含传统畅销书籍，涵盖青春、文艺、人文、社科、经管、励志、亲子、两性、名著等多种品类，更有众多免费内容提供。">

<!--[if lt IE 9]>
  <script src="//yuedust.yuedu.126.net/assets/js/html5shiv.js?20170807095945"></script>
  <script src="//yuedust.yuedu.126.net/assets/js/es5/es5-shim-4.1.9.min.js?20170807095945"></script>
  <script src="//yuedust.yuedu.126.net/assets/js/es5/es5-sham-4.1.9.min.js?20170807095945"></script>
<![endif]-->
<script type="text/javascript" src="js/1.js"></script>
</head>
</style>
<body id="page-163-com" class="m-yc g-gf">
	<noscript>请使用支持脚本的浏览器！</noscript>
	<div class="g-doc">
		<!-- 头部导航 -->
		<div class="g-hdw">
			<div id="J_Header" class="g-hd male">
				<div class="m-topbar">
					<div class="inner f-cb" data-reactid=".3">
						<div data-reactid=".3.0">
							<ul class="sns f-cb" data-reactid=".3.0.0">
								<li data-reactid=".3.0.0.0"><a href="//yuedu.163.com/"
									title="网易云阅读" data-reactid=".3.0.0.0.0">网易云阅读</a>
								</li>
								<li data-reactid=".3.0.0.1"><span class="sep"
									data-reactid=".3.0.0.1.0">|</span>
								</li>
								<li data-reactid=".3.0.0.2"><a
									href="zhuye.do?method=findall" title="国风中文网"
									data-reactid=".3.0.0.2.0">国风中文网</a>
								</li>
								<li data-reactid=".3.0.0.3"><span class="sep"
									data-reactid=".3.0.0.3.0">|</span>
								</li>
								<li data-reactid=".3.0.0.4"><a href="/ycmm" title="采薇书院"
									data-reactid=".3.0.0.4.0">采薇书院</a>
								</li>
								<li data-reactid=".3.0.0.5"><span class="sep"
									data-reactid=".3.0.0.5.0">|</span>
								</li>
								<li data-reactid=".3.0.0.6"><a
									href="/myspace.do?operation=list" title="从电脑上导入书籍"
									data-reactid=".3.0.0.6.0">从电脑上导入书籍</a>
								</li>
								<li data-reactid=".3.0.0.7"><span class="sep"
									data-reactid=".3.0.0.7.0">|</span>
								</li>
								<li data-reactid=".3.0.0.8"><a href="javascript:;"
									title="公众号" data-reactid=".3.0.0.8.0">公众号</a>
								</li>
								<li data-reactid=".3.0.0.9"><span class="sep"
									data-reactid=".3.0.0.9.0">|</span>
								</li>
								<li data-reactid=".3.0.0.a"><a
									href="//bi.yuedu.163.com/spa/goReg" title="渠道推广平台"
									target="_blank" data-reactid=".3.0.0.a.0">渠道推广平台</a>
								</li>
							</ul>
							<div class="m-codelayer" style="display:none;"
								data-reactid=".3.0.1">
								<img
									src="https://easyread.nosdn.127.net/web/trunk/1488264973044/code-gzh.png"
									data-reactid=".3.0.1.0">
							</div>
						</div>
						<div data-reactid=".3.1">
							<div class="ulink j-ulink" data-reactid=".3.1.0">
								<c:choose>
									<c:when test="${user.uname!=null }"><a href="#">${user.uname }</a></c:when>
									<c:otherwise>
										<a class="login" title="登录" href="zhudenglu.jsp">登录</a>
									</c:otherwise>
								</c:choose>
								<span class="sep" data-reactid=".3.1.0.1">|</span><a
									target="_blank" title="注册" data-reactid=".3.1.0.2">注册</a><span
									class="sep" data-reactid=".3.1.0.3">|</span><a class="chong"
									href="/report.do" target="_blank" title="举报"
									data-reactid=".3.1.0.4">举报</a>
							</div>
							<noscript data-reactid=".3.1.1"></noscript>
						</div>
					</div>
				</div>
				<div class="m-headertop">
					<div class="inner">
						<h1 class="m-logo-gf">
							<a href="zhuye.do?method=findall"><img src="images/logo.png"
								alt="国风中文网" width="162" height="86"> </a>
						</h1>
						<div class="m-sch">
							<div data-reactid=".1">
								<form class="J_Form" action="sousuo.do?method=sousuo"
									method="post">
									<input type="text" class="s-placeholder" name="key"
										autocomplete="off" placeholder="书名"><input
										type="hidden" name="type" value="4" data-reactid=".1.0.1">
									<button type="submit" data-reactid=".1.0.2">
										<span data-reactid=".1.0.2.0">&nbsp;&nbsp;&nbsp;&nbsp;</span>
									</button>
								</form>
								<span data-reactid=".1.1"></span>
							</div>
						</div>
						<div class="m-clouds">
							<a class="m-cloudsj" href="/shelf.do?operation=query_current"
								target="_blank">我的订阅</a> <a class="m-cloudsj"
								href="/shelf.do?operation=query_current" target="_blank">我的书架</a>

						</div>
					</div>
				</div>
				<div class="m-headerbottom">
					<div class="inner">
						<ul class="m-mianlist">
							<li><a class="crt" href="zhuye.do?method=findall"
								onclick="_gaq.push(['_trackEvent', 'navi', 'home']);">首页</a>
							</li>
							<li><a class="" href="gfphb.do?method=findallbook"
								onclick="_gaq.push(['_trackEvent', 'navi', 'category']);">全部作品</a>
							</li>
							<li><a class="" href="phb.do?method=showall"
								onclick="_gaq.push(['_trackEvent', 'navi', 'rank']);">排行榜</a>
							</li>
							<li class="fr"><a href="/client" target="_blank"
								onclick="_gaq.push(['_trackEvent', 'navi', 'client']);"><b
									class="icon-download"></b>客户端</a>
							</li>
							<li class="fr"><a href="/recharge.do?operation=form"
								onclick="_gaq.push(['_trackEvent', 'navi', 'recharge']);"><b
									class="icon-recharge"></b>充值</a>
							</li>
							<li class="fr"><a href="http://open.yuedu.163.com/"
								target="_blank"
								onclick="_gaq.push(['_trackEvent', 'navi', 'open']);"><b
									class="icon-open"></b>作者中心</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div id="J_HeaderFix" class="g-hd m-headerfix male">
				<div class="inner f-cb">
					<h2 class="m-logo-mini-2">
						<a href="/yc">国风中文网</a>
					</h2>

					<div class="m-sch j-sch">
						<div data-reactid=".2">
							<form class="J_Form" action="/search.do" data-reactid=".2.0">
								<input type="text" class="s-placeholder" name="key"
									autocomplete="off" value="北京，北京" data-reactid=".2.0.0"><input
									type="hidden" name="type" value="4" data-reactid=".2.0.1">
								<button type="submit" data-reactid=".2.0.2">
									<span data-reactid=".2.0.2.0">&nbsp;&nbsp;&nbsp;&nbsp;</span>
								</button>
							</form>
							<span data-reactid=".2.1"></span>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<!-- 主题内容 -->
		<div class="g-bdw">
			<div class="g-bd g-bd-large g-bd-n">
				<section class="g-sec f-cb"
					style="margin-top:26px;margin-bottom:-7px;">
					<!-- 左边栏目 -->
					<div class="m-col fl">
						<header>
							<b class="icon-rmd"></b>
							<h2>本周强推</h2>
						</header>
						<div class="m-ranklist m-ranklist-week">
							<ul id="J_RankDaily">
								<c:forEach items="${books }" var="books">
									<li>
										<p class="fold" style="display:block;">
											<a href="gfphb.do?method=findbc_id&bc_id=${books.bc_id }"
												target="_blank"><i>[${books.bcname1 }]</i> </a> <a
												href="xiangqing.do?method=findbyid&bid=${books.bid }"
												title="仕途多娇" target="_blank">${books.bname }</a>
										</p></li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<!-- 中间栏目 -->
					<div class="m-col m-col-m fl">
						<!-- 轮播 -->
						<div id="J_Slider01" class="m-mainslider">
							<div class="slider">
								<ul class="j-slider">
									<li style="position: none; top: 0px; left: 0px;"><a
										href="        " target="_blank" data-model="ad"
										data-opration="ad_index" title="永恒至尊"> <img
											src="image/zhuye/1-lunbo/111.jpg" name="pic111" id="lbtu-1"
											width="200" height="280" alt="永恒至尊" /> </a></li>
									<li
										style="display: absolute; position: absolute; top: 0px; left: 0px;">
										<a href="        " target="_blank" data-model="ad"
										data-opration="ad_index" title="官妖"> <img
											src=“image/zhuye/1-lunbo/222.jpg” name="pic111" id="lbtu-2"
											width="200" height="280" alt="官妖" /> </a></li>
									<li
										style="display: none; position: absolute; top: 0px; left: 0px;">
										<a
										href="    //guofeng.yuedu.163.com/source/9cc63831542a4bd5aca2c6e4ca7bd05b_4&#10;    "
										target="_blank" data-model="ad" data-opration="ad_index"
										title="绝世高手"> <img src="image/zhuye/1-lunbo/333.jpg"
											name="pic111" id="lbtu-3" width="200" height="280" alt="绝世高手">
									</a></li>
									<li
										style="display: none; position: absolute; top: 0px; left: 0px;">
										<a
										href="    //guofeng.yuedu.163.com/source/6e8887b6707c43aba69b73ac57f47924_4&#10;    "
										target="_blank" data-model="ad" data-opration="ad_index"
										title="青云记"> <img src="image/zhuye/1-lunbo/444.jpg"
											name="pic111" id="lbtu-4" width="200" height="280" alt="青云记">
									</a></li>
									<li
										style="display: none; position: absolute; top: 0px; left: 0px;">
										<a
										href="    //guofeng.yuedu.163.com/source/a798a334c1cd4445beeba9fc262a9735_4&#10;    "
										target="_blank" data-model="ad" data-opration="ad_index"
										title="罪恶调查局"> <img src="image/zhuye/1-lunbo/555.jpg"
											name="pic111" id="lbtu-5" width="200" height="280"
											alt="罪恶调查局"> </a></li>
								</ul>
							</div>
							<div class="m-control">
								<div class="m-intro j-intro in">
									<a
										href="    //guofeng.yuedu.163.com/source/fe456f6effdf4585a4b489d20af503e3_4&#10;    "
										target="_blank" title="永恒至尊"><h2>永恒至尊</h2> </a> <span>剑游太墟</span>
									<a
										href="    //guofeng.yuedu.163.com/source/fe456f6effdf4585a4b489d20af503e3_4&#10;    "
										target="_blank" title="永恒至尊"><p>"武之巅峰，移山填海，捉星拿月，逆乱时空！
											剑之极境，一剑成道，一剑通神，一剑破万法！
											少年李浮尘，偶得金色小符，灵魂不断进化，在这天才如雨，强者如云的世界，以手中之剑，登临绝巅。
											天地终有陨落，我欲永恒不朽。"</p> </a>
								</div>
								<div class="m-intro j-intro out">
									<a href="" target="_blank" title="官妖"><h2>官妖</h2> </a> <span>丁公子</span>
									<a href="" target="_blank" title="官妖"><p>智谋如妖，仕途之路争斗不断，一路横推对手，平步青云。青云之路，美人环绕，一路开到荼靡。不断登临权力之巅，财富、美色纷至沓来，各色人物粉墨登场。人生如戏，戏如人生。欲知官妖如何决胜千里，请看官场草根的逆袭之路。</p>
									</a>
								</div>
								<div class="m-intro j-intro out">
									<a
										href="    //guofeng.yuedu.163.com/source/9cc63831542a4bd5aca2c6e4ca7bd05b_4&#10;    "
										target="_blank" title="绝世高手"><h2>绝世高手</h2> </a> <span>我自对天笑</span>
									<a
										href="    //guofeng.yuedu.163.com/source/9cc63831542a4bd5aca2c6e4ca7bd05b_4&#10;    "
										target="_blank" title="绝世高手"><p>雇佣兵王陈扬回归都市，只为保护战友的女神妹妹。繁华都市里，陈扬如鱼得水，逍遥自在。且看一代兵王如何用铁拳和智慧打下一片商业帝国……欲了解四帝更多故事，请微信公众号搜索天道盟。</p>
									</a>
								</div>
								<div class="m-intro j-intro out">
									<a
										href="    //guofeng.yuedu.163.com/source/6e8887b6707c43aba69b73ac57f47924_4&#10;    "
										target="_blank" title="青云记"><h2>青云记</h2> </a> <span>忆秋&nbsp;</span>
									<a
										href="    //guofeng.yuedu.163.com/source/6e8887b6707c43aba69b73ac57f47924_4&#10;    "
										target="_blank" title="青云记"><p>草根出身的黄海川是一名苦逼的小公务员员，女友是江城副市长千金，来自普通家庭的黄海川被女友的父母棒打鸳鸯，四年大学恋情告吹，黄海川为挽救这段恋情，受尽白眼，被女友父母无情嘲笑，最终女友冷漠变心，嫁给了门当户对的干部家庭</p>
									</a>
								</div>
								<div class="m-intro j-intro out">
									<a
										href="    //guofeng.yuedu.163.com/source/a798a334c1cd4445beeba9fc262a9735_4&#10;    "
										target="_blank" title="罪恶调查局"><h2>罪恶调查局</h2> </a> <span>骁骑校</span>
									<a
										href="    //guofeng.yuedu.163.com/source/a798a334c1cd4445beeba9fc262a9735_4&#10;    "
										target="_blank" title="罪恶调查局"><p>一个初出校园的大好青年，一个古灵精怪的混血少女，再加上一个肾上腺切除，混吃等死的老记者，开着一辆五菱宏光，这就是罪恶调查局目前的全部阵容。</p>
									</a>
								</div>

								<!-- 主页轮播小图 -->
								<ol class="j-control">
									<li title="永恒至尊" class=""><a onmouseover="genghuan(1)"
										target="_blank"
										href="    //guofeng.yuedu.163.com/source/fe456f6effdf4585a4b489d20af503e3_4&#10;    "
										title="永恒至尊"> <img src="image/zhuye/1-lunbo/111.jpg"
											width="58" height="82" alt="永恒至尊"><b></b> </a> <span>1</span>
									</li>
									<li title="官妖" class=""><a onmouseover="genghuan(2)"
										target="_blank"
										href="    //guofeng.yuedu.163.com/source/eaff9a66f2c542f6b668d904dd4e778f_4&#10;    "
										title="官妖"> <img src="image/zhuye/1-lunbo/222.jpg"
											width="58" height="82" alt="官妖"><b></b> </a> <span>2</span>
									</li>
									<li title="绝世高手" class=""><a onmouseover="genghuan(3)"
										target="_blank"
										href="    //guofeng.yuedu.163.com/source/9cc63831542a4bd5aca2c6e4ca7bd05b_4&#10;    "
										title="绝世高手"> <img src="image/zhuye/1-lunbo/333.jpg"
											width="58" height="82" alt="绝世高手"><b></b> </a> <span>3</span>
									</li>
									<li title="青云记" class=""><a onmouseover="genghuan(4)"
										target="_blank" href="" title="青云记"> <img
											src="image/zhuye/1-lunbo/444.jpg" width="58" height="82"
											alt="青云记"><b></b> </a> <span>4</span>
									</li>
									<li title="罪恶调查局" class=""><a onmouseover="genghuan(5)"
										target="_blank" href="" title="罪恶调查局"> <img
											src="image/zhuye/1-lunbo/555.jpg" width="58" height="82"
											alt="罪恶调查局"><b></b> </a> <span>5</span>
									</li>
								</ol>
							</div>
						</div>
						<div class="m-headlines">
							<div class="m-col fl">
								<h3>
									<a
										href="    //guofeng.yuedu.163.com/book_reader/e05b95c212b24e7ea346aa3c4dc5a8c3_4/d0b58ee6d65040dda7b243223b4772ad_4&#10;    "
										target="_blank" title="小保安深夜救下上司 次日被提拔">小保安深夜救下上司 次日被提拔</a>
								</h3>
								<div class="m-titlelist">
									<ul>
										<li><a
											href="    //guofeng.yuedu.163.com/source/a6bc87d3962f4ee6a39e9a2763f99809_4&#10;    "
											target="_blank" title="我把你当领导，你却想上我！">我把你当领导，你却想上我！</a>
										</li>
										<li><a
											href="    //guofeng.yuedu.163.com/source/d09d768971464220b7c1382123861f9a_4&#10;    "
											target="_blank" title="推拿，开背，俺只为美女服务">推拿，开背，俺只为美女服务</a>
										</li>
										<li><a
											href="    //guofeng.yuedu.163.com/source/a4caec454cd54976a29fa79cd288ad32_4&#10;    "
											target="_blank" title="喂马，劈柴，泡天下妞">喂马，劈柴，泡天下妞</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="m-col fr">
								<h3>
									<a
										href="    //guofeng.yuedu.163.com/source/63aa8b1f038944c48d8e3c6b07c255e9_4&#10;    "
										target="_blank" title="上班第一天，美女总裁硬上弓！">上班第一天，美女总裁硬上弓！</a>
								</h3>
								<div class="m-titlelist">
									<ul>
										<li><a
											href="    //guofeng.yuedu.163.com/source/1a17b7d9c3374c3dadb91381f2837e19_4&#10;    "
											target="_blank" title="冰山女总裁私下竟对我……">冰山女总裁私下竟对我……</a>
										</li>
										<li><a
											href="    //guofeng.yuedu.163.com/source/3f07322b4d5a4c9b8d914fb3a00df3e4_4&#10;    "
											target="_blank" title="讲一讲，我同美女合租的日子">讲一讲，我同美女合租的日子</a>
										</li>
										<li><a
											href="    //guofeng.yuedu.163.com/source/def106027d444ba986b93a1955dc6402_4&#10;    "
											target="_blank" title="私密纹身师，只为美女服务！">私密纹身师，只为美女服务！</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- 右边栏目 -->
					<div class="m-col fr">
						<header>
							<b class="icon-hot"></b>
							<h2>24小时热销</h2>
						</header>
						<div class="m-ranklist">
							<ul id="J_RankHotSell" class="">
								<li><div class="unfold-s">
										<a href="xiangqing.do?method=findbyid&bid=${book1.bid }"
											title="官梯" target="_blank"><div class="intro">
												<i class="num num-1">NO.1</i>
												<h3>${book1.bname }</h3>
												<span class="color-hot">销量冠军</span>
												<p>${book1.aname }</p>
											</div> <img src="${pageContext.request.contextPath}/image/xqimg/shuxq/${book1.b_img }" alt="${book1.bname }"> </a>
									</div>
								</li>
								<li><p class="fold">
										<a href="xiangqing.do?method=findbyid&bid=${book2.bid }"><i
											class="num num-2">2</i>${book2.bname }</a>
									</p></li>
								<li><p class="fold">
										<a href="xiangqing.do?method=findbyid&bid=${book3.bid }"><i
											class="num num-3">3</i>${book3.bname }</a>
									</p></li>
								<c:set var="index" value="4"></c:set>
								<c:forEach items="${books2 }" var="books2" begin="3">
									<li><p class="fold">
											<a href="xiangqing.do?method=findbyid&bid=${books2.bid }"><i
												class="num">${index }</i>${books2.bname }</a>
										</p></li>
									<c:set var="index" value="${index+1 }"></c:set>
								</c:forEach>
							</ul>
							<a href="/yc/rank/sell/male#/day" class="more" target="_blank">查看更多<i></i>
							</a>
						</div>
					</div>
				</section>
				<section class="g-sec">
					<div class="m-news">
						<ul class="f-cb">
							<li><a
								href="            https://zz.yuedu.163.com/static/welfare-male.html&#10;    "
								target="_blank" title="网易云阅读2017年男频作者福利"><em>公告</em><i></i>网易云阅读2017年男频作者福利</a>
							</li>
							<li><a
								href="            /source/b3558290e6514e209511d5a3463b20bc_4&#10;    "
								target="_blank" title="现实题材大神“小桥老树”新书独家首发"><em>推荐</em><i></i>现实题材大神“小桥老树”新书独家首发</a>
							</li>
							<li><a
								href="            /source/ts_d315e63f9fe747bead72d81336625709_4&#10;    "
								target="_blank" title="月关新书《逍遥游》同步首发"><em>推广</em><i></i>月关新书《逍遥游》同步首发</a>
							</li>
							<li><a
								href="            /source/a59ca906d4ef4df5b9bb6320dde99bdc_4&#10;    "
								target="_blank" title="《人工智能》网易首部网络电影开拍"><em>推广</em><i></i>《人工智能》网易首部网络电影开拍</a>
							</li>
							<li><a
								href="            http://book.163.com/14/0714/17/A14NMN6K00924JP7.html&#10;    "
								target="_blank" title="举报不良内容，获赠百元红包"><em>公告</em><i></i>举报不良内容，获赠百元红包</a>
							</li>
							<li><a
								href="    //guofeng.yuedu.163.com/source/0e02f54bd9424482babc7e9f30e6bc59_4&#10;    "
								target="_blank" title="大神张君宝新书《少年拳圣》"><em>推荐</em><i></i>大神张君宝新书《少年拳圣》</a>
							</li>
						</ul>
					</div>
				</section>
				<section class="g-sec">
					<div class="m-book-six">
						<ul class="content">
							<c:forEach items="${books3 }" var="books3" end="4">
								<li><a
									href="xiangqing.do?method=findbyid&bid=${books3.bid}"
									target="_blank" title="${books3.b_img} "><img
										src="${pageContext.request.contextPath}/image/xqimg/shuxq/${books3.b_img}" width="142" height="199"
										alt="${books3.bname} "> </a>
								</li>
							</c:forEach>
							<li class="ll"><a
								href="xiangqing.do?method=findbyid&bid=${book4.bid }"
								target="_blank" title="${book4.bname }"><img
									src="${pageContext.request.contextPath}/image/xqimg/shuxq/${book4.b_img }" width="142" height="199"
									alt="${book4.bname }"> </a>
							</li>
						</ul>
					</div>
				</section>
				<!-- 人气精品 -->
				<section class="g-sec">
					<div class="m-col m-col-l fl">
						<header>
							<h2>人气精品</h2>
						</header>
						<div class="m-3dSlider" id="J_3DSlider">
							<div class="inner j-slider">
								<div class="j-sliderItem animate"
									style="width: 57.5096px; height: 75.8637px; top: 24.0682px; opacity: 0.931698; display: inline-block; left: 199.223px; z-index: 6; overflow: hidden;">
									<a
										href="    //guofeng.yuedu.163.com/source/cef68512bbe5437aa431714365e9f4de_4&#10;    "
										target="_blank" title="神奇小村长"> <img width="94"
										height="124"
										src="https://easyreadfs.nosdn.127.net/R8U3jKFzGeImm9SW1zuI2A==/8796093023389675971?imageView&amp;quality=90&amp;thumbnail=94y124"
										srcset="https://easyreadfs.nosdn.127.net/R8U3jKFzGeImm9SW1zuI2A==/8796093023389675971?imageView&amp;quality=90&amp;thumbnail=188y248 2x"
										style="width: 57.5096px; height: 75.8637px; display: inline-block; overflow: hidden;">
									</a>
								</div>
								<div class="j-sliderItem animate"
									style="width: 47px; height: 62px; top: 31px; opacity: 0; display: none; left: 227.397px; z-index: 6; overflow: hidden;">
									<a
										href="    //guofeng.yuedu.163.com/source/924f125c3175435dbdc9403c8f522c15_4&#10;    "
										target="_blank" title="冥府少主"> <img width="94" height="124"
										src="https://easyreadfs.nosdn.127.net/OuuJBxeggfhKB1DeDqL86w==/8796093022989127722?imageView&amp;quality=90&amp;thumbnail=94y124"
										srcset="https://easyreadfs.nosdn.127.net/OuuJBxeggfhKB1DeDqL86w==/8796093022989127722?imageView&amp;quality=90&amp;thumbnail=188y248 2x"
										style="width: 47px; height: 62px; display: inline-block; overflow: hidden;">
									</a>
								</div>
								<div class="j-sliderItem animate"
									style="width: 47.7513px; height: 62.9562px; top: 30.4918px; opacity: 0.0683022; display: inline-block; left: -37.2679px; z-index: 9; overflow: hidden;">
									<a
										href="    //guofeng.yuedu.163.com/source/989591b6e20744bc82b94f835b64ceed_4&#10;    "
										target="_blank" title="我是老司机"> <img width="94"
										height="124"
										src="https://easyreadfs.nosdn.127.net/Vsb8obwuEsFQZGbpGYuF1Q==/8796093023354467258?imageView&amp;quality=90&amp;thumbnail=94y124"
										srcset="https://easyreadfs.nosdn.127.net/Vsb8obwuEsFQZGbpGYuF1Q==/8796093023354467258?imageView&amp;quality=90&amp;thumbnail=188y248 2x"
										style="width: 47.7513px; height: 63.0245px; display: inline-block; overflow: hidden;">
									</a>
								</div>
								<div class="j-sliderItem animate"
									style="width: 59.2171px; height: 78.1859px; top: 22.9248px; opacity: 1; display: inline-block; left: 2.73209px; z-index: 19; overflow: hidden;">
									<a
										href="    //guofeng.yuedu.163.com/source/6741e73965f14178bacfea41c10ff4d0_4&#10;    "
										target="_blank" title="出将入相"> <img width="94" height="124"
										src="https://easyreadfs.nosdn.127.net/e_gBgCPtsW18n5iR5-GJqw==/8796093023362674615?imageView&amp;quality=90&amp;thumbnail=94y124"
										srcset="https://easyreadfs.nosdn.127.net/e_gBgCPtsW18n5iR5-GJqw==/8796093023362674615?imageView&amp;quality=90&amp;thumbnail=188y248 2x"
										style="width: 59.2171px; height: 78.1176px; display: inline-block; overflow: hidden;">
									</a>
								</div>
								<div class="j-sliderItem animate"
									style="width: 73.8567px; height: 97.428px; top: 13.286px; opacity: 1; display: inline-block; left: 42.7321px; z-index: 154; overflow: hidden;">
									<a
										href="    //guofeng.yuedu.163.com/source/7fbb1afaed87415289f6f09900420a52_4&#10;    "
										target="_blank" title="道途"> <img width="94" height="124"
										src="https://easyreadfs.nosdn.127.net/v-T8Dw1osS4c309Y7ZgEVQ==/8796093022877112469?imageView&amp;quality=90&amp;thumbnail=94y124"
										srcset="https://easyreadfs.nosdn.127.net/v-T8Dw1osS4c309Y7ZgEVQ==/8796093022877112469?imageView&amp;quality=90&amp;thumbnail=188y248 2x"
										style="width: 73.8567px; height: 97.428px; display: inline-block; overflow: hidden;">
									</a>
								</div>
								<div class="j-sliderItem animate"
									style="width: 92.4974px; height: 122.088px; top: 0.97399px; opacity: 1; display: inline-block; left: 84.2088px; z-index: 64; overflow: hidden;">
									<a
										href="    //guofeng.yuedu.163.com/source/1eb74c5316504630b8c64de93df20242_4&#10;    "
										target="_blank" title="鉴宝王者在都市"> <img width="94"
										height="124"
										src="https://easyreadfs.nosdn.127.net/bztZDHNsaIHI12A85kLwGw==/8796093023148544591?imageView&amp;quality=90&amp;thumbnail=94y124"
										srcset="https://easyreadfs.nosdn.127.net/bztZDHNsaIHI12A85kLwGw==/8796093023148544591?imageView&amp;quality=90&amp;thumbnail=188y248 2x"
										style="width: 92.4974px; height: 122.019px; display: inline-block; overflow: hidden;">
									</a>
								</div>
								<div class="j-sliderItem animate"
									style="width: 71.3978px; height: 94.1495px; top: 14.8952px; opacity: 1; display: inline-block; left: 145.315px; z-index: 9; overflow: hidden;">
									<a
										href="    //guofeng.yuedu.163.com/source/9ce988d69f564ddc9d56022d4ad15ce9_4&#10;    "
										target="_blank" title="法医日记"> <img width="94" height="124"
										src="https://easyreadfs.nosdn.127.net/wIX1B1uSKUg3IIoGxxfVFQ==/8796093023327630007?imageView&amp;quality=90&amp;thumbnail=94y124"
										srcset="https://easyreadfs.nosdn.127.net/wIX1B1uSKUg3IIoGxxfVFQ==/8796093023327630007?imageView&amp;quality=90&amp;thumbnail=188y248 2x"
										style="width: 71.3978px; height: 94.2178px; display: inline-block; overflow: hidden;">
									</a>
								</div>
							</div>
							<ol class="m-control j-control">
								<li title="神奇小村长" class=""></li>
								<li title="冥府少主" class=""></li>
								<li title="我是老司机" class=""></li>
								<li title="出将入相" class=""></li>
								<li title="道途" class=""></li>
								<li title="鉴宝王者在都市" class="crt"></li>
								<li title="法医日记" class=""></li>
							</ol>
							<div class="m-intro j-intro">
								<a
									href="    //guofeng.yuedu.163.com/source/cef68512bbe5437aa431714365e9f4de_4&#10;    "
									target="_blank" title="神奇小村长"><h2>神奇小村长</h2> </a>
								<p>英俊潇洒风流倜傥的赵青云，本可以做一个低调的富二代，却被亲姑姑忽悠到一个穷山沟当了个小村长</p>
								<a class="btn"
									href="    //guofeng.yuedu.163.com英俊潇洒风流倜傥的赵青云，本可以做一个低调的富二代，却被亲姑姑忽悠到一个穷山沟当了个小村长&#10;/source/cef68512bbe5437aa431714365e9f4de_4&#10;    "
									target="_blank" title="神奇小村长">立即阅读</a>
							</div>
							<div class="m-intro j-intro">
								<a
									href="    //guofeng.yuedu.163.com/source/924f125c3175435dbdc9403c8f522c15_4&#10;    "
									target="_blank" title="冥府少主"><h2>冥府少主</h2> </a>
								<p>同黑白无常称兄道弟，同牛头马面把酒言欢，这一切都只因为那个不管是人还是神都喜欢的东西，利益.</p>
								<a class="btn"
									href="    //guofeng.yuedu.163.com/source/924f125c3175435dbdc9403c8f522c15_4&#10;    "
									target="_blank" title="冥府少主">立即阅读</a>
							</div>
							<div class="m-intro j-intro">
								<a
									href="    //guofeng.yuedu.163.com/source/989591b6e20744bc82b94f835b64ceed_4&#10;    "
									target="_blank" title="我是老司机"><h2>我是老司机</h2> </a>
								<p>为了活得更像一个人，我唯有不停地开车！贱贱和渐渐地，我就成为了一个老司机</p>
								<a class="btn"
									href="    //guofeng.yuedu.163.com为了活得更像一个人，我唯有不停地开车！贱贱和渐渐地，我就成为了一个老司机&#10;/source/989591b6e20744bc82b94f835b64ceed_4&#10;    "
									target="_blank" title="我是老司机">立即阅读</a>
							</div>
							<div class="m-intro j-intro">
								<a
									href="    //guofeng.yuedu.163.com/source/6741e73965f14178bacfea41c10ff4d0_4&#10;    "
									target="_blank" title="出将入相"><h2>出将入相</h2> </a>
								<p>兵王张沣在执行一次境外任务时，被炸弹炸成重伤，回国后，转业成为宁河镇镇长</p>
								<a class="btn"
									href="    //guofeng.yuedu.163.com兵王张沣在执行一次境外任务时，被炸弹炸成重伤，回国后，转业成为宁河镇镇长&#10;/source/6741e73965f14178bacfea41c10ff4d0_4&#10;    "
									target="_blank" title="出将入相">立即阅读</a>
							</div>
							<div class="m-intro j-intro">
								<a
									href="    //guofeng.yuedu.163.com/source/7fbb1afaed87415289f6f09900420a52_4&#10;    "
									target="_blank" title="道途"><h2>道途</h2> </a>
								<p>天灵灵，地灵灵，太上老君来显灵，神兵，急急如律令！妖魔鬼怪，茅山道术，邪与正终究如何共处。</p>
								<a class="btn"
									href="    //guofeng.yuedu.163.com天灵灵，地灵灵，太上老君来显灵，神兵，急急如律令！妖魔鬼怪，茅山道术，邪与正终究如何共处。&#10;/source/7fbb1afaed87415289f6f09900420a52_4&#10;    "
									target="_blank" title="道途">立即阅读</a>
							</div>
							<div class="m-intro j-intro active">
								<a
									href="    //guofeng.yuedu.163.com/source/1eb74c5316504630b8c64de93df20242_4&#10;    "
									target="_blank" title="鉴宝王者在都市"><h2>鉴宝王者在都市</h2> </a>
								<p>随身携带鉴宝系统，捡漏、打眼，化腐朽为神奇！敢惹我，一句话让你的无价之宝贬值成废品!</p>
								<a class="btn"
									href="    //guofeng.yuedu.163.com/source/1eb74c5316504630b8c64de93df20242_4&#10;    "
									target="_blank" title="鉴宝王者在都市">立即阅读</a>
							</div>
							<div class="m-intro j-intro">
								<a
									href="    //guofeng.yuedu.163.com/source/9ce988d69f564ddc9d56022d4ad15ce9_4&#10;    "
									target="_blank" title="法医日记"><h2>法医日记</h2> </a>
								<p>学校跳楼的少女，江边无头的女尸.,.....一桩桩凶残的案件，一次次对法律的挑战，该如何破解这些迷案</p>
								<a class="btn"
									href="    //guofeng.yuedu.163.com/source/9ce988d69f564ddc9d56022d4ad15ce9_4&#10;    "
									target="_blank" title="法医日记">立即阅读</a>
							</div>
						</div>
						<div class="m-book-row">
							<div class="book-item fl">
								<a
									href="    //guofeng.yuedu.163.com/source/d808111f9a534590a43b12f33239f3a5_4&#10;    "
									target="_blank" title="我的黑道女友">我的黑道女友</a> <span><em>2.9万</em>人点击</span>
								<p>婆娑世界有人欢笑，有人哭泣，有人欢喜有人忧；有人忙碌不停，有些人却还在做梦</p>
							</div>
							<div class="book-item fr">
								<a
									href="    //guofeng.yuedu.163.com/source/fec207782f09446195465547ae93327f_4&#10;    "
									target="_blank" title="城市的夜行者">城市的夜行者</a> <span><em>6.5万</em>人点击</span>
								<p>活着本身就是一件很困难的事情了，可是我还要为我爱的人能过得更好去努力</p>
							</div>
						</div>
						<div class="m-book-row">
							<div class="book-item fl">
								<a
									href="    //guofeng.yuedu.163.com/source/f037fa16ebaa447caa7db23432f2f4dc_4&#10;    "
									target="_blank" title="首席军神">首席军神</a> <span><em>14.6万</em>人点击</span>
								<p>从一名纨绔大少，变成了纨绔的天敌，因为他是首席军神，必须时刻守卫华夏安全。</p>
							</div>
							<div class="book-item fr">
								<a
									href="    //guofeng.yuedu.163.com/source/215698ca674d456eb904aa6740153bd3_4&#10;    "
									target="_blank" title="都市修仙传">都市修仙传</a> <span><em>7.5万</em>人点击</span>
								<p>一个没落家族子弟罗天，机缘巧合之下融合剑仙残魂和天眼，得到罕见的透视异能</p>
							</div>
						</div>
					</div>
					<div class="m-col fr">
						<header>
							<h2>点击榜</h2>
						</header>
						<div id="J_BangClick" class="m-bang m-bang-1">

							<div class="contents">
								<div class="tab-item m-ranklist">
									<ol id="djrankweek" class="">
										<li><p class="fold" style="display: none;">
												<a href="xiangqing.do?method=findbyid&bid=${book1.bid }"><i
													class="num num-1">1</i>${book1.bname }</a>
											</p>
											<div class="unfold" style="">
												<i class="num num-1">1</i>
												<div class="border f-cb">
													<a class="img"
														href="xiangqing.do?method=findbyid&bid=${book1.bid }"
														target="_blank" title="${book1.bname }"><img
														src="${pageContext.request.contextPath}/image/xqimg/shuxq/${book1.b_img }" alt="${book1.bname }"> </a>
													<h3>
														<a href="xiangqing.do?method=findbyid&bid=${book1.bid }"
															target="_blank" title="${book1.bname }">${book1.bname
															}</a>
													</h3>
													<p>${book1.aname }</p>
												</div>
											</div>
										</li>
										<li><p class="fold">
												<a href="xiangqing.do?method=findbyid&bid=${book2.bid }"><i
													class="num num-2">2</i>${book2.bname }</a>
											</p></li>
										<li><p class="fold">
												<a href="xiangqing.do?method=findbyid&bid=${book3.bid }"><i
													class="num num-3">3</i>${book3.bname }</a>
											</p></li>
										<c:set var="index" value="4"></c:set>
										<c:forEach items="${books2 }" var="books2" begin="3">
											<li><p class="fold">
													<a href="xiangqing.do?method=findbyid&bid=${books2.bid }"><i
														class="num">${index }</i>${books2.bname }</a>
												</p></li>
											<c:set var="index" value="${index+1 }"></c:set>
										</c:forEach>
									</ol>
									<a href="/yc/rank/pv/male#/week" class="more" target="_blank">查看更多<i></i>
									</a>
								</div>
								<div class="tab-item m-ranklist" style="display:none">
									<ol id="djrankmonth"></ol>
									<a href="/yc/rank/pv/male#/month" class="more" target="_blank">查看更多<i></i>
									</a>
								</div>
								<div class="tab-item m-ranklist" style="display:none">
									<ol id="djranktotal"></ol>
									<a href="/yc/rank/pv/male#/all" class="more" target="_blank">查看更多<i></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</section>
				<section class="g-sec">
					<div class="m-col m-col-l fl">
						<header style="margin-bottom: 20px;">
							<h2>分类推荐</h2>
						</header>
						<div class="m-book-cata">
							<h4>
								<span>${b61.bcname }</span>
							</h4>
							<div class="m-bookele">
								<a href="xiangqing.do?method=findbyid&bid=${b61.bid }"
									class="cover" target="_blank" title="${b61.bname }"><img
									width="97" height="136" src="${pageContext.request.contextPath}/image/xqimg/shuxq/${b61.b_img}" alt="底层人民"> </a>
								<h5>
									<a href="xiangqing.do?method=findbyid&bid=${b61.bid }"
										target="_blank" title="${b61.bname }">${b61.bname }</a>
								</h5>
								<p class="info"></p>
								<p class="desc">${b61.bintroduction}</p>
								<a class="read"
									href="xiangqing.do?method=findbyid&bid=${b61.bid }"
									target="_blank" data-model="zbtj#ts"
									data-opration="book_reader">立即阅读<i></i> </a>
							</div>
							<div class="m-listele">
								<ul>
									<li><a
										href="    //guofeng.yuedu.163.com/source/a4caec454cd54976a29fa79cd288ad32_4&#10;    "
										target="_blank" title="哥有一亩三分地，风摇枝摆，茄子花开"><span>[成长]</span>哥有一亩三分地，风摇枝摆，茄子花开</a>
									</li>
									<li><a
										href="    //guofeng.yuedu.163.com/source/246f01647f014d13ab0a9cb14e730277_4&#10;    "
										target="_blank" title="探尽人间真情，不忘梦想初心。"><span>[逆袭]</span>探尽人间真情，不忘梦想初心。</a>
									</li>
									<li><a
										href="    //guofeng.yuedu.163.com/source/0e593347758f4c6a85d441e50c2618eb_4&#10;    "
										target="_blank" title="看我开启透视真眼，起死回生！"><span>[成长]</span>看我开启透视真眼，起死回生！</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="m-book-cata even">
							<h4>
								<span>${b62.bcname }</span>
							</h4>
							<div class="m-bookele">
								<a href="xiangqing.do?method=findbyid&bid=${b62.bid }"
									class="cover" target="_blank" title="${b62.bname }"><img
									width="97" height="136" src="${pageContext.request.contextPath}/image/xqimg/shuxq/${b62.b_img}" alt="底层人民"> </a>
								<h5>
									<a href="xiangqing.do?method=findbyid&bid=${b62.bid }"
										target="_blank" title="${b62.bname }">${b62.bname }</a>
								</h5>
								<p class="info"></p>
								<p class="desc">${b62.bintroduction}</p>
								<a class="read"
									href="xiangqing.do?method=findbyid&bid=${b62.bid }"
									target="_blank" data-model="zbtj#ts"
									data-opration="book_reader">立即阅读<i></i> </a>
							</div>
							<div class="m-listele">
								<ul>
									<li><a
										href="    //guofeng.yuedu.163.com/source/95a31f8bbe7949acb7df376126c6432d_4&#10;    "
										target="_blank" title="他扼住了命运的喉咙，最终登上顶峰。"><span>[升迁]</span>他扼住了命运的喉咙，最终登上顶峰。</a>
									</li>
									<li><a
										href="    //guofeng.yuedu.163.com/source/5191641c0e8f4a0d945d53c6dbc0211e_4&#10;    "
										target="_blank" title="只要把握好机会，农家也能成豪门！"><span>[豪门]</span>只要把握好机会，农家也能成豪门！</a>
									</li>
									<li><a
										href="    //guofeng.yuedu.163.com/source/bfdd31c4265a48bf917f2e43d3f66ee9_4&#10;    "
										target="_blank" title="寒门天才奔官路，斗腐败抓贪官"><span>[寒门]</span>寒门天才奔官路，斗腐败抓贪官</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="m-book-cata">
							<h4>
								<span>${b63.bcname }</span>
							</h4>
							<div class="m-bookele">
								<a href="xiangqing.do?method=findbyid&bid=${b63.bid }"
									class="cover" target="_blank" title="${b63.bname }"><img
									width="97" height="136" src="${pageContext.request.contextPath}/image/xqimg/shuxq/${b63.b_img}" alt="底层人民"> </a>
								<h5>
									<a href="xiangqing.do?method=findbyid&bid=${b63.bid }"
										target="_blank" title="${b63.bname }">${b63.bname }</a>
								</h5>
								<p class="info"></p>
								<p class="desc">${b63.bintroduction}</p>
								<a class="read"
									href="xiangqing.do?method=findbyid&bid=${b63.bid }"
									target="_blank" data-model="zbtj#ts"
									data-opration="book_reader">立即阅读<i></i> </a>
							</div>
							<div class="m-listele">
								<ul>
									<li><a
										href="    //guofeng.yuedu.163.com/source/ef1e64b6fc0c40d2bf411577f0dcbb2e_4&#10;    "
										target="_blank" title="诸葛亮的玄孙诸立志要成为再世张良"><span>[废柴]</span>诸葛亮的玄孙诸立志要成为再世张良</a>
									</li>
									<li><a
										href="    //guofeng.yuedu.163.com/source/6bb56240ea2a415a8219b25bef25d287_4&#10;    "
										target="_blank" title="世上又有谁，真的得到了长生之法？"><span>[天才]</span>世上又有谁，真的得到了长生之法？</a>
									</li>
									<li><a
										href="    //guofeng.yuedu.163.com/source/89febcd628e74755abeb1a574d916645_4&#10;    "
										target="_blank" title="圣灵的宇宙中原来不止有人类"><span>[搞笑]</span>圣灵的宇宙中原来不止有人类</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="m-book-cata even">
							<h4>
								<span>${b64.bcname }</span>
							</h4>
							<div class="m-bookele">
								<a href="xiangqing.do?method=findbyid&bid=${b64.bid }"
									class="cover" target="_blank" title="${b64.bname }"><img
									width="97" height="136" src="${pageContext.request.contextPath}/image/xqimg/shuxq/${b64.b_img}" alt="底层人民"> </a>
								<h5>
									<a href="xiangqing.do?method=findbyid&bid=${b64.bid }"
										target="_blank" title="${b64.bname }">${b64.bname }</a>
								</h5>
								<p class="info"></p>
								<p class="desc">${b64.bintroduction}</p>
								<a class="read"
									href="xiangqing.do?method=findbyid&bid=${b64.bid }"
									target="_blank" data-model="zbtj#ts"
									data-opration="book_reader">立即阅读<i></i> </a>
							</div>
							<div class="m-listele">
								<ul>
									<li><a
										href="    //guofeng.yuedu.163.com/source/779b19d809e848719100bee2fefd209a_4&#10;    "
										target="_blank" title="一场宫廷政变中乘势而起，赢得江山美人"><span>[架空]</span>一场宫廷政变中乘势而起，赢得江山美人</a>
									</li>
									<li><a
										href="    //guofeng.yuedu.163.com/source/3b6a09f025f5426d921d0a36ae9218e8_4&#10;    "
										target="_blank" title="中国特工在与美国中情局特工的争斗"><span>[特工]</span>中国特工在与美国中情局特工的争斗</a>
									</li>
									<li><a
										href="    //guofeng.yuedu.163.com/source/cd620a9a094349ecac1900b1dec76a1a_4&#10;    "
										target="_blank" title="玉门关外、蓦然回首，谁人可谓英雄？"><span>[大汉]</span>玉门关外、蓦然回首，谁人可谓英雄？</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="m-book-cata">
							<h4>
								<span>${b64.bcname }</span>
							</h4>
							<div class="m-bookele">
								<a href="xiangqing.do?method=findbyid&bid=${b65.bid }"
									class="cover" target="_blank" title="${b65.bname }"><img
									width="97" height="136" src="${pageContext.request.contextPath}/image/xqimg/shuxq/${b65.b_img}" alt="底层人民"> </a>
								<h5>
									<a href="xiangqing.do?method=findbyid&bid=${b65.bid }"
										target="_blank" title="${b65.bname }">${b65.bname }</a>
								</h5>
								<p class="info"></p>
								<p class="desc">${b65.bintroduction}</p>
								<a class="read"
									href="xiangqing.do?method=findbyid&bid=${b65.bid }"
									target="_blank" data-model="zbtj#ts"
									data-opration="book_reader">立即阅读<i></i> </a>
							</div>
							<div class="m-listele">
								<ul>
									<li><a
										href="    //guofeng.yuedu.163.com/source/3e9ae53e0bd64fb59d348419451fb179_4&#10;    "
										target="_blank" title="四羊方尊这么重，古人真的拿它来拼酒？"><span>[刑侦]</span>四羊方尊这么重，古人真的拿它来拼酒？</a>
									</li>
									<li><a
										href="    //guofeng.yuedu.163.com/source/d7d7d4ec1ef54cf399cb80b61be92068_4&#10;    "
										target="_blank" title="阴雨绵绵的的乡野，悄然而至的邪恶生物"><span>[丧尸]</span>阴雨绵绵的的乡野，悄然而至的邪恶生物</a>
									</li>
									<li><a
										href="    //guofeng.yuedu.163.com/source/e2311614d6eb4e72a8fa4f3bb93c308b_4&#10;    "
										target="_blank" title="捕犯罪嫌疑人之夜，却突然遭遇尸变"><span>[探险]</span>捕犯罪嫌疑人之夜，却突然遭遇尸变</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="m-book-cata even">
							<h4>
								<span>${b66.bcname }</span>
							</h4>
							<div class="m-bookele">
								<a href="xiangqing.do?method=findbyid&bid=${b66.bid }"
									class="cover" target="_blank" title="${b66.bname }"><img
									width="97" height="136" src="${pageContext.request.contextPath}/image/xqimg/shuxq/${b66.b_img}" alt="底层人民"> </a>
								<h5>
									<a href="xiangqing.do?method=findbyid&bid=${b66.bid }"
										target="_blank" title="${b66.bname }">${b66.bname }</a>
								</h5>
								<p class="info"></p>
								<p class="desc">${b66.bintroduction}</p>
								<a class="read"
									href="xiangqing.do?method=findbyid&bid=${b66.bid }"
									target="_blank" data-model="zbtj#ts"
									data-opration="book_reader">立即阅读<i></i> </a>
							</div>
							<div class="m-listele">
								<ul>
									<li><a
										href="    //guofeng.yuedu.163.com/source/57a875ff26e54a938a9d63a4002eed81_4&#10;    "
										target="_blank" title="误入了死亡聊天群，世间原来真有鬼"><span>[惊悚]</span>误入了死亡聊天群，世间原来真有鬼</a>
									</li>
									<li><a
										href="    //guofeng.yuedu.163.com/source/be4cd6174b6940c9b3a2036f1224ae54_4&#10;    "
										target="_blank" title="一张发霉软盘里藏着宇宙中最可怖的秘密"><span>[宇宙]</span>一张发霉软盘里藏着宇宙中最可怖的秘密</a>
									</li>
									<li><a
										href="    //guofeng.yuedu.163.com/source/80b3879523cf4d8a96dde27a66117db9_4&#10;    "
										target="_blank" title="末日浩劫突然而至，恐怖的尸魔横行"><span>[丧尸]</span>末日浩劫突然而至，恐怖的尸魔横行</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="m-col fr">
						<header>
							<h2>月票榜</h2>
						</header>
						<div class="m-ranklist">
							<ol id="yprank" class="">
								<li><p class="fold" style="display: none;">
										<a href="/source/bc34875450394b3f9a7c43b13fc22787_4"><i
											class="num num-1">1</i>${book1.bname }</a>
									</p>
									<div class="unfold" style="">
										<i class="num num-1">1</i>
										<div class="border f-cb">
											<a class="img"
												href="xiangqing.do?method=findbyid&bid=${book1.bid }"
												target="_blank" title="${book1.bname }"><img
												src="${pageContext.request.contextPath}/image/xqimg/shuxq/${book1.b_img }" alt="${book1.bname }"> </a>
											<h3>
												<a href="xiangqing.do?method=findbyid&bid=${book1.bid }"
													target="_blank" title="${book1.bname }">${book1.bname }</a>
											</h3>
											<p>${book1.aname }</p>
										</div>
									</div>
								</li>
								<li><p class="fold">
										<a href="xiangqing.do?method=findbyid&bid=${book2.bid }"><i
											class="num num-2">2</i>${book2.bname }</a>
									</p></li>
								<li><p class="fold">
										<a href="xiangqing.do?method=findbyid&bid=${book3.bid }"><i
											class="num num-3">3</i>${book3.bname }</a>
									</p></li>
								<c:set var="index" value="4"></c:set>
								<c:forEach items="${books2 }" var="books2" begin="3">
									<li><p class="fold">
											<a href="xiangqing.do?method=findbyid&bid=${books2.bid }"><i
												class="num">${index }</i>${books2.bname }</a>
										</p></li>
									<c:set var="index" value="${index+1 }"></c:set>
								</c:forEach>

							</ol>
							<a href="/yc/rank/monthlyticket/1" class="more" target="_blank">查看更多<i></i>
							</a>
						</div>
						<header style="margin-top:50px;">
							<h2>新书榜</h2>
						</header>
						<div class="m-bang">
							<div class="m-ranklist m-ranklist-1">
								<ol id="xsrank" class="">
									<li><p class="fold" style="display: none;">
											<a href="xiangqing.do?method=findbyid&bid=${book1.bid }"><i
												class="num num-1">1</i>${book1.bname }</a>
										</p>
										<div class="unfold" style="">
											<i class="num num-1">1</i>
											<div class="border f-cb">
												<a class="img"
													href="xiangqing.do?method=findbyid&bid=${book1.bid }"
													target="_blank" title="${book1.bname }"><img
													src="${pageContext.request.contextPath}/image/xqimg/shuxq/${book1.b_img }" alt="${book1.bname }"> </a>
												<h3>
													<a href="xiangqing.do?method=findbyid&bid=${book1.bid }"
														target="_blank" title="${book1.bname }">${book1.bname
														}</a>
												</h3>
												<p>${book1.aname }</p>
											</div>
										</div>
									</li>
									<li><p class="fold">
											<a href="xiangqing.do?method=findbyid&bid=${book2.bid }"><i
												class="num num-2">2</i>${book2.bname }</a>
										</p></li>
									<li><p class="fold">
											<a href="xiangqing.do?method=findbyid&bid=${book3.bid }"><i
												class="num num-3">3</i>${book3.bname }</a>
										</p></li>
									<c:set var="index" value="4"></c:set>
									<c:forEach items="${books2 }" var="books2" begin="3">
										<li><p class="fold">
												<a href="xiangqing.do?method=findbyid&bid=${books2.bid }"><i
													class="num">${index }</i>${books2.bname }</a>
											</p></li>
										<c:set var="index" value="${index+1 }"></c:set>
									</c:forEach>
								</ol>
								<a href="/yc/category" class="more" target="_blank"
									style="display: none;">查看更多<i></i> </a>
							</div>
						</div>
					</div>
				</section>
				<section class="g-sec">
					<div class="m-book-six">
						<ul class="content">
							<c:forEach items="${books4 }" var="books4" end="4">
								<li><a
									href="xiangqing.do?method=findbyid&bid=${books4.bid }"
									target="_blank" title="${books4.bname }"><img
										src="${pageContext.request.contextPath}/image/xqimg/shuxq/${books4.b_img }" width="142" height="199"
										alt="${books4.bname }"> </a>
								</li>
							</c:forEach>
							<li class="ll"><a
								href="xiangqing.do?method=findbyid&bid=${book5.bid }"
								target="_blank" title="${book5.bname }"><img
									src="${pageContext.request.contextPath}/image/xqimg/shuxq/${book5.b_img }" width="142" height="199"
									alt="${book5.bname }"> </a>
							</li>
						</ul>
					</div>
				</section>
				<section class="g-sec">
					<div id="J_BangTable" class="m-newchaptab">
						<div class="tabs">
							<ul>
								<li class="crt"><a href="/yc/category/0_0_0_0_1"
									target="_blank">全部作品更新</a>
								</li>
							</ul>
							<span class="crt-line" style="width: 136px;"></span>
						</div>
						<div class="contents">
							<div class="tab-item" style="display: block;">
								<table class="m-chaptable" id="totalworksup">
									<tbody>
										<tr class="hd">
											<th class="col-left" width="142">类型</th>
											<th width="230">小说名称</th>
											<th width="240">最新章节</th>
											<th width="" class="col-mid">字数</th>
											<th class="col-mid" width="150">作者</th>
											<th class="col-right" width="120">更新时间</th>
										</tr>

										<c:set var="index" value="1"></c:set>
										<c:forEach items="${books6 }" var="books6">
											<c:choose>
												<c:when test="${index%2==1 }">
													<tr class="odd">
														<td class="col-left">[${books6.bcname }]</td>
														<td><a
															href="xiangqing.do?method=findbyid&bid=${books6.bid }"
															target="_blank" class="j-cutted" words="13"
															title="${books6.bname }">${books6.bname }</a>
														</td>
														<td class="col-ml"><a href="" target="_blank"
															class="j-cutted" words="13" title="1716 山道追击战">1716
																山道追击战</a><span class="png">VIP</span>
														</td>
														<td class="col-grey col-mid">${books6.bcount }</td>
														<td class="col-mid col-grey"><span class="j-cutted"
															words="10" title="黑夜de白羊">${books6.aname }</span>
														</td>
														<td class="col-right col-grey">08-08 09:46</td>
													</tr>
													<c:set var="index" value="${index+1 }"></c:set>
												</c:when>
												<c:otherwise>
													<tr class="">
														<td class="col-left">[${books6.bcname }]</td>
														<td><a
															href="xiangqing.do?method=findbyid&bid=${books6.bid }"
															target="_blank" class="j-cutted" words="13"
															title="${books6.bname }">${books6.bname }</a>
														</td>
														<td class="col-ml"><a href="" target="_blank"
															class="j-cutted" words="13" title="第二百一十四章 手术（上）">第二百一十四章
																手术（上...</a><span class="png">VIP</span>
														</td>
														<td class="col-grey col-mid">${books6.bcount }</td>
														<td class="col-mid col-grey"><span class="j-cutted"
															words="10" title="紫气東来">${books6.aname }</span>
														</td>
														<td class="col-right col-grey">08-08 09:45</td>
													</tr>
													<c:set var="index" value="${index+1 }"></c:set>
												</c:otherwise>
											</c:choose>
										</c:forEach>



									</tbody>
								</table>
							</div>
							<div class="tab-item" style="display: none;">
								<table class="m-chaptable" id="vipworksup"></table>
							</div>
							<div class="tab-item" style="display: none;">
								<table class="m-chaptable" id="freeworksup"></table>
							</div>
						</div>
					</div>
				</section>
			</div>

		</div>
		<!-- 尾部导航 -->
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
						<a id="_share_b_tsina" href="" class="s1">微博</a>
					</div>
					<div class="share">
						<a href="" class="s3">QQ空间</a>
					</div>
				</div>

			</div>
		</div>
		<div class="m-pop-qr ma" id="J_WXM" style="display:none;">
			<a class="close" href="javascript:;"></a>
		</div>
		<div class="m-pop-qr ma2" id="J_YXM" style="display:none;">
			<a class="close" href="javascript:;"></a>
		</div>
		<div class="m-pop-qr ma3" id="J_WBM" style="display:none;">
			<a class="close" href="javascript:;"></a>
		</div>
		<div id="J_ServiceNum" class="m-layer m-layer-5" style="display:none;">
			<div class="inner">
				<div class="up">
					<a href="javascript:void(0);"></a>
				</div>
				<div class="down">
					<p>
						购买书籍后无法阅读等问题<br>
					</p>
					<p>可拨打：0571-89853801</p>
				</div>
			</div>
		</div>
	</div>
	<!-- 共用结构 -->

	<div id="J_rightsidebar" style="display: none;">
		<div data-reactid=".0">
			<a href="javascript:;" class="m-gotop"
				style="display: none; right: 77px;" title="回到顶部" data-reactid=".0.0"></a>
			<div data-reactid=".0.1" style="display: none;">
				<a class="m-qr" target="_blank"
					href="/download?act=rdpages_20130925_02" style="display: none;"><img
					src="" style="display: none;"> </a>
				<div class="m-qr-icon" href="javascript:;"
					style="display: block; right: 77px;" data-reactid=".0.1.1">
					<a class="m-qr-hover" href="/download?act=rdpages_20130925_02"
						style="display: none; right: 127px;" data-reactid=".0.1.1.0"><img
						src="https://yuedu.163.com/images/down/QR_All.png"
						data-reactid=".0.1.1.0.0"> </a>
				</div>
			</div>
			<a href="/report.do" target="_blank" style="right: 77px;"
				title="举报中心" class="m-report" data-reactid=".0.2"></a>
		</div>
	</div>
	<div class="m-mask" style="z-index: 8000"></div>
	<div class="m-bonus-success">
		<div class="inner" data-reactid=".5"></div>
	</div>
	<!-- 为了适配urs web组件 登陆框提前渲染-->
	<div id="login-layer" class="m-login-layer m-login-layer-wy"
		style="display: none;">
		<div class="lytt yy">
			<a class="lyclose j-close" style="display:block;">关闭</a>
			<h4>网易邮箱登录</h4>
		</div>
		<div class="content">
			<div class="m-loginwrap">
				<div class="m-login" id="login-container"></div>
				<div class="m-loginswitch">
					<h6>其他帐号登录：</h6>
					<ul>
						<li class="sj"><a><span class="login-icon"></span>
								<div>手机号</div> </a>
						</li>
						<li class="xl xllogin"><a><span class="login-icon"></span>
								<div>新浪微博</div> </a>
						</li>
						<li class="tx txlogin"><a><span class="login-icon"></span>
								<div>腾讯微博</div> </a>
						</li>
						<li class="wx wxlogin"><a><span class="login-icon"></span>
								<div>微信</div> </a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<script src="js/2.js"></script>
	<script src="js/4.js"></script>
	<script src="js/3.js"></script>




	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-25074971-1' ], [ '_setLocalGifPath',
				'/UA-25074971-1/__utm.gif' ], [ '_setLocalRemoteServerMode' ]);
		_gaq.push([ '_addOrganic', 'baidu', 'word' ]);
		_gaq.push([ '_addOrganic', 'soso', 'w' ]);
		_gaq.push([ '_addOrganic', 'youdao', 'q' ]);
		_gaq.push([ '_addOrganic', 'sogou', 'query' ]);
		_gaq.push([ '_addOrganic', 'so.360.cn', 'q' ]);
		_gaq.push([ '_trackPageview' ]);
		_gaq.push([ '_trackPageLoadTime' ]);
		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = 'https://wr.da.netease.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		});
	</script>

</body>
</html>