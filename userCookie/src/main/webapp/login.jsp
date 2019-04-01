<%--
  Created by IntelliJ IDEA.
  User: mineself2016
  Date: 2019-03-31
  Time: 18:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="com.geotest.*" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>用户登录</title>
</head>
<body>
<%
    String rememberedUserName = "";
    String rememberedPassWord = "";
    Cookie[] cookies = request.getCookies();
//    选择Cookie值的方法实现
    if (cookies != null){
        for (int i = 0; i < cookies.length; i++){
            Cookie cookie = cookies[i];
            if (cookie.getName().equals("userName")){
                rememberedUserName = cookie.getValue();
            }
            if (cookie.getName().equals("passWord")){
                rememberedPassWord = cookie.getValue();
            }
        }
    }
%>


<form action="" method="post">
    用户：<input type="text" name="userName" value="<%=rememberedUserName%>"><br><br>
    密码：<input type="password" name="passWord" value="<%=rememberedPassWord%>"><br><br>
    <%--checked的选中方法实现--%>
    <input type="checkbox" name="remember" value="remember"
    <%
        if (!rememberedUserName.equals("") && !rememberedPassWord.equals(""))
            out.print("checked");
    %>
    >记住密码<br>
    <input type="submit" value="登录">

</form>

<%
    String mUserName = request.getParameter("userName");
    String mPassWord = request.getParameter("passWord");
    if (mUserName != null && mPassWord != null){

//        将密码存入Cookie
        String mrem = request.getParameter("remember");
        int expiry = 0;
        if (mrem != null){
            expiry = 60 * 2;
        }
        Cookie c1 = new Cookie("userName", mUserName);
        Cookie c2 = new Cookie("passWord", mPassWord);
        c1.setMaxAge(expiry);
        c2.setMaxAge(expiry);
        response.addCookie(c1);
        response.addCookie(c2);


        User u = new User(mUserName, mPassWord);

        if(UserBank.check(u)){
            response.sendRedirect("index.jsp?userName="+u.getmUserName());
        }
        else{
            out.println("用户名或密码不对");
        }
    }
%>

</body>
</html>
