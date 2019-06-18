<%-- 
    Document   : menu
    Created on : 30/05/2019, 15:29:32
    Author     : Junior
--%>
<script src='http://code.jquery.com/jquery-2.1.3.min.js'></script>
<script src='//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js'></script>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.bean.Aluno"%>
<%@page import="java.util.List"%>
<%@page import="model.dao.AlunoDAO"%>
<nav class="navbar navbar-expand-lg navbar-light" style="border-bottom: 1px #000 solid">

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

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

        <button type="novo-registro" class="btn btn-outline-success" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Novo Registro</button>

        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
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
                        <%
                            AlunoDAO alunoDAO = new AlunoDAO();
                            List<Aluno> alunos = alunoDAO.findAll();
                            if (!alunos.isEmpty()) {
                        %>                           
                        <%  for (Aluno aluno : alunos) {%>
                        <div class="list-group">
                            <button type="button" class="list-group-item list-group-item-action"><%=aluno.getNome()%></button>
                        </div>
                        <%  }
                            }%>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <button type="button" class="btn btn-primary">Enviar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>
