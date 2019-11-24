<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <!-- Required meta tags -->
        <title>Registros Pedagógicos</title>
        <meta charset="utf-8"> 
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/fontawesome-all.css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css"/>
        <script src="https://kit.fontawesome.com/bff2ac77b8.js" crossorigin="anonymous"></script>
        
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.js"></script>
    </head>

    <body class="body">

        <nav class="navbar navbar-light bg-blue mb-4">
            <a class="text-white h3"><i class="fas fa-file-alt"></i><b> Registros</b> Pedagógicos</a>
        </nav>

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="title">Efetuar entrada</div>
                    <div class="card mb-5">
                        <div class="mt-4 mx-4">
                            <% if (request.getQueryString() != null) { %>
                            <% if (request.getParameter("status").equals("erro")) { %>
                            <div class="alert alert-danger" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h6 class="alert-heading">
                                    <b> <i class="fas fa-user fa-1x"></i> Usuário</b> ou  
                                    <b><i class="fas fa-lock fa-1x"></i> Senha </b> inválidos
                                </h6>
                            </div>
                            <%}%>
                            <%}%>
                            <form action="/registros_pedagogicos/LoginServlet" method="post">
                                <section>
                                    <div class="form-group">
                                        <label id="label" for="nome">Usuário ou SIAPE</label>
                                        <input class="form-control validate" type="text" placeholder="Insira seu Usuário ou SIAPE" id="usuario" name="usuario" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="senha">Senha</label>
                                        <input class="form-control" type="password" placeholder="Senha de usuário" id="senha" name="senha" required>
                                    </div>

                                    <div class="form-group col-lg-12 text-center">
                                        <button class="btn btn-primary btn-lg btn-block" type="submit" id="background-blue"><i class="fas fa-sign-in-alt"></i> Entrar</button>
                                    </div>

                                    <div class="text-center">
                                        <label>Ainda não possui cadasto?</label>
                                        <a class="link" href="cadastro/pedagoga.jsp"><b class="icon-blue">Registre-se agora</b></a>
                                    </div>
                                </section>
                            </form>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>