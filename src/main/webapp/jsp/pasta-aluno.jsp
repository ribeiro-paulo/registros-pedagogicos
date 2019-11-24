<%-- 
    Document   : home
    Created on : 15/05/2019, 11:54:23
    Author     : Paulo Ribeiro
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@page import="model.bean.Aluno"%>
<%@page import="java.util.List"%>
<%@page import="model.dao.AlunoDAO"%>
<%@page import="model.dao.GenericDAO"%>
<%@page import="model.bean.Aux"%>
<%@page import="java.util.List"%>
<%@page import="model.bean.Registro"%>
<%@page import="model.dao.RegistroDAO"%>
<%@page import="model.dao.AlunoDAO"%>
<%@page import="model.bean.Aluno"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <title>Registros Pedag�gicos</title>
        <meta charset="utf-8">  
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="../css/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="../css/style.css">
        <script src="https://kit.fontawesome.com/bff2ac77b8.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="../css/bootstrap/js/bootstrap.js">
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
    </head>

    <%
        Aluno aluno = new Aluno();
        AlunoDAO alunoDAO = new AlunoDAO();
        aluno = alunoDAO.findByMatricula(request.getParameter("matricula"));
    %>

    <body class="body">
        <jsp:include page="../header.jsp"/>
        <div class="container body">

            <nav class="navbar navbar-light" id="background-blue">
                <a class="navbar-brand text-white" href="../jsp/index.jsp"><i class="fa fa-arrow-alt-circle-left fa-lg"></i> Pasta de <b> <%= aluno.getNome()%> </b></a>
                <a href="" class="text-white"><i class="fa fa-print fa-lg"></i> Imprimir</a>
            </nav>

            <div class=" card mb-5 border-0">
                <div class="col-12">

                    <br>

                    <!--Feedback inicio-->
                    <!--cadastro-->
                    <%if (request.getParameter("status").equals("true")) {%>
                    <div class="alert alert-success" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="alert-heading"><i class="far fa-save fa-lg"></i> Cadastro realizado com sucesso!</h4>

                        <p>Foi registrado uma nova ocorr�ncia no aluno(a) <b> <%= aluno.getNome()%></b>, deslize para baixo para ver mais.</p>
                    </div>
                    <%}%>

                    <!--alterado-->
                    <%if (request.getParameter("status").equals("alterado")) {%>
                    <div class="alert alert-warning" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="alert-heading"><i class="far fa-edit fa-lg"></i> Altera��o realizada com sucesso!</h4>

                        <p>Foi alterado os dados de ocorr�ncia no aluno(a) <b> <%= aluno.getNome()%></b>, deslize para baixo para ver mais.</p>
                    </div>
                    <%}%>

                    <!--Ecluir-->
                    <%if (request.getParameter("status").equals("excluido")) {%>
                    <div class="alert alert-danger" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="alert-heading"><i class="far fa-trash-alt fa-lg"></i> Excluido sucesso!</h4>

                        <p>Foi excluido uma ocorr�ncia no aluno(a) <b> <%= aluno.getNome()%></b>, deslize para baixo para ver mais.</p>
                    </div>
                    <%}%>

                    <!--feedback - fim-->
                    <div class="form-row">
                        <div class="col-lg-2 text-center border">
                            <i class="text-grey fas fa-user fa-10x mt-1"></i>
                        </div>

                        <div class="form-row col-lg-10">
                            <div class="form-group col-md-12">
                                <label for="discente">Discente</label>
                                <input class="form-control" type="text" id="discente" name="discente" maxlength="12" value="<%=aluno.getNome()%>" placeholder="Nome do discente" readonly>
                            </div>

                            <div class="form-group col-md-4">
                                <label for="nivel">Nivel</label>
                                <input class="form-control" type="text" id="nivel" name="nivel" placeholder="nivel" value="<%=aluno.getNivel()%>" readonly>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="turma">Turma</label>
                                <input class="form-control" type="text" id="turma" name="turma" placeholder="Turma" value="<%=aluno.getTurma()%>"readonly>
                            </div>

                            <div class="form-group col-md-4">
                                <label for="matricula">Matr�cula</label>
                                <input class="form-control" type="text" id="matricula" name="matricula" placeholder="Matr�cula do discente" value="<%=aluno.getMatricula()%>" readonly>
                            </div>
                        </div>
                    </div>

                    <br>

                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link active" href="pasta-aluno.jsp?matricula=<%=aluno.getMatricula()%>"><i class="far fa-clone fa-lg"></i> �ltimos registros</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="desempenho.jsp?matricula=<%=aluno.getMatricula()%>"><i class="fas fa-chart-bar fa-lg"></i> Ver desempenho</a>
                        </li>
                    </ul>

                    <br>
                    <% RegistroDAO registroDAO = new RegistroDAO();
                        List<Registro> registros = registroDAO.getRegistroByMatricula(request.getParameter("matricula"));
                        if (registros.size() > 0) {
                            for (Registro r : registros) {%>
                    <form action="/registros_pedagogicos/RegistroServlet" method="POST">
                        <div class="form-row">
                            <div class="card col-md-12">
                                <div class="card-header">
                                    <nav class="navbar">

                                        <a> Modificado em: <em> <%= r.getData()%> <i class="fas fa-calendar-check fa-lg"></i> </em></a>
                                        <ul class="nav justify-content-end">
                                            <li class="nav-item">
                                                <a class="nav-link text-grey" href="" data-toggle="modal" data-target="#editar<%= r.getId()%>">
                                                    <i class="fas fa-edit fa-lg"></i> Editar
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="" data-toggle="modal" data-target="#excluir<%= r.getId()%>">
                                                    <i class="far fa-trash-alt fa-lg"></i> Excluir
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                                <div class="card-body">
                                    <a class="text-grey"><strong><%= r.getTipoDeOcorrencia()%></strong></a>
                                    <p class="card-text"><%= r.getDescricao()%></p>
                                </div>
                            </div>
                        </div>
                        <br>

                        <!-- Modal excluir -->
                        <div class="modal fade" id="excluir<%= r.getId()%>" tabindex="-1" role="dialog" aria-labelledby="TituloModalCentralizado" aria-hidden="true">
                            <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header text-white" id="background-blue">
                                        <h5>
                                            <i class="far fa-trash-alt fa-lg"></i> Excluir registro de <a class="text-bold"><%= aluno.getNome()%></a>?
                                        </h5>
                                        <a href="" class="close text-white" data-dismiss="modal" aria-label="Cancelar">
                                            <i class="fas fa-times-circle fa-lg"></i>
                                        </a>

                                        <input class="form-control" type="hidden" id="id" name="id" value="<%= r.getId()%>" readonly>
                                        <input class="form-control" type="hidden" id="matricula" name="matricula" value="<%= aluno.getMatricula()%>" readonly>
                                    </div>
                                    <div class="modal-body">
                                        <div class="alert alert-info" role="alert">
                                            <h5 class="alert-heading"><i class="fas fa-info-circle fa-lg"></i> <b>Aviso</b></h5>
                                            <p>Os dados abaixo ser�o <b>perdidos</b> ap�s a confirma��o de exclus�o.</p>
                                        </div>

                                        <div class="card col-md-12">
                                            <div class="card-header">
                                                <nav class="navbar">
                                                    <a> Modificado em: <em> <%= r.getData()%> <i class="fas fa-calendar-check fa-lg"></i> </em></a>     
                                                </nav>
                                            </div>
                                            <div class="card-body">
                                                <a class="text-grey"><strong><%= r.getTipoDeOcorrencia()%></strong></a>
                                                <p class="card-text"><%= r.getDescricao()%></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">

                                        <button type="submit" class="btn btn-danger" name="acao" value="confirmar"><i class="fas fa-trash-alt fa-lg"></i> Sim, excluir</button>

                                        <button data-dismiss="modal" type="button" class="btn btn-secondary"><i class="fas fa-times-circle fa-lg"></i> Cancelar</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Modal Editar -->
                        <div id="editar<%= r.getId()%>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header bg-blue text-white">
                                        <h5>
                                            <i class="far fa-edit fa-lg"></i> Editando registro de <a class="text-bold"><%= aluno.getNome()%></a>
                                        </h5>
                                        <a href="" class="close text-white" data-dismiss="modal" aria-label="Cancelar">
                                            <i class="fas fa-times-circle fa-lg"></i>
                                        </a>

                                        <input class="form-control" type="hidden" id="idEditar" name="idEditar" value="<%= r.getId()%>" readonly>
                                        <input class="form-control" type="hidden" id="matriculaEditar" name="matriculaEditar" value="<%= aluno.getMatricula()%>" readonly>
                                    </div>

                                    <div class="modal-body">
                                        
                                        <div class="alert alert-info" role="alert">
                                            <h5 class="alert-heading"><i class="fas fa-info-circle fa-lg"></i> <b>Aviso</b></h5>
                                            <p>Os dados abaixo ser�o <b>alterados</b> ap�s a confirma��o de de altera��o.</p>
                                        </div>
                                        
                                        <div class="form-row">
                                            <div class="card col-md-12">
                                                <div class="card-header">
                                                    <nav class="navbar">
                                                        <ul class="nav justify-content-start">
                                                            <li class="nav-item">
                                                                <a class="nav-link">Modificado em:</a>
                                                            </li>

                                                            <li class="nav-item">
                                                                <input class="form-control" type="date" id="data" name="data" placeholder="digite a nova data" value="<%= r.getData()%>">
                                                            </li>
                                                        </ul>

                                                        <ul class="nav justify-content-end">
                                                            <li class="nav-item">
                                                                <a class="nav-link">Tipo:</a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <select class="form-control" id="tipoDeOcorrencia" name="tipoDeOcorrencia">
                                                                    <option hidden="true"><%=r.getTipoDeOcorrencia()%></option>
                                                                    <option>Pais</option>
                                                                    <option>Professor</option>
                                                                    <option>Requerimento</option>
                                                                    <option>Servidores</option>
                                                                </select>
                                                            </li>
                                                        </ul>
                                                    </nav>
                                                </div>
                                                <div class="card-body">
                                                    <a>Descri��o:</a>
                                                    <textarea class="form-control"  rows="5" id="descricao" name="descricao" placeholder="Descri��o sobre a ocorr�ncia"><%= r.getDescricao()%></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <%--  --%> 
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-primary" name="acao" value="editar"><i class="fas fa-save fa-lg"></i> Salvar altera��es</button>
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="fas fa-times-circle fa-lg"></i> Cancelar</button>
                                    </div>
                                </div>  
                            </div>
                        </div>   
                    </form>
                    <% }
                    } else {
                    %> 
                    <div class="col-12 text-center">
                        <br><h4 class="text-alert"> <i class="fas fa-exclamation-triangle fa-lg"></i> N�o h� registros</h4><br>
                    </div>
                    <%}%>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp"/>
    </body>
</html>



