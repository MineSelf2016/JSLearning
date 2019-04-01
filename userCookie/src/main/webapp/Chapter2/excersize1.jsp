<%--
  Created by IntelliJ IDEA.
  User: mineself2016
  Date: 2019-03-31
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>计算1+2+3+......+100</title>
</head>
<body>

<%
    int sum = 0;
    for (int i = 1; i <= 100; i++){
        sum += i;
    }
    out.println("result = " + sum);
%>

</body>
</html>
