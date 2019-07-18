<%@page import="model.bean.Aluno"%>
<%@page import="model.dao.AlunoDAO"%>
<%@page import="model.dao.GenericDAO"%>
<%@page import="model.bean.Aux"%>
<%@page import="java.util.List"%>
<%@page import="model.bean.Registro"%>
<%@page import="model.dao.RegistroDAO"%>

<div class="row justify-content-center">
    <div class="col-md-11">

        <%
            Aux aux = new Aux();
            GenericDAO<Aux> dao = new GenericDAO<>();
            aux = dao.findById(Aux.class, 1L);

            AlunoDAO alunoDAO = new AlunoDAO();
            Aluno alunoselecionado = alunoDAO.findByMatricula(aux.getMatricula());

        %>
        <h3 class="text-center">
            <br>Pasta de <a  id="nomeDoAluno" class="text-bold"><%= alunoselecionado.getNome()%></a>
        </h3>

        <input class="form-control" type="hidden" id="id" name="id" readonly>


        <div class="form-row">
            <div class="form-group col-md-12">
                <label for="listarDiscente">Discente</label>
                <input class="form-control" type="text" id="listarDiscente" name="listarDiscente" maxlength="12" placeholder="Nome do discente" value="<%= alunoselecionado.getNome()%>" readonly>
            </div>
        </div>
        <div class="form-row">

            <div class="form-group col-md-4">
                <label for="listarNivel">Nivel</label>
                <input class="form-control" type="text" id="listarNivel" name="listarNivel" placeholder="nivel" value="<%= alunoselecionado.getNivel()%>" readonly>
            </div>

            <div class="form-group col-md-4">
                <label for="listarTurma">Turma</label>
                <input class="form-control" type="text" id="listarTurma" name="listarTurma" placeholder="Turma" value="<%= alunoselecionado.getTurma()%>" readonly>
            </div>

            <div class="form-group col-md-4">
                <label for="listarMatricula">Matrícula</label>
                <input class="form-control" type="text" id="listarMatricula" name="listarMatricula" placeholder="Matrícula do discente" value="<%= alunoselecionado.getMatricula()%>" readonly>
            </div>
        </div>

        <h1 class="border-bottom"></h1>

        <br><h5>Últimos registros</h5><br>
        <%
            RegistroDAO registroDAO = new RegistroDAO();
            List<Registro> registros = registroDAO.getRegistroByMatricula(aux.getMatricula());

            for (Registro r : registros) {%>
        <div class="form-row">
            <div class="card col-md-12">
                <div class="card bg-lightgray">
                    <nav class="navbar">
                        <a class="text-grey">Modificado em: <em id="data"> <%=r.getData()%> <i class="far fa-clock"></i> </em></a>

                        <ul class="nav justify-content-end">
                            <li class="nav-item">
                                <a class="nav-link icon-blue" href="#"><i class="fas fa-edit fa-lg"></i> Editar</a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link" data-toggle="modal" data-target="#excluirRegistro"><i class="fas fa-trash fa-lg"></i> Excluir</a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="card-body">
                    <p class="card-text" id="descricao"><%=r.getDescricao()%></p>
                </div>
            </div>
        </div>
        <br>
        <% }%>
        <%--  --%> 
        <div class="form-row justify-content-end">
            <a class="btn btn-secondary" href="index.jsp">Voltar</a>
        </div>
    </div>
</div>

<%-- Modal de excluir --%>
<div class="modal fade" id="excluirRegistro" tabindex="-1" role="dialog" aria-labelledby="TituloModalCentralizado" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5>
                    Excluir registro de <a  id="nomeExcluirAluno" class="text-bold"><%= alunoselecionado.getNome()%></a>?
                </h5>

                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="alert alert-danger" role="alert">
                    Tem certeza que deseja excluir este registro?
                </div>
            </div>
            <div class="modal-footer">

                <button type="submit" class="btn btn-danger" name="acao" value="confirmar">Confirmar</button>

                <button data-dismiss="modal" type="button" class="btn btn-primary">Cancelar</button>
            </div>
        </div>
    </div>
</div> 