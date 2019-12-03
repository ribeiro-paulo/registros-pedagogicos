<!DOCTYPE>
<html lang="pt">
    <head>
        <!-- Required meta tags -->
        <title>Registros Pedagógicos</title>
        <meta charset="utf-8">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css" type="text/css">
        <link rel="stylesheet" href="../css/bootstrap/bootstrap.min.css"/>
        <script src="https://kit.fontawesome.com/bff2ac77b8.js" crossorigin="anonymous"></script>

        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.js"></script>
    </head>

    <body class="body">
        <nav class="navbar navbar-light bg-blue mb-4">
            <a class="text-white h3"><i class="fas fa-file-alt"></i><b> Registros</b> Pedagógicos</a>
        </nav>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="title">Efetuar cadastro</div>
                    <div class="card mb-5">
                        <div class="mt-4 mx-4">
                            <form method="post" name="dados_cadastro" action="/registros_pedagogicos/CadastrarPedagogaServlet">

                                <% if (request.getQueryString() != null) { %>
                                <% if (request.getParameter("status").equals("erro")) { %>
                                <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                    <b><i class="fas fa-key"></i> Senhas</b> não coincidem ou <b><i class="fas fa-address-card"></i> SIAPE</b> inválido.
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <%}%>
                                <%}%>
                                <div class="form-row">
                                    <div class="form-group col-md-12">
                                        <label for="nome">Nome</label>
                                        <input class="form-control" type="text" placeholder="Nome completo" id="nome" name="nome" required>                                        
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="siape">SIAPE</label>
                                        <input class="form-control" type="text" placeholder="SIAPE" id="usuario" name="siape" maxlength="12" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="usuario">Usuário</label>
                                        <input class="form-control" type="text" placeholder="Nome de usuário" name="usuario" id="usuario" maxlength="40">
                                    </div>

                                </div>
                                <div class="form-row">
                                    <div class="form-group col-sm-12 col-lg-6">
                                        <label for="senha">Senha</label>
                                        <input class="form-control" type="password" placeholder="Senha" name="senha" id="senha" maxlength="128">
                                    </div>
                                    <div class="form-group col-sm-12 col-lg-6">
                                        <label for="confirmar_senha">Confirmar senha</label>
                                        <input class="form-control" type="password" placeholder="Confirmar senha" id="confirmar_senha" name="confirmar_senha" maxlength="128">
                                    </div>
                                </div> 
                                <div class="form-group col-lg-12 text-center">
                                    <button class="btn btn-primary btn-lg btn-block" name="acao" type="submit" value="Cadastrar" id="background-blue"><i class="fas fa-user-plus"></i> Cadastrar-se</button>
                                </div>
                                <div class="col-md-12 text-center">
                                    <label>Já possui cadastro?</label>
                                    <a class="link" href="../index.jsp"><b class="icon-blue">Entrar</b></a>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
        <jsp:include page="../footer.jsp"/>
    </body>
</html>

