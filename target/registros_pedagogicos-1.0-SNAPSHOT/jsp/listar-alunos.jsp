<%@page import="model.bean.Aluno"%>
<%@page import="model.dao.AlunoDAO"%>
<%@page import="java.util.List"%>

<h6 class="text-grey">Selecione um aluno</h6>
<div class="table-responsive-lg">
    <table class="table table-sm table-striped table-bordered table-hover" id="table-aluno">
        <caption>Lista de alunos</caption>
        <thead>
            <tr>
                <th>Nome<i class="fa fa-sort float-right"></i></th>
                <th>Matrícula<i class="fa fa-sort float-right"></i></th>
                <th>Nível<i class="fa fa-sort float-right"></i></th>
                <th>Turma<i class="fa fa-sort float-right"></i></th>
                <th>Selecione<i class="fa fa-sort float-right"></i></th>
            </tr>
        </thead>
        <tbody>
            <%
                AlunoDAO alunoDAO = new AlunoDAO();
                List<Aluno> alunos = alunoDAO.findAll();
                for (int i = 0; i < alunos.size(); i++) {%>
            <tr>
                <td><%=alunos.get(i).getNome()%></td>
                <td><%=alunos.get(i).getMatricula()%></td>
                <td><%=alunos.get(i).getNivel()%></td>
                <td><%=alunos.get(i).getTurma()%></td>
                <td class="text-center">
                    <a  class="btn text-white" id="background-blue" href="../cadastro/registro.jsp?matricula=<%=alunos.get(i).getMatricula()%>">
                         Selecionar <i class="fas fa-arrow-alt-circle-right"></i>
                    </a>
                </td>
            </tr>
            <% }%>
        </tbody>
        <tfoot>
            <tr>
                <th>Nome</th>
                <th>Matrícula</th>
                <th>Nível</th>
                <th>Turma</th>
                <th>Selecione</th>
            </tr>
        </tfoot>
    </table>
</div>

<script src="../js/filtro/aluno.js"></script>