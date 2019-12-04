<%@page import="java.util.Random"%>
<%@page import="model.bean.Disciplina"%>
<%@page import="model.dao.DisciplinaDAO"%>
<%@page import="model.bean.Boletim"%>
<%@page import="model.dao.BoletimDAO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@page import="model.bean.Aluno"%>
<%@page import="java.util.List"%>
<%@page import="model.dao.AlunoDAO"%>
<%@page import="model.dao.GenericDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.bean.Registro"%>
<%@page import="model.dao.RegistroDAO"%>
<%@page import="model.dao.AlunoDAO"%>
<%@page import="model.bean.Aluno"%>
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
        <script src="../js/bootstrap.min.js"></script>
    </head>
    <%
        Aluno aluno = new Aluno();
        AlunoDAO alunoDAO = new AlunoDAO();
        aluno = alunoDAO.findByMatricula(request.getParameter("matricula"));

    %>
    <body class="body">
        <jsp:include page="../header.jsp"/>  
        <main>
            <div class="container">
                <nav class="navbar navbar-light bg-blue">
                    <a class="navbar-brand text-white" href="../jsp/index.jsp"><i class="fa fa-chevron-left"></i> <%= aluno.getNome().trim().split(" ")[0]%></a>
                    <a href="" id="btnImprimir" class="text-white"><i class="fa fa-print fa-lg"></i> Imprimir</a>
                </nav>
                <div class=" card mb-5 border-0">
                    <div class="px-4 py-2">
                        <div class="form-row">
                            <div class="col-md-3">
                                <div class="row justify-content-center px-0 py-0 pt-1">
                                    <div class="col-md-9 text-center border bg-light">
                                        <i class="text-grey fas fa-user fa-9x mt-1"></i>
                                    </div>
                                </div>
                            </div>

                            <div class="form-row col-md-9">
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
                                    <label for="matricula">Matrícula</label>
                                    <input class="form-control" type="text" id="matricula" name="matricula" placeholder="Matrícula do discente" value="<%=aluno.getMatricula()%>" readonly>
                                </div>
                            </div>
                        </div>
                        <ul class="nav nav-tabs mt-3" id="ocultar">    
                            <li class="nav-item">
                                <a class="nav-link" href="pasta-aluno.jsp?matricula=<%=aluno.getMatricula()%>&status=false"><i class="far fa-clone fa-lg"></i> Últimos registros</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="desempenho.jsp?matricula=<%=aluno.getMatricula()%>"><i class="fas fa-chart-bar fa-lg"></i> Ver desempenho</a>
                            </li>
                        </ul>
                        <div class="row mb-3 mt-3">
                            <div class="col-md-12 table-responsive-lg">
                                <h4>Boletim</h4>
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th scope="col">Disciplinas</th>
                                            <th scope="col">1° etapa</th>
                                            <th scope="col">2° etapa</th>
                                            <th scope="col">3° etapa</th>
                                            <th scope="col">4° etapa</th>
                                            <th scope="col">Situação</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            BoletimDAO boletimDAO = new BoletimDAO();
                                            List<Boletim> notas = boletimDAO.getBoletimByAluno(aluno);

                                            for (Boletim boletim : notas) {
                                                DisciplinaDAO disciolinaDAO = new DisciplinaDAO();
                                                Disciplina disciplina = disciolinaDAO.getById(boletim.getDisciplina());
                                        %>
                                        <tr>
                                            <td scope="row"><a href="" data-toggle="modal" data-target=".modal<%= disciplina.getId()%>"><i class="fas fa-chart-bar fa-lg"></i> <%= disciplina.getNome()%> </a></td>
                                            <td> 
                                                <input hidden type="text" value="<%= boletim.getN1()%>" id="1<%=disciplina.getId()%>"/>
                                                <%= boletim.getN1()%>
                                            </td>
                                            <td>
                                                <input hidden type="text" value="<%= boletim.getN2()%>" id="2<%=disciplina.getId()%>"/>
                                                <%= boletim.getN2()%>
                                            </td>
                                            <td>
                                                <input hidden type="text" value="<%= boletim.getN3()%>" id="3<%=disciplina.getId()%>"/>
                                                <%= boletim.getN3()%>
                                            </td>
                                            <td>
                                                <input hidden type="text" value="<%= boletim.getN4()%>" id="4<%=disciplina.getId()%>"/>
                                                <%= boletim.getN4()%> 
                                            </td>
                                            <td><%= boletim.getSituacao()%> </td>
                                        </tr>

                                    <div class="modal fade modal<%= disciplina.getId()%>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-lg modal-dialog-centered">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title"><%= disciplina.getNome()%></h4>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <h5>Desempenho durante o ano letivo</h5>
                                                    <canvas id="line<%= disciplina.getId()%>"></canvas>
                                                </div>
                                                <div class="modal-footer">

                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                                                </div>
                                            </div>  
                                        </div>
                                    </div>
                                    <%}%>
                                    </tbody>
                                </table>
                            </div>
                            <input hidden type="text" value="<%= notas.size()%>" id="qtdDisciplinas">

                            <!--media anual valores-->
                            <%
                                int valor = 0;
                                List<Float> mediaPorEtapa = boletimDAO.mediaEtapa(aluno);
                                for (Float etapa : mediaPorEtapa) {
                                    valor++;
                            %>
                            <input hidden type="text" value="<%=etapa%>"  id="etapa<%=valor%>">
                            <%}%>
                            <div class="col-12">
                                <br>
                                <h4>Rendimento anual</h4>
                                <canvas id="pier"></canvas>  
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="../footer.jsp"/>
    </body>
    <script src="../js/Chart.min.js"></script>
    <script type="text/javascript" src="../js/graficos/line2.js"></script>  
    <script type="text/javascript" src="../js/graficos/horizontal-bar.js"></script>    
    <script type="text/javascript">

        $("#btnImprimir").click(function () {
            window.print();
        });
    </script>
</html>    