<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

    <nav class="navbar navbar-light" id="background-blue">
        <a class="navbar-brand" href="#"><img src="imagens/logo.png" width="auto" height="70px"></a>
        <button type="button" onclick="location.href = 'cadastro/pedagoga.jsp'" class="btn btn-outline-light"> <i class="fa fa-user-plus mr-1"></i>Registre-se</button>
    </nav>

    <div class="container" >

        <div class="col-md-10 fundo_campos">

            <div class="title">Dados para login</div>

            <div class="tab-content card mb-5">

                <div class="mt-4 mx-4">
                    <form action="/registros_pedagogicos/LoginServlet" method="post">
                        <section>
                            <div class="form-group">
                                <label id="label" for="nome">Usuário</label>
                                <input class="form-control validate" type="text" placeholder="Nome de usuário" id="usuario" name="usuario" required>
                            </div>
                            <div class="form-group">
                                <label for="senha">Senha</label>
                                <input class="form-control" type="password" placeholder="Senha de usuário" id="senha" name="senha" required>
                            </div>

                            <div class="form-group col-lg-12 text-right">
                                <button class="btn btn-primary" type="submit" id="background-blue">Entrar</button>
                            </div>
                        </section>
                    </form>
                </div>
            </div>
        </div> 
    </div>
    <jsp:include page="footer_absolute.jsp"/>
</body>
</html>