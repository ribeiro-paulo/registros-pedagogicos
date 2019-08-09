<%-- 
    Document   : home
    Created on : 15/05/2019, 11:54:23
    Author     : Paulo Ribeiro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
        <link href="//cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.1.1.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.quicksearch/2.3.1/jquery.quicksearch.js"></script>

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

                            <nav class="navbar navbar-light" style="border-bottom: 1px #000 solid">
                                <%-- Search --%>  
                                <div class="input-group col-md-3">
                                    <input class="form-control my-0 py-1" id="txt_consulta" type="text" placeholder="Buscar registro" aria-label="Search">
                                    <div class="input-group-append">
                                        <span class="input-group-text lighten-3" id="basic-text1"><i class="fas fa-search text-grey" aria-hidden="true"></i></span>
                                    </div>
                                </div>

                                <%-- Novo registro --%>  
                                <button class="btn btn-outline-primary" data-toggle="modal" data-target=".bd-example-modal-xl">Novo registro</button>
                                <%-- Chama o modal ao clicar em novo registro --%>  
                                <div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <ul class="navbar-nav">

                                                    <li class="nav-item">
                                                        <h5 class="modal-title" id="exampleModalLabel">Selecione um aluno</h5>
                                                    </li>

                                                    <li class="nav-item end">
                                                        <div class="input-group md-form form-sm form-0 pl-0">
                                                            <input class="form-control my-0 py-1" type="text" placeholder="Search" aria-label="Search">
                                                            <div class="input-group-append">
                                                                <span class="input-group-text lighten-3" id="basic-text1"><i class="fas fa-search text-grey" aria-hidden="true"></i></span>
                                                            </div>
                                                        </div>
                                                    </li>

                                                </ul>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Cancelar">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <jsp:include page="listar-alunos.jsp"/>
                                            </div>
                                            <%-- Chama o novo registro --%> 
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                                <button type="button" href="#novo" data-dismiss="modal" data-toggle="tab" role="tab" class="btn btn-primary">Confirmar</button>
                                            </div>
                                        </div>  
                                    </div>
                                </div>
                            </nav>
                        </div> 

                        <div class="tab-content card mb-5 border-0">
                            <div class="tab-pane fade in show active" id="lista" role="tabpanel">
                                <jsp:include page="listar-registross.jsp"/>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade tab-content card mb-5 border-0" id="novo" role="tabpanel" style="margin-left: 3%; margin-right: 3%">
                        <jsp:include page="../cadastro/registro.jsp"/>
                    </div>       
                    <div class="tab-pane fade" id="desempenho" role="tabpanel">
                        <jsp:include page="desempenho.jsp"/>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp"/>
        <script>

            function enviarRegistro2(nome, nivel, turma, matricula, descricao, data, id) {

                $('#nomeDoAluno').text(nome);
                $('#nomeExcluirAluno').text(nome);
                $('#descricao').text(descricao);
                $('#data').text(data);

                var inputId = document.getElementById("id");
                inputId.value = id;

                var inputNome = document.getElementById("listarDiscente");
                inputNome.value = nome;

                var inputNivel = document.getElementById("listarNivel");
                inputNivel.value = nivel;

                var inputTurma = document.getElementById("listarTurma");
                inputTurma.value = turma;

                var inputMatricula = document.getElementById("listarMatricula");
                inputMatricula.value = matricula;

            }

            function enviarDados(nome, nivel, turma, matricula) {

                var inputNome = document.getElementById("discente");
                inputNome.value = nome;

                var inputNivel = document.getElementById("nivel");
                inputNivel.value = nivel;

                var inputTurma = document.getElementById("turma");
                inputTurma.value = turma;

                var inputMatricula = document.getElementById("matricula");
                inputMatricula.value = matricula;

            }

        </script>
        <script src="../js/consulta.js"></script>
    </body>
</html>