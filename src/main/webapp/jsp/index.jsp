<%@page import="java.time.LocalDateTime"%>
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
        <script src="../js/fontAwesome-pro/fontAwesome.js"></script>
    </head>

    <body class="body">
        <jsp:include page="../header.jsp"/>

        <div class="container">
            <nav class="navbar navbar-light" id="background-blue">
                <a class="navbar-brand text-white">Gerenciar <b>alunos</b></a>
                <button class="btn btn-outline-light" data-toggle="modal" data-target=".bd-example-modal-xl"><i class="fas fa-plus-circle fa-lg"></i> Novo registro</button>
            </nav>

            <div class=" card mb-5 border-0 px-4 py-4">
                
                <% LocalDateTime now = LocalDateTime.now(); 
                    int hora = now.getHour();
                    
                %>

                <%  if (request.getQueryString() != null) { //verifica se tem valor na url%>

                    <%if (request.getParameter("status").equals("dados_alterados")) {%>
                    <div class="alert alert-success" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="alert-heading"><i class="far fa-user-check fa-lg"></i> Dados atualizados com sucesso!</h4>

                        <p>Parabéns, os dados foram alterados com êxito, confira no seu perfil.</p>
                    </div>
                    <%}%>

                    <%if (request.getParameter("status").equals("senha_alterada")) {%>
                    <div class="alert alert-success" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="alert-heading"><i class="far fa-key fa-lg"></i> Senha atualizada com sucesso!</h4>

                        <p>Parabéns, sua senha foi alterada com êxito, confira no seu perfil.</p>
                    </div>
                    <%}%>
                    
                    <%if (request.getParameter("status").equals("erro")) {%>
                    <div class="alert alert-danger" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="alert-heading"><i class="far fa-comment-alt-exclamation fa-lg"></i> Ops!</h4>

                        <p>Senha inválida, tente novamente.</p>
                    </div>
                    <%}%>
                <%}%>
                
                <% if(hora > 0 && hora < 13 && request.getQueryString() == null){ %>
                        <div class="alert alert-info" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <h5 class="alert-heading"><i class="fal fa-smile-wink fa-lg"></i> Bom dia, <b> ${usuario.nome} </b></h5>
                        </div>
                    <%}%>
                    <% if(hora > 13 && hora < 18 && request.getQueryString() == null){ %>
                        <div class="alert alert-info" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <h5 class="alert-heading"><i class="fal fa-smile-wink fa-lg"></i> Boa tarde, <b> ${usuario.nome} </b></h5>
                        </div>
                    <%}%>
                    <% if(hora > 18 && hora < 24 && request.getQueryString() == null){ %>
                        <div class="alert alert-danger" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="alert-heading"><i class="far fa-comment-alt-exclamation fa-lg"></i> Bom dia ${usuario.usuario}</h4>
                        </div>
                    <%}%>

                <%-- Chama o modal ao clicar em novo registro --%>  
                <div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header text-white" id="background-blue">
                                <h5 class="modal-title"><i class="far fa-ballot-check fa-lg"></i> Selecione um aluno</h5>
                                <a href="" class="close text-white" data-dismiss="modal" aria-label="Cancelar">
                                    <i class="fas fa-times-circle fa-lg"></i>
                                </a>
                            </div>
                            <div class="modal-body">
                                <jsp:include page="listar-alunos.jsp"/>
                            </div>
                        </div>  
                    </div>
                </div>

                <div class="card mb-5 border-0">
                    <jsp:include page="listar-registro.jsp"/>   
                </div>
            </div>
        </div>

        <jsp:include page="../footer.jsp"/>
    </body>

    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/mdb.min.js"></script>
    <script src="../js/general.js"></script>
    <script src="../js/jquery.mask.min.js"></script>
    <script src="../js/mascaras.js"></script>
    <script src="../js/addons/datatables.min.js"></script>

    <script src="../js/filtro/registro.js"></script>
    <script src="../js/filtro/aluno.js"></script>

</html>