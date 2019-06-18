<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav class="navbar navbar-expand-lg ligh" id="background-blue">
    <div class="container-fluid" id="background-blue">
        <div class="navbar-header">
            <a class="navbar-left" href="../jsp/home.jsp"><img src="../imagens/logo.png" width="440" height="60"></a>
        </div> 
        <ul class="nav navbar-nav navbar-right">
            <div class="btn-group">
                <button type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fas fa-user fa-lg"></i> <c:out value="${usuario.nome}"></c:out>
                </button>
                <div class="dropdown-menu dropdown-menu-right">
                    <button class="dropdown-item" type="button"><i class="fas fa-id-card fa-lg"></i> Meus dados</button>
                    <button class="dropdown-item" type="button"><i class="fas fa-sign-out-alt fa-lg"></i> Encerrar sessão</button>
                </div>
            </div>
        </ul>
    </div>
</nav>
