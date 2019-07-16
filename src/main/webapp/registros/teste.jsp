<%-- 
    Document   : teste
    Created on : 15 de jul de 2019, 16:17:14
    Author     : paulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="teste.jsp?matricula=paulo">paulo</a>

        <%
            String mensagem = request.getParameter("matricula");
        %>
        <h2><%= mensagem%></h2>
        

    </body>
</html>
