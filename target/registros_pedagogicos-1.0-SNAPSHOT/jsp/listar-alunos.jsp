<%@page import="model.bean.Aluno"%>
<%@page import="model.dao.AlunoDAO"%>
<%@page import="java.util.List"%>

<table class="table table-sm table-striped table-bordered table-hover" id="table-aluno">

    <thead>
        <tr>
            <th>Nome</th>
            <th>Matrícula</th>
            <th>Nível</th>
            <th>Turma</th>
            <th>Selecione</th>
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
            <td class="text-center"><a type="button" class="btn btn-primary" id="background-blue" href="../cadastro/registro.jsp?matricula=<%=alunos.get(i).getMatricula()%>">Selecionar</a></td>
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



<script src="../js/jquery-3.3.1.min.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/mdb.min.js"></script>
<script src="../js/general.js"></script>
<script src="../js/jquery.mask.min.js"></script>
<script src="../js/mascaras.js"></script>
<script src="../js/addons/datatables.min.js"></script>

<script src="../js/filtro/aluno.js"></script>