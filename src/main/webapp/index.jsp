<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="pt">
    <head>
        <!-- Required meta tags -->
        <title>Registros Pedagógicos</title>
        <meta charset="utf-8">  
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap/bootstrap.css"/>
        <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap/mdb.css"/>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/bootstrap/bootstrap-grid.css"/>
        <link rel="stylesheet" href="css/bootstrap/js/bootstrap.js">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

    </head>

    <body class="body">
    <nav class="navbar navbar-expand-lg navbar-light" id="background-blue" style="margin-bottom: 3%">
        <div class="col-12">
            <h3>
                <a class="text-white"> 
                    <i class="fas fa-file-signature fa-lg"></i><b>Registros</b> Pedagógicos
                </a>
            </h3>
        </div>
    </nav>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="title">Dados para login</div>
                <div class="tab-content card mb-5">
                    <div class="mt-4 mx-4">
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
                                    <button class="btn btn-primary btn-lg btn-block" type="submit" id="background-blue">Entrar</button>
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
</body>
<jsp:include page="footer.jsp"/>
</html>