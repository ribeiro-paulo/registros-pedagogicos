<%@page import="model.bean.Aluno"%>
<%@page import="model.dao.AlunoDAO"%>
<%@page import="java.util.List"%>

<table class="table table-striped table-hover">
    <thead>
        <tr>
            <th>Nome </th>

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
        <tr>
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
