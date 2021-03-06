<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: rem
  Date: 2019/11/4
  Time: 10:18 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单选题</title>
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
    <button class="hidden-xs hidden-sm navbar-right btn btn-info" onclick="location.href='exit'"  style="margin-right: 20px;margin-top:10px;">已登陆</button>
</nav>
<div class="box container">

    <c:forEach var="topicList" items="${topicList}">

        <h4 id="title${topicList.id}">${topicList.id+1}、${topicList.title}</h4>
        <ul id="ul${topicList.id}">
            <li><input type="radio" name="answer${topicList.id}" value="A"> A:${topicList.optionA}</li>
            <li><input type="radio" name="answer${topicList.id}" value="B"> B:${topicList.optionB}</li>
            <li><input type="radio" name="answer${topicList.id}" value="C"> C:${topicList.optionC}</li>
            <li><input type="radio" name="answer${topicList.id}" value="D"> D:${topicList.optionD}</li>
            <input type="hidden" value="${topicList.answer}" id="answer${topicList.id}" />
            <script>
                $("input[name='answer${topicList.id}']").click(function(){

                    var v=$("input[name='answer${topicList.id}']:checked").val();
                    var a=$("input[id='answer${topicList.id}']").val();
                    if(a==v){
                        $("p[id='p${topicList.answer}']").remove();
                        $("h4[id='title${topicList.id}']").css("color","green");
                    }else{
                        $("p[id='p${topicList.answer}']").remove();
                        $("h4[id='title${topicList.id}']").css("color","red");
                        $("ul[id='ul${topicList.id}']").append("<p id='p${topicList.answer}' style='color:red'>答案为：${topicList.answer}</p>")
                    }
                })
            </script>
        </ul><br>

    </c:forEach>
    <input type="button" class="btn btn-danger" onclick="location.href='index'" value="返回首页" />
</div>

</body>
</html>
