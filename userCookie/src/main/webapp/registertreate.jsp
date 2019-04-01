<%@ page import="com.geotest.User" %><%--
  Created by IntelliJ IDEA.
  User: mineself2016
  Date: 2019-03-31
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>注册处理</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String userName = request.getParameter("userName");
    String passWord = request.getParameter("passWord");
    String userRealName = request.getParameter("userRealName");
    String sex = request.getParameter("sex");
    String pId = request.getParameter("pId");
    String[] interests = request.getParameterValues("interest");
    String interestStr = "";

    for (int i = 0; i < interests.length; i++){
        interestStr += "," + interests[i];
    }
    if (interests.length > 0){
//        去掉第一个 , 分隔符
        interestStr = interestStr.substring(1);
    }
    User u = new User(userName, passWord, userRealName, pId, sex, interestStr);
%>
<%=u.toString()%>

</body>
</html>
