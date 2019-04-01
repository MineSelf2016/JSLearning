<%--
  Created by IntelliJ IDEA.
  User: mineself2016
  Date: 2019-03-31
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>注册</title>
</head>
<body>
<form action="registertreate.jsp" method="post" name="frmregister">
    <p>用户名：<input type="text" name="userName"></p>
    <p>密码：<input type="password" name="passWord"></p>
    <p>确认密码：<input type="password" name="confirmPassWord"></p>
    <p>真实姓名：<input type="text" name="userRealName"></p>
    <p>身份证号：<input type="text" name="pId"></p>
    <p>性别：<input type="radio" name="sex" value="male">男
        <input type="radio" name="sex" value="female">女</p>
    <p>学习兴趣：<input type="checkbox" name="interest" value="china">中国地理
        <input type="checkbox" name="interest" value="world">世界地理</p>
    <p><input type="submit" value="提交"></p>
</form>

</body>
</html>
