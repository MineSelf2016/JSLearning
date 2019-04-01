<%--
  Created by IntelliJ IDEA.
  User: mineself2016
  Date: 2019-03-31
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>计算矩形面积</title>
</head>
<body>
<h1>计算矩形面积，width = 4， height = 5</h1>


<jsp:include page="cal.jsp">
    <jsp:param name="width" value="4"/>
    <jsp:param name="height" value="5"/>
</jsp:include>


</body>
</html>
