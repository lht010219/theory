<%--
  Created by IntelliJ IDEA.
  User: rem
  Date: 2019/10/23
  Time: 2:33 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset='utf-8'>
  <meta http-equiv='X-UA-Compatible' content='IE=edge'>
  <title>登陆</title>
  <meta name='viewport' content='width=device-width, initial-scale=1'>
  <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" >
</head>
<body>
<nav class="navbar navbar-default">
  <div class="navbar-header">
    <span class="navbar-brand">给翔哥的理论系统</span>
  </div>
  <button class="hidden-xs hidden-sm navbar-right btn btn-info" style="margin-right: 20px;margin-top:10px;">尚未登陆</button>
</nav>
<div class="box hidden-xs visible-lg hidden-sm visible-md" style="width: 250px; height: 250px; background:white; border-radius: 10px; box-shadow: 5px 5px 10px black; position: relative; top:100px; margin-left:-125px; left:50%;">
  <h3 style="line-height: 60px; text-align: center;">登陆</h3>
  <form action="login" method="POST">
    <div class="input-group container" style="width: 90%;">
      <span class="input-group-addon">用户名</span>
      <input type="text" class="form-control" name="username">
    </div>
    <br>
    <div class="input-group container" style="width: 90%;">
      <span class="input-group-addon">密码</span>
      <input type="password" class="form-control" name="password">
    </div>
    <br>
    <input type="submit" value="登陆" class=" btn btn-info" style="width: 70%; position:relative;left:50%; margin-left:-35%;"  >
  </form>
</div>
<div class="box1 hidden-md hidden-lg visible-sm visible-xs" style="top:70px;width: 90%; height:250px; position: relative; margin-left: -45%; left:50%;">
  <h3 style="line-height: 60px; text-align: center;">登陆</h3>
  <form action="login" method="POST">
    <div class="input-group container" style="width: 90%;">
      <span class="input-group-addon">用户名</span>
      <input type="text" class="form-control" name="username">
    </div>
    <br>
    <div class="input-group container" style="width: 90%;">
      <span class="input-group-addon">密码</span>
      <input type="password" class="form-control" name="password">
    </div>
    <br>
    <input type="submit" value="登陆" class=" btn btn-info" style="width: 70%; position:relative;left:50%; margin-left:-35%;"  >
  </form>
</div>
<script>
  <% if(session.getAttribute("loginerror")!=null){ %>
    alert("登陆失败，请重新登陆")
  <% session.removeAttribute("loginerror"); %>
  <% } %>
</script>
</body>
<script>
  history.pushState(null, null, document.URL);
  window.addEventListener('popstate', function () {
    history.pushState(null, null, document.URL);
  });
</script>
</html>
