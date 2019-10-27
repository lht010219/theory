<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: rem
  Date: 2019/10/25
  Time: 8:04 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
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
        <span class="navbar-brand hidden-xs hidden-sm visible-lg visible-md">翔哥你答错了</span>
        <span class="navbar-brand visible-sm visible-xs hidden-lg hidden-md " style="color: red;">翔哥你答错了</span>
    </div>
    <button class="hidden-xs hidden-sm navbar-right btn btn-danger" style="margin-right: 20px;margin-top:10px;">已登陆</button>
</nav>


<div class="box1 container ">

    <c:choose>
        <c:when test="${t.type==1}">
            <!-- 单选题 -->
            <p>单选题：</p>
            <h3>${o}、${t.title}</h3>
            <ul>
                <li>A:${t.optionA}</li>
                <li>B:${t.optionB}</li>
                <li>C:${t.optionC}</li>
                <li>D:${t.optionD}</li>
            </ul>
            <h4 style="color: red;">正确答案是：${t.answer}</h4>
        </c:when>
        <c:when test="${t.type==2}">
            <!-- 判断题 -->
            <p>判断题：</p>
            <h3>${o}、${t.title}</h3>
            <h4 style="color: red;">正确答案是：
                <c:choose>
                    <c:when test="${t.answer=='A'}">
                        正确
                    </c:when>
                    <c:otherwise>
                        错误
                    </c:otherwise>
                </c:choose>
            </h4>
        </c:when>
        <c:otherwise>
            <!-- 多选题 -->
            <p>多选题：</p>
            <h3>${o}、${t.title}</h3>
            <ul>
                <li>A:${t.optionA}</li>
                <li>B:${t.optionB}</li>
                <li>C:${t.optionC}</li>
                <li>D:${t.optionD}</li>
            </ul>
            <h4 style="color: red;">正确答案是：${t.answer}</h4>
        </c:otherwise>
    </c:choose>

        <input type="button" onclick="location.href='next'" value="下一题" class="btn btn-danger" style="width: 70%; margin:auto;" >


</div>
</body>

</html>