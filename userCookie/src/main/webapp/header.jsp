<%--
  Created by IntelliJ IDEA.
  User: mineself2016
  Date: 2019-03-31
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.util.Date" %>
<%Date date = new Date(); %>
地理知识，共<%=request.getParameter("count")%>题 当前时间为<%=date.toLocaleString()%>
用户名：<%=request.getParameter("userName")%>
<hr>

