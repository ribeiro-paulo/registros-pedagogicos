<%@page import="model.bean.Aluno"%>
<%@page import="model.dao.AlunoDAO"%>
<%@page import="java.util.List"%>

<table class="table table-striped table-hover">
    <thead>
        <tr>
            <th>Nome </th>

            <th>Nível</th>
            <th>Turma</th>
        </tr>
    </thead>


    <%
        AlunoDAO alunoDAO = new AlunoDAO();
        List<Aluno> alunos = alunoDAO.findAll();

        for (int i = 0; i < alunos.size(); i++) {%>
    <tbody>
        <tr>
            <td><%=alunos.get(i).getNome()%></td>
            <td><%=alunos.get(i).getNivel()%></td>
            <td><%=alunos.get(i).getTurma()%></td>
        </tr>
    </tbody>
    <% }%>
</table>   
