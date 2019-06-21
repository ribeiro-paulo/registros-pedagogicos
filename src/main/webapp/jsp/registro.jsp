<%-- 
    Document   : registros
    Created on : 18/06/2019, 13:45:46
    Author     : Junior
--%>

<%@page import="model.bean.Registro"%>
<%@page import="java.util.List"%>
<%@page import="model.dao.RegistroDAO"%>

<body>

    <div>
        <div style="margin-left: 2%; margin-right: 2%; margin-bottom: 5%">

            <div class="row">
                <div class="col-md-3">
                    Nome
                </div>

                <div class="col-md-3">
                    Nível
                </div>

                <div class="col-md-3">
                    Curso
                </div>

                <div class="col-md-3">
                    Data
                </div>
            </div>

            <!-- Lista de relatos -->

            <div class="row">
                <%
                    RegistroDAO registroDAO = new RegistroDAO();
                    List<Registro> alunos = registroDAO.findAll();
                    if (!alunos.isEmpty()) {
                %>                           
                <%  for (Registro aluno : alunos) {%>
                <div class="list-group">
                    <button type="button" class="list-group-item list-group-item-action"><%=aluno.get()%></button>
                </div>
                <%  }
                            }%>
            </div>


        </div>
    </div>
</body>
