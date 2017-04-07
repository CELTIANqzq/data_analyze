<%--
  Created by IntelliJ IDEA.
  User: liujie
  Date: 2017/3/16
  Time: 下午2:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>

  <%--<a href="account/loginUI.do">后台</a> <br/>--%>
  <%--<a href="front_home.do">数据分析</a>--%>
  <%
     response.sendRedirect(request.getContextPath()+"/front_home.do");
  %>

  </body>
</html>
