<%@page import="model.bean.Aluno"%>
<%@page import="model.dao.AlunoDAO"%>
<%@page import="java.util.List"%>

<table class="table table-hover">
    <thead>
        <tr id="background-blue" class="text-light">
            <th>Selecione</th>
            <th>Nome</th>
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
            <td>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked onclick="enviarDados('<%=alunos.get(i).getNome()%>', '<%=alunos.get(i).getNivel()%>', '<%=alunos.get(i).getTurma()%>', '<%=alunos.get(i).getMatricula()%>')" >
                </div>
            </td>
            <td><%=alunos.get(i).getNome()%></td>
            <td><%=alunos.get(i).getNivel()%></td>
            <td><%=alunos.get(i).getTurma()%></td>


        </tr>
    </tbody>
    <% }%>

</table>   

