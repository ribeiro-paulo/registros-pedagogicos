<%@page import="model.bean.Aluno"%>
<%@page import="model.dao.AlunoDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.bean.Registro"%>
<%@page import="model.dao.RegistroDAO"%>


<table class="table table-striped table-hover">
    <thead>
        <tr>
            <th>Nome</th>
            <th>Nível</th>
            <th>Turma</th>
            <th>Data</th>
            <th>Opções</th>
        </tr>
    </thead>
    <%
        AlunoDAO dao = new AlunoDAO();
        List<Aluno> resultado = dao.alunosComRegistro();

        for (int i = 0; i < resultado.size(); i++) {%>
    <tbody>
        <tr onclick="enviarRegistro('<%=resultado.get(i).getNome()%>', '<%=resultado.get(i).getNivel()%>', '<%=resultado.get(i).getTurma()%>', '<%=resultado.get(i).getMatricula()%>')" data-toggle="modal" data-target="#ModalRegistro">
            <td><%=resultado.get(i).getNome()%></td>
            <td><%=resultado.get(i).getNivel()%></td>
            <td><%=resultado.get(i).getTurma()%></td>
            <td>--</td>
            <td>
                <a href="#" class="icon-blue"><i class="fas fa-edit fa-lg"></i></a>
                <a href="#" class="icon-blue"><i class="fas fa-trash fa-lg"></i></a>
            </td>
        </tr>
    </tbody>
    <% }%>
</table>

<!-- Modal -->
<div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" id="ModalRegistro" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <ul class="navbar-nav">

                    <li class="nav-item">
                        <h5 class="modal-title">Nome do aluno (ainda não consegui colocar aqui)</h5>
                    </li>
                </ul>
                <button type="button" class="close" data-dismiss="modal" aria-label="Cancelar">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="listarDiscente">Discente</label>
                        <input class="form-control" type="text" id="listarDiscente" name="listarDiscente" maxlength="12" placeholder="Nome do discente" readonly>
                    </div>
                </div>
                <div class="form-row">

                    <div class="form-group col-md-4">
                        <label for="listarNivel">Nivel</label>
                        <input class="form-control" type="text" id="listarNivel" name="listarNivel" placeholder="nivel" readonly>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="listarTurma">Turma</label>
                        <input class="form-control" type="text" id="listarTurma" name="listarTurma" placeholder="Turma" readonly>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="listarMatricula">Matrícula</label>
                        <input class="form-control" type="text" id="listarMatricula" name="listarMatricula" placeholder="Matrícula do discente" readonly>
                    </div>
                </div>
                
                <div class="card col-2 text-center border-bottom-0">
                    12/11/2019
                </div>
                <div class="row col-12">
                    <textarea class="form-control" rows="5" id="descricao" name="descricao" placeholder="Descrição sobre a ocorrência"></textarea>
                </div>
<<<<<<< HEAD
                <br>
                <div class="card col-2 text-center border-bottom-0">
                    22/12/2019
                </div>
                <div class="row col-12">
                    <textarea class="form-control" rows="5" id="descricao" name="descricao" placeholder="Descrição sobre a ocorrência"></textarea>
                </div>
=======
>>>>>>> eaa54f926a83e2ee1746f60d08314c03e73172ff
            </div>

            <%--  --%> 
            <div class="modal-footer">
                <button type="button" class="btn btn-danger">Excluir</button>
                <button type="button" class="btn btn-warning">Editar</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal">Cancelar</button>
            </div>
        </div>  
    </div>
</div>
