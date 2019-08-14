<%-- 
    Document   : teste
    Created on : 15 de jul de 2019, 16:17:14
    Author     : paulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="model.dao.AlunoDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        

        <%
            String mensagem = request.getParameter("matricula");
            
            AlunoDAO dao = new AlunoDAO();
            
            String nome = dao.findByMatricula(mensagem).getNome();
            
        %>
        <h2><%= nome%></h2>
        

    </body>
</html>
