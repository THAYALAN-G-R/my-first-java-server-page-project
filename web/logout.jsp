<%-- 
    Document   : logout
    Created on : 5 Jul, 2017, 8:24:51 PM
    Author     : Suriya V
--%>
<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.html");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout page</title>
    </head>
    <body>
    </body>
</html>
