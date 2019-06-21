<%-- 
    Document   : home
    Created on : 15/05/2019, 11:54:23
    Author     : Paulo Ribeiro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                    <li class="nav-item active">
                        <a href="#registro" class="nav-link active" data-toggle="tab" role="tab">
                            <i class="fas fa-paste fa-lg"></i>
                            Registros
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#desempenho" class="nav-link" data-toggle="tab" role="tab">
                            <i class="fas fa-chart-bar fa-lg"></i>
                            Acompanhamento   
                        </a>
                    </li>
                </ul>

                <div class="tab-content card mb-5 border-0">
                     <%-- Troca a lista de registros pela de cadastro ao clicar em novo registro --%>  
                    <div class="tab-pane fade in show active" id="registro" role="tabpanel">
                        <div role="tablist">
                            <nav class="navbar navbar-expand-lg navbar-light" style="border-bottom: 1px #000 solid">
                                <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                                    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                                        <li class="nav-item active">
                                            <div class="input-group md-form form-sm form-2 pl-0">
                                                <input class="form-control my-0 py-1" type="text" placeholder="Buscar registro" aria-label="Search">
                                                <div class="input-group-append">
                                                    <span class="input-group-text lighten-3" id="basic-text1"><i class="fas fa-search text-grey" aria-hidden="true"></i></span>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>

                                    <button href="#novo" data-toggle="tab" role="tab" class="btn btn-outline-primary nav-item">Novo Registro</button>

                                </div>
                            </nav>
                        </div> 

                        <div class="tab-content card mb-5 border-0">
                            <div class="tab-pane fade in show active" id="lista" role="tabpanel">
                                <jsp:include page="registro.jsp"/>
                            </div>
                            
                            <div class="tab-pane fade tab-content card mb-5 border-0 col-md-11" id="novo" role="tabpanel" style="margin-left: 3%">
                                <jsp:include page="../cadastro/registro.jsp"/>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane fade" id="desempenho" role="tabpanel">
                        <jsp:include page="desempenho.jsp"/>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="../footer_absolute.jsp"/>
    </body>
</html>
