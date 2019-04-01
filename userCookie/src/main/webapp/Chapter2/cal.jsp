<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: mineself2016
  Date: 2019-03-31
  Time: 19:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Cal Rectangle Area</title>
</head>
<body>

<%!
    private Double toDouble(String d){
        return Double.valueOf(d);
    }

%>

<%
    Double width = toDouble(request.getParameter("width"));
    Double height = toDouble(request.getParameter("height"));
    out.println("Rectangle's width = " + width + "<br>");
    out.println("Rectangle's height = " + height + "<br>");
    out.println("Rectangle's Area = " + (width * height) + "<br>");
%>

</body>
</html>
