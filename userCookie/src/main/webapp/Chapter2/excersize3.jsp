<%--
  Created by IntelliJ IDEA.
  User: mineself2016
  Date: 2019-03-31
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.util.*" %>
<html>
<head>
    <title>显示当前日期和时间</title>
</head>
<body>

<%
//    注释是否显示？
    Date date = new Date();
    out.println("当前日期和时间" + date.toLocaleString());
%>

</body>
</html>
