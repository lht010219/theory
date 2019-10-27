<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/core_rt" %>
<%--
  Created by IntelliJ IDEA.
  User: rem
  Date: 2019/10/25
  Time: 3:50 下午
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
        ul,li{
            list-style-type: none;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="navbar-header">
        <span class="navbar-brand hidden-xs hidden-sm visible-lg visible-md">给翔哥的理论系统</span>
        <span class="navbar-brand visible-sm visible-xs hidden-lg hidden-md " style="color: #5bc0de;">给翔哥的理论系统</span>
    </div>
    <button class="hidden-xs hidden-sm navbar-right btn btn-info" style="margin-right: 20px;margin-top:10px;">已登陆</button>
</nav>
<div class="box container">
    <form action="next_pc" method="POST">
        <c:choose>
            <c:when test="${t.type==1}">
                <p>单选题：</p>
                <h4>${o}、${t.title}</h4>
                <ul>
                    <li><input type="radio" name="answer" value="A"> A:${t.optionA}</li>
                    <li><input type="radio" name="answer" value="B"> B:${t.optionB}</li>
                    <li><input type="radio" name="answer" value="C"> C:${t.optionC}</li>
                    <li><input type="radio" name="answer" value="D"> D:${t.optionD}</li>
                </ul>
            </c:when>
            <c:when test="${t.type==2}">
                <p>判断题：</p>
                <h4>${o}、${t.title}</h4>
                <ul>
                    <li><input type="radio" name="answer" value="A"> 正确</li>
                    <li><input type="radio" name="answer" value="B"> 错误</li>
                </ul>
            </c:when>
            <c:otherwise>
                <p>${o}、多选题：</p>
                <h4>${t.title}</h4>
                <ul>
                    <li><input type="checkbox" name="answer1" value="A"> A:${t.optionA}</li>
                    <li><input type="checkbox" name="answer2" value="B"> B:${t.optionB}</li>
                    <li><input type="checkbox" name="answer3" value="C"> C:${t.optionC}</li>
                    <li><input type="checkbox" name="answer4" value="D"> D:${t.optionD}</li>
                </ul>
            </c:otherwise>
        </c:choose>
        <input type="submit" value="下一题" class="btn btn-success" >
    </form>
</div>

</body>

<script>
    history.pushState(null, null, document.URL);
    window.addEventListener('popstate', function () {
        history.pushState(null, null, document.URL);
    });
</script>
</html>
