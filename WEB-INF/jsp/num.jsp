<%--
  Created by IntelliJ IDEA.
  User: rem
  Date: 2019/10/26
  Time: 9:14 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>总分</title>
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" >
</head>
<body>
<nav class="navbar navbar-default">
    <div class="navbar-header">
        <span class="navbar-brand hidden-xs hidden-sm visible-lg visible-md">给翔哥的理论系统</span>
        <span class="navbar-brand visible-sm visible-xs hidden-lg hidden-md " style="color: #5bc0de;">给翔哥的理论系统</span>
    </div>
    <button class="hidden-xs hidden-sm navbar-right btn btn-info" style="margin-right: 20px;margin-top:10px;">已登陆</button>
</nav>
<div class="box hidden-xs visible-lg hidden-sm visible-md" style="width: 250px; height: 200px; background:white; border-radius: 10px; box-shadow: 5px 5px 10px black; position: relative; top:100px; margin-left:-125px; left:50%;">
    <h3 style="line-height: 60px; text-align: center;">即将开始测试</h3>
    <p style="text-align: center;">
        100.0
    </p>
    <input type="button" value="回到首页" class=" btn btn-info" style="width: 70%; position:relative;left:50%; margin-left:-35%;"  >

</div>
<div class="box1 hidden-md hidden-lg visible-sm visible-xs" style="top:70px;width: 90%; height:250px; position: relative; margin-left: -45%; left:50%;">
    <h3 style="line-height: 60px; text-align: center;">测试结果</h3>
    <p style="text-align: center;">
        100.0
    </p>
    <input type="button" value="回到首页" class=" btn btn-info" style="width: 70%; position:relative;left:50%; margin-left:-35%;"  >

</div>
</body>
<script>
    history.pushState(null, null, document.URL);
    window.addEventListener('popstate', function () {
        history.pushState(null, null, document.URL);
    });
</script>
</html>