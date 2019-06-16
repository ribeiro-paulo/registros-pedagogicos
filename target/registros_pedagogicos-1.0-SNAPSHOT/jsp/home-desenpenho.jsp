<%-- 
    Document   : home
    Created on : 15/05/2019, 11:54:23
    Author     : Paulo Ribeiro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <title>DAIC - Relatos</title>
        <meta charset="utf-8">  
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
        <link href="../css/style.css" rel="stylesheet">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>

    <body>
        <jsp:include page="../header.jsp"/>
        <div class="container">
            <!--barra de ocorrencias e relatórios -->
            <ul class="nav nav-tabs nav-justified green darken-2" role="tablist" id="fundo_home">
                <li class="nav-item">
                    <a onclick="location.href = 'home-relatos.jsp'" class="nav-link" data-toggle="tab" role="tab">
                        <i class="fas fa-file-contract fa-lg"></i>
                        Ocorrências
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" role="tab">
                        <i class="fas fa-chart-bar fa-lg"></i>
                        Relatórios   
                    </a>
                </li>
            </ul>

            
        </div>
        <jsp:include page="../footer_absolute.jsp"/>
    </body>
</html>
