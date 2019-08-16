<%-- 
    Document   : home
    Created on : 15/05/2019, 11:54:23
    Author     : Paulo Ribeiro
--%>

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

    <%
        Aluno aluno = new Aluno();
        AlunoDAO alunoDAO = new AlunoDAO();
        aluno = alunoDAO.findByMatricula(request.getParameter("matricula"));
    %>

    <body class="body">
        <jsp:include page="../header.jsp"/>
        <div class="container body">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light" id="background-blue">

                    <a class="text-light nav-link" href="../jsp/index.jsp"> <h4><i class="fa fa-arrow-left mr-1"></i></h4> </a>
                    <h4 class="text-light">Pasta de <b> <%= aluno.getNome()%> </b></h4>

                </nav>

                <div class=" card mb-5 border-0">

                    <div class="col-12">
                        <br> 
                        <div class="form-row">
                            <div class="col-sm-2 text-center">
                                <img src="../imagens/usuario.png" class="img-thumbnail" readonly>
                            </div>

                            <div class="form-row col-md-10">
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

                        <h1 class="border-bottom"></h1>


                        <ul class="nav nav-tabs card-header-tabs">
                            <li class="nav-item">
                                <a class="nav-link" href="pasta-aluno.jsp?matricula=<%=aluno.getMatricula()%>">Últimos registros</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="desempenho.jsp?matricula=<%=aluno.getMatricula()%>">Ver desempenho</a>
                            </li>
                        </ul>
                        <br>

                        <div class="row">
                            <br>
                            <!--                            <div class="col-md-6">
                                                            <canvas id="line"></canvas>
                                                        </div>
                            
                                                        <div class="col-md-6">
                                                            <canvas id="bar"></canvas>
                                                        </div>
                                                        <br><br>
                                                        <div class="col-md-6">
                                                            <canvas id="horizontal-bar"></canvas>
                                                        </div>
                            
                                                        <div class="col-md-6">
                                                            <canvas id="pie"></canvas>
                                                        </div>-->
                            
                            <div class="col-md-12">
                                <br>
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
                                        <tr>
                                            <td scope="row">Portuguẽs</td>
                                            <td>10</td>
                                            <td>10</td>
                                            <td>7</td>
                                            <td>10</td>
                                            <td>Aprovado</td>
                                        </tr>
                                        <tr>
                                            <td scope="row">Matemática</td>
                                            <td>10</td>
                                            <td>10</td>
                                            <td>10</td>
                                            <td>10</td>
                                            <td>Aprovado</td>
                                        </tr>
                                        <tr>
                                            <td scope="row">Física</td>
                                            <td>10</td>
                                            <td>10</td>
                                            <td>5</td>
                                            <td>10</td>
                                            <td>Aprovado</td>
                                        </tr>

                                        <tr>
                                            <td scope="row">Geografia</td>
                                            <td>10</td>
                                            <td>10</td>
                                            <td>10</td>
                                            <td>10</td>
                                            <td>Aprovado</td>
                                        </tr>

                                        <tr>
                                            <td scope="row">História</td>
                                            <td>10</td>
                                            <td>8</td>
                                            <td>10</td>
                                            <td>10</td>
                                            <td>Aprovado</td>
                                        </tr>

                                        <tr>
                                            <td scope="row">Química</td>
                                            <td>10</td>
                                            <td>10</td>
                                            <td>7</td>
                                            <td>10</td>
                                            <td>Aprovado</td>
                                        </tr>

                                        <tr>
                                            <td scope="row">Inglẽs</td>
                                            <td>10</td>
                                            <td>10</td>
                                            <td>10</td>
                                            <td>10</td>
                                            <td>Aprovado</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="col-12">
                                <br>
                                <h4>Média de rendimento anual</h4>
                                <canvas id="line"></canvas>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp"/>
    </body>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.js"></script>
    <script src="../js/Chart.min.js"></script>
    <script type="text/javascript" src="../js/graficos/line.js"></script>
    <script type="text/javascript" src="../js/graficos/bar.js"></script>
    <script type="text/javascript" src="../js/graficos/horizontal-bar.js"></script>
    <script type="text/javascript" src="../js/graficos/pie.js"></script>
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

</html>



