<%@page import="model.bean.Aluno"%>
<%@page import="model.dao.AlunoDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.bean.Registro"%>
<%@page import="model.dao.RegistroDAO"%>

<div class="table-responsive-lg">
    <table class="table table-sm table-striped table-bordered table-hover" id="table-registro">
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
                List<Aluno> alunos = alunoDAO.findByPasta();
                for (Aluno a : alunos) {%>
            <tr>
                <td><%=a.getNome()%></td>
                <td><%=a.getMatricula()%></td>
                <td><%=a.getNivel()%></td>
                <td><%=a.getTurma()%></td>
                <td class="text-center"><a class="btn btn-primary" id="background-blue" href="pasta-aluno.jsp?matricula=<%=a.getMatricula()%>">Abrir Pasta</a></td>
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

<script src="../js/jquery-3.3.1.min.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/mdb.min.js"></script>
<script src="../js/general.js"></script>
<script src="../js/jquery.mask.min.js"></script>
<script src="../js/mascaras.js"></script>
<script src="../js/addons/datatables.min.js"></script>

<script src="../js/filtro/registro.js"></script>