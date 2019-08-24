<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

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

        <div class="container body">

            <%
                Aluno aluno = new Aluno();
                AlunoDAO alunoDAO = new AlunoDAO();

                aluno = alunoDAO.findByMatricula(request.getParameter("matricula"));
            %>

            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light" id="background-blue">

                    <a class="text-light nav-link" href="../jsp/index.jsp"> <h4><i class="fa fa-arrow-left mr-1"></i></h4> </a>
                    <h4 class="text-light"><b> <%= aluno.getNome()%> </b></h4>
                </nav>

                <div class="col-12 card mb-5 border-0">
                    <br>
                    <form method="post" name="dados_cadastro" action="/registros_pedagogicos/RegistroServlet">
                        <div class="form-row">
                            <div class="col-sm-2 text-center">
                                <img src="../imagens/usuario.png" class="img-thumbnail" readonly>
                            </div>

                            <div class="form-row col-md-10">
                                <div class="form-group col-md-12">
                                    <label for="discente">Discente</label>
                                    <input class="form-control" type="text" value="<%= aluno.getNome()%>" id="discente" name="discente" maxlength="12" placeholder="Nome do discente" readonly>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="nivel">Nivel</label>
                                    <input class="form-control" type="text" value="<%= aluno.getNivel()%>" id="nivel" name="nivel" placeholder="nivel" readonly>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="turma">Turma</label>
                                    <input class="form-control" type="text" value="<%= aluno.getTurma()%>" id="turma" name="turma" placeholder="Turma" readonly>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="matricula">Matrícula</label>
                                    <input class="form-control" type="text" value="<%= aluno.getMatricula()%>" id="matricula" name="matricula" placeholder="Matrícula do discente" readonly>
                                </div>
                            </div>
                        </div>

                        <br>
                        <h5 class="border-bottom border-dark"></h5>
                        <br>

                        <div class="form-row">  
                            <div class="form-group col-md-6">
                                <label for="data">Data</label>
                                <input class="form-control" type="date"id="data" name="data">                                        
                            </div>

                            <div class="form-group col-md-6 ">
                                <label for="tipoDeOcorrencia">Tipo de ocorrencia</label>
                                <select class="form-control col-md-12" id="tipoDeOcorrencia" name="tipoDeOcorrencia">
                                    <option>Pais</option>
                                    <option>Professor</option>
                                    <option>Requerimento</option>
                                    <option>Servidores</option>
                                </select>
                            </div>

                            <div class="form-group col-md-6">

                                <div class="form-group">
                                    <label for="exampleFormControlFile1">Selecionar anexo</label>
                                    <input type="file" class="form-control-file" id="exampleFormControlFile1">
                                </div>

                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-sm-12 ">
                                <label for="descricao">Descrição</label>
                                <textarea class="form-control" rows="5" id="descricao" name="descricao" placeholder="Descrição sobre a ocorrência"></textarea>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-sm-12 text-right">
                                <button class="btn btn-primary" name="acao" type="submit" value="cadastrar" id="background-blue">
                                    <i class="fa fa-check mr-1"></i>
                                    Registrar
                                </button>
                            </div>
                        </div>
                    </form>
                </div> 
            </div>
        </div>
        <jsp:include page="../footer.jsp"/>
    </body>
</html>
