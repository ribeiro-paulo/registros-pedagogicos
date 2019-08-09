<%@page import="model.dao.GenericDAO"%>
<%@page import="model.bean.Aux"%>
<%@page import="java.util.List"%>
<%@page import="model.bean.Registro"%>
<%@page import="model.dao.RegistroDAO"%>
<%@page import="model.dao.AlunoDAO"%>
<%@page import="model.bean.Aluno"%>
<table id="tabela" class="table table-striped table-hover">
    <thead>
        <tr>
            <th>Nome</th>
            <th>Descrição</th>
        </tr>
    </thead>

    <%
        Aux aux = new Aux();
        GenericDAO<Aux> dao = new GenericDAO<>();
        aux = dao.findById(Aux.class, 1L);
        
        RegistroDAO registroDAO = new RegistroDAO();
        List<Registro> registros = registroDAO.getRegistroByMatricula(aux.getMatricula());

        for (Registro r : registros) {%>
    <tbody>
        <tr onclick="enviarRegistro2('<%=r.getAluno().getNome()%>', '<%=r.getAluno().getNivel()%>', '<%=r.getAluno().getTurma()%>', '<%=r.getMatricula()%>', '<%=r.getDescricao()%>', '<%=r.getData()%>', '<%=r.getId()%>')" data-toggle="modal" data-target="#ModalRegistro">
            <td><%=r.getData()%></td>
            <td><%=r.getDescricao()%></td>
        </tr>
    </tbody>
    <% }%>
</table>
            
<form action="/registros_pedagogicos/RegistroServlet" method="POST">
    <!-- Modal -->
    <div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" id="ModalRegistro" aria-hidden="true">
        <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <ul class="navbar-nav">

                        <li class="nav-item">
                            <h3>
                                Ficha de <a  id="nomeDoAluno" class="text-bold">Aluno não encontrado</a>
                            </h3>
                            <input class="form-control" type="hidden" id="id" name="id" readonly>
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

                    <h1 class="border-bottom"></h1>

                    <br><h5>Últimos registros</h5><br>

                    <div class="form-row">
                        <div class="card col-md-12">
                            <div class="card-header">
                                <nav class="navbar">
                                    <a class="text-grey">Modificado em: <em id="data"> data modificação <i class="far fa-clock"></i> </em></a>

                                    <ul class="nav justify-content-end">
                                        <li class="nav-item">
                                            <a class="nav-link icon-blue" href="#"><i class="fas fa-edit fa-lg"></i> Editar</a>
                                        </li>
                                        <li class="nav-item">
                                            <a data-dismiss="modal" class="nav-link" data-toggle="modal" data-target="#excluirRegistro" style="color: #0F6393"><i class="fas fa-trash fa-lg"></i> Excluir</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="card-body">
                                <p class="card-text" id="descricao">Descrever a ocorrência aqui.</p>
                            </div>
                        </div>
                    </div>
                    <br>
                    
                </div>

                <%--  --%> 
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                </div>
            </div>  
        </div>
    </div>


    <%-- Modal de excluir --%>

    <div class="modal fade" id="excluirRegistro" tabindex="-1" role="dialog" aria-labelledby="TituloModalCentralizado" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5>
                        Excluir registro de <a  id="nomeExcluirAluno" class="text-bold">Aluno não encontrado</a>?
                    </h5

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

                    <button data-dismiss="modal" type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalRegistro">Cancelar</button>
                </div>
            </div>
        </div>
    </div> 
</form>