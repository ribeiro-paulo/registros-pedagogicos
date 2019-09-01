<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@page import="model.bean.Aluno"%>
<%@page import="java.util.List"%>
<%@page import="model.dao.AlunoDAO"%>
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
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

    </head>

    <body class="body">
        <jsp:include page="../header.jsp"/>

        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light" id="background-blue">
                <a class="navbar-brand text-white">Gerenciar <b>alunos</b></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav mr-auto"> </ul>
                    <span class="navbar">
                        <button class="btn btn-outline-light" data-toggle="modal" data-target=".bd-example-modal-xl">Novo registro</button>
                    </span>
                </div>
            </nav>


            <div class=" card mb-5 border-0">
                <%-- Chama o modal ao clicar em novo registro --%>  
                <div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Selecione um aluno</h5>

                                <button type="button" class="close" data-dismiss="modal" aria-label="Cancelar">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <jsp:include page="listar-alunos.jsp"/>
                            </div>
                        </div>  
                    </div>
                </div>

                <div class="card mb-5 border-0">
                    <div class="col-12">
                        <br>
                        <jsp:include page="listar-registro.jsp"/>   
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="../footer.jsp"/>
    </body>
</html>