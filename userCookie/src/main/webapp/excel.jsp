<%--
  Created by IntelliJ IDEA.
  User: mineself2016
  Date: 2019-03-31
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="application/vnd.ms-excel;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <title>乘法表</title>
    </head>
    <body>
        <table>
            <%
                for (int i = 1; i <= 9; i++){
                    out.print("<tr>");
                    for (int j = 1; j <= i; j++){
                        out.print("<td>" + i + "*" + j + "=" + i*j + "</td>");
                    }
                    out.print("</tr>");
                }
            %>
        </table>
    </body>

</html>

