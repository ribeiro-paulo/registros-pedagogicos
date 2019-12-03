<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link rel="stylesheet" href="../css/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="../css/style.css">
        <script src="https://kit.fontawesome.com/bff2ac77b8.js"></script>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.js"></script>
    </head>

    <body class="body">
        <jsp:include page="../header.jsp"/>
        <main>
            <div class="container">

                <%
                    Aluno aluno = new Aluno();
                    AlunoDAO alunoDAO = new AlunoDAO();

                    aluno = alunoDAO.findByMatricula(request.getParameter("matricula"));
                %>

                <nav class="navbar navbar-expand-lg navbar-light" id="background-blue">
                    <a class="navbar-brand text-white" href="../jsp/index.jsp"><i class="fa fa-chevron-left"></i> <%= aluno.getNome().trim().split(" ")[0]%></a>
                </nav>
                <div class="card mb-5 px-4 py-2">
                    <br>
                    <form method="post" name="dados_cadastro" action="/registros_pedagogicos/RegistroServlet">
                        <div class="form-row">
                            <div class="col-lg-2 text-center border">
                                <i class="text-grey fas fa-user fa-10x mt-1"></i>
                            </div>

                            <div class="form-row col-lg-10">
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

                        <div class="form-group col-sm-12 ">
                            <label for="descricao">Descrição</label>
                            <textarea class="form-control" rows="5" id="descricao" name="descricao" placeholder="Descrição sobre a ocorrência"></textarea>
                        </div>


                        <br>

                        <div class="form-row">
                            <div class="form-group col-sm-12 text-right">
                                <button class="btn btn-primary" name="acao" type="submit" value="cadastrar" id="background-blue">
                                    <i class="fas fa-save fa-lg"></i> Salvar
                                </button>
                            </div>
                        </div>
                    </form>
                </div> 
            </div>
        </main>
        <jsp:include page="../footer.jsp"/>
    </body>
</html>
