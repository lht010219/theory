<%--
  Created by IntelliJ IDEA.
  User: rem
  Date: 2019/10/24
  Time: 8:35 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>首页</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" >
    <style>
        .cc{
            clear: both;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="navbar-header" style="float: left">
        <span class="navbar-brand">给翔哥的理论系统</span>
    </div>
    <button class=" btn btn-info" onclick="location.href='exit'" style="margin-right: 20px;margin-top:10px; float: right;">已登陆</button>
    <div class="cc"></div>
</nav>
<div class="container">
    <button class="btn btn-info" onclick="location.href='routine'">常规测试</button>
</div>


</body>
<script>
    history.pushState(null, null, document.URL);
    window.addEventListener('popstate', function () {
        history.pushState(null, null, document.URL);
    });
</script>
</html>
