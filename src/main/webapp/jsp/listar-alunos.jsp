<%@page import="model.bean.Aluno"%>
<%@page import="model.dao.AlunoDAO"%>
<%@page import="java.util.List"%>

<table class="table table-sm table-striped table-bordered table-hover" id="table-aluno">

    <thead>
        <tr>
            <th>Ação</th>
            <th>Nome</th>
            <th>Matrícula</th>
            <th>Nível</th>
            <th>Turma</th>
        </tr>
    </thead>

    <tbody>
        <%
            AlunoDAO alunoDAO = new AlunoDAO();
            List<Aluno> alunos = alunoDAO.findAll();

            for (int i = 0; i < alunos.size(); i++) {%>
        <tr>
            <td class="text-center">
                 <div class="form-check text-end">
                    <input class="form-check-input" type="checkbox"  onclick="enviarDados('<%=alunos.get(i).getNome()%>', '<%=alunos.get(i).getNivel()%>', '<%=alunos.get(i).getTurma()%>', '<%=alunos.get(i).getMatricula()%>')" >
                </div>
            </td>
            <td><%=alunos.get(i).getNome()%></td>
            <td><%=alunos.get(i).getMatricula()%></td>
            <td><%=alunos.get(i).getNivel()%></td>
            <td><%=alunos.get(i).getTurma()%></td>
            
            
        </tr>
        <% }%>
    </tbody>

    <tfoot>

        <tr>
            <th>Selecionar</th>
            <th>Nome</th>
            <th>Matrícula</th>
            <th>Nível</th>
            <th>Turma</th>
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