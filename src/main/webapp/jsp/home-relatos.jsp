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
        <title>Registros Pedagógicos</title>
        <meta charset="utf-8">  
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="../css/bootstrap/bootstrap.css"/>
        <link rel="stylesheet" href="../css/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap/mdb.css"/>
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/bootstrap/bootstrap-grid.css"/>
        <link rel="stylesheet" href="../css/bootstrap/js/bootstrap.js">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

    </head>

    <body class="body">
        <jsp:include page="../header.jsp"/>

        <div class="container body">

            <div class="container-fundo">
                <!--Nav Tabs-->
                <ul class="nav nav-tabs nav-justified" role="tablist">
                    <li class="nav-item">
                        <a href="egresso.jsp" class="nav-link active" data-toggle="tab" role="tab">
                            <i class="fas fa-paste fa-lg"></i>
                            Registros
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="campus.jsp" class="nav-link" data-toggle="tab" role="tab">
                            <i class="fas fa-chart-bar fa-lg"></i>
                            Acompanhamento   
                        </a>
                    </li>
                </ul>

                <jsp:include page="../registros/menu.jsp"/>

                <!-- Sub barra para a classifiação de relatos  -->
                <div>
                    <div style="margin-left: 2%; margin-right: 2%; margin-bottom: 5%">

                        <div class="row">
                            <div class="col-md-3">
                                Nome
                            </div>

                            <div class="col-md-3">
                                Nível
                            </div>

                            <div class="col-md-3">
                                Curso
                            </div>

                            <div class="col-md-3">
                                Data
                            </div>
                        </div>

                        <!-- Lista de relatos -->

                        <div class="row">
                            <div class="col-md-3">
                                <i class="fas fa-folder-open fa-lg"></i> Paulo
                            </div>

                            <div class="col-md-3">
                                Integrado
                            </div>

                            <div class="col-md-3">
                                Informática
                            </div>

                            <div class="col-md-3">
                                12/11/2019
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <i class="fas fa-folder-open fa-lg"></i> Eduardo
                            </div>

                            <div class="col-md-3">
                                Integrado
                            </div>

                            <div class="col-md-3">
                                Informática
                            </div>

                            <div class="col-md-3">
                                12/11/2018 
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="../footer_absolute.jsp"/>
    </body>
</html>
