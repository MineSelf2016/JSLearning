<%@page language="java" import="com.geotest.*" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/style.css">
    <title>地理知识</title>
</head>
<body>
<%--声明语句--%>
<%!
    //        题目id
    private int i = 0;
    private GeoQuestion[] mQuestions = GeoQuestionBank.getmQuestions();
    private String checkAnswer(int index, boolean mTrueAnswer){
        if (mQuestions[index].ismTrueQuestion() == mTrueAnswer){
            return "回答正确";
        }
        else{
            return "回答错误";
        }
    }

%>

<jsp:include page="header.jsp">
    <jsp:param name="count" value="<%=mQuestions.length%>"/>
</jsp:include>

    <%--java脚本内容--%>
    <%
        if (request.getParameter("next") != null){
            i = (i + 1) % mQuestions.length;
        }
        out.println(mQuestions[i].getmQuestion());
    %>

    <%--使用jsp 动态生成问题，替换掉下面的静态问题--%>
    <%--<div class="question">--%>
        <%--北京是中华人民共和国首都，简称京。--%>
    <%--</div>--%>
    <form action="" method="post" name="frmmain" id="frmmain">
        <input type="radio" name="answer" value="correct" onclick="frmsubmit();">对
        <input type="radio" name="answer" value="wrong" onclick="frmsubmit();">错
    </form>
    <form action="" method="post" name="frmnext">
        <input type="submit" name="next" value="下一题">
    </form>
    <div id="answer">
        <%
            String mAnswer = request.getParameter("answer");
            boolean mTrueQuestion = false;
            if(mAnswer != null){
                if (mAnswer.equals("correct")){
                    mTrueQuestion = true;
                }else{
                    mTrueQuestion = false;
                }
            }
            out.println(checkAnswer(i, mTrueQuestion));
        %>
    </div>

</body>
<script type="text/javascript">
    function frmsubmit() {
        let frm = document.getElementById("frmmain");
        frm.submit();
    }
</script>
</html>