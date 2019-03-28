<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>
<style>
* {
	padding: 0px;
	margin: 0px;
	text-decoration: none;
	list-style: none;
	border: 0px;
}

#main {
	height: 940px;
	width: auto;
}

#main-1 {
	height: 600px;
	width: 1200px;
	border: #000 2px solid;
}

#zhu {
	height: 550px;
	width: 100%;
	border-top: #000 2px solid;
}

h1 {
	height: 50px;
	line-height: 50px;
	text-align: center;
}

#left {
	height: 550px;
	width: 250px;
	float: left;
}

#right {
	height: 550px;
	width: 940px;
	float: right;
	border-left: #000 2px solid;
}

.btn {
	height: 40px;
	line-height: 40px;
	width: 200px;
	background-color: #0CF;
	margin-top: 20px;
	color: #000;
	border: #000 2px solid;
}

.content {
	height: 550px;
	width: 100%;
}

.con {
	height: 450px;
	width: 100%;
}

table td,th {
	border: #000 2px solid;
}

#xinzeng {
	visibility: hidden;
}

.t {
	width: 100%;
	height: 100%;
	text-align: center;
}

#fenye {
	height: 30px;
	width: 450px;
	float: left;
	margin-top: 30px;
	margin-left: 30px;
	line-height: 30px;
}

.fy-a {
	height: 30px;
	width: 40px;
	margin-right: 20px;
}

tr {
	height: 35px;
}
#head{
	height: 50px;
	line-height: 50px;
	text-align: center;
}
#clock{
	float:right;
	margin-top:-50px;
	margin-right:20px;
}
</style>
<body>
	<div id="main" align="center">
		<div id="main-1">
			<div id="head"><h1>国风中文网信息管理</h1><div id="clock"></div></div>
			
			<div id="zhu">
				<div id="left">
					<a href="houtai.do?method=findall&page=1&size=10"><div
							class="btn">
							<h2>用户信息管理</h2>
						</div> </a> <a href="houtai2.do?method=findall&page=1&size=10"><div
							class="btn">
							<h2>作者信息管理</h2>
						</div> </a> <a href="houtai3.do?method=findall&page=1&size=10"><div
							class="btn">
							<h2>书籍管理</h2>
						</div> </a> <a href="houtai4.do?method=findall&page=1&size=10"><div
							class="btn">
							<h2>评论管理</h2>
						</div> </a> <a href="houtai5.do?method=findall&page=1&size=10"><div
							class="btn">
							<h2>书籍类别</h2>
						</div> </a>

				</div>
				<div id="right">
					<div id="content1" class="content">
						<div class="con">
							<table cellpadding="0" cellspacing="0"
								style="border-collapse:collapse; text-align:center;">
								<tbody>
									<tr>
										<th width="100px;"><h3>用户编号</h3>
										</th>
										<th width="150px;"><h3>姓名</h3>
										</th>
										<th width="100px;"><h3>密码</h3>
										</th>
										<th width="180px;"><h3>身份证</h3>
										</th>
										<th width="130px;"><h3>电话</h3>
										</th>
										<th width="100px;"><h3>操作</h3>
										</th>
									</tr>
									<c:forEach items="${map1.list }" var="a">
										<form method="post"
											action="houtai.do?method=updateyonghu&uid=${a.uid }">
											<tr>
												<td>${a.uid }</td>
												<td><input class="t" type="text" name="uname"
													value="${a.uname }" /></td>
												<td><input class="t" type="text" name="upassword"
													value="${a.upassword }" />
												</td>
												<td>${a.uIDNO }</td>
												<td><input class="t" type="text" name="uphone"
													value="${a.uphone }" /></td>
												<td><a href="houtai.do?method=delyonghu&uid=${a.uid }">删除</a><span>|</span>
													<input type="submit" value="修改" />
												</td>
											</tr>
										</form>
									</c:forEach>

									<form method="post" action="houtai.do?method=xinzeng">
										<tr id="xinzeng">
											<td><input class="t" name="uid" type="text" value="" />
											</td>
											<td><input class="t" name="uname" type="text" value="" />
											</td>
											<td><input class="t" name="upassword" type="text"
												value="" />
											</td>
											<td><input class="t" name="uIDNO" type="text" value="" />
											</td>
											<td><input class="t" name="uphone" type="text" value="" />
											</td>
											<td><input type="submit" value="新增" />
											</td>
										</tr>
									</form>
								</tbody>
							</table>
						</div>
						<div id="fenye">
							当前${map1.page }/${map1.pageCount }页
							<c:choose>
								<c:when test="${map1.page==1 }"></c:when>
								<c:otherwise>
									<a class="fy-a"
										href="houtai.do?method=findall&page=1&size=${map1.size }">首页</a>
									<a class="fy-a"
										href="houtai.do?method=findall&page=${map1.page-1}&size=${map1.size }">${map1.page-1}</a>
								</c:otherwise>
							</c:choose>

							<a class="fy-a"
								href="houtai.do?method=findall&page=${map1.page}&size=${map1.size }">${map1.page}</a>
							<c:choose>
								<c:when test="${map1.page==map1.pageCount }"></c:when>
								<c:otherwise>
									<a class="fy-a"
										href="houtai.do?method=findall&page=${map1.page+1}&size=${map1.size }">${map1.page+1}</a>
									<a class="fy-a"
										href="houtai.do?method=findall&page=${map1.pageCount}&size=${map1.size }">尾页</a>
								</c:otherwise>
							</c:choose>


						</div>
						<div id="xz-btn"
							style="margin-top:30px; float:right; width:80px;
                    height:30px; margin-right:20px; line-height:30px; font-size:24px; background-color:#0CF; border:#000 2px solid; color:#000;">
							<a href="#" style="color:#000;" onclick="xinzeng()">新增</a>
						</div>

					</div>





				</div>
			</div>
		</div>
	</div>
</body>
<script>
	function xinzeng() {
		document.getElementById('xinzeng').style.visibility = "visible";
	}

	function realSysTime(clock) {
		var now = new Date(); //创建Date对象 
		var year = now.getFullYear(); //获取年份 
		var month = now.getMonth(); //获取月份 
		var date = now.getDate(); //获取日期 
		var day = now.getDay(); //获取星期 
		var hour = now.getHours(); //获取小时 
		if(hour<10){
			hour = "0"+hour;
		}
		var minu = now.getMinutes(); //获取分钟 
		if(minu<10){
			minu = "0"+minu;
		}
		var sec = now.getSeconds(); //获取秒钟 
		if(sec<10){
			sec = "0"+sec;
		}
		month = month + 1;
		var arr_week = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五",
				"星期六");
		var week = arr_week[day]; //获取中文的星期 
		var time = year + "年" + month + "月" + date + "日 " + week + " " + hour
				+ ":" + minu + ":" + sec; //组合系统时间 
		clock.innerHTML = time; //显示系统时间 
	}
	window.onload = function() {
		window.setInterval("realSysTime(clock)", 1000); //实时获取并显示系统时间 
	}
</script>

</html>
