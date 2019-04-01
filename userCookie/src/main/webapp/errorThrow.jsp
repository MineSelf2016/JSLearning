<%--
  Created by IntelliJ IDEA.
  User: mineself2016
  Date: 2019-03-31
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="errorHandler.jsp" info="异常处理演示界面" %>
<html>
<head>
    <title>产生异常界面</title>
</head>
<body>

<a href="https://gongmingwind.iteye.com/blog/739568">(转)关于JSP中的错误页面处理</a>
<br>

<%
    out.println("ServletInfo: " + getServletInfo());
%>
<br>


<%!
    private Double toDouble(String d){
        return Double.valueOf(d);
    }

%>

<%
    double num1 = toDouble(request.getParameter("num1"));
    double num2 = toDouble(request.getParameter("num2"));
    double result = num1 / num2;
    out.println("num1 / num2 = " + result);
%>

</body>
</html>
