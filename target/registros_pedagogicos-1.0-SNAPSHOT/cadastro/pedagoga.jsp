<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="pt">
    <head>
        <!-- Required meta tags -->
        <title>Registros Pedagógicos</title>
        <meta charset="utf-8">  
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="../css/bootstrap/bootstrap.css"/>
        <link rel="stylesheet" href="../css/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap/mdb.css"/>
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/bootstrap/bootstrap-grid.css"/>
        <link rel="stylesheet" href="../css/bootstrap/js/bootstrap.js">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

    </head>

    <body class="body">

    <nav class="navbar navbar-expand-sm" id="background-blue">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-left" href="#"><img src="../imagens/logo.png" width="440" height="60"></a>
            </div>
            
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <button type="button" onclick="location.href = '../index.jsp'"class="btn btn-outline-light"> <i class="fa fa-chevron-circle-left mr-1"></i> Voltar</button>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <div class="col-md-6" id="fundo_campos">
            <!--Nav Tabs-->
            <div class="card" id="background-blue">
                <h1>Dados para cadastro</h1>
            </div>  

            <div class="col-md-12">
                <form method="post" name="dados_cadastro" action="/registros_pedagogicos/CadastrarPedagogaServlet" style="margin-top: 5%">
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

                        <div class="form-group col-sm-12 col-lg-12 text-right">
                            <button class="btn btn-primary" name="acao" type="submit" value="Cadastrar" id="background-blue">
                                <i class="fa fa-check mr-1"></i>Confirmar</button>
                        </div>
                    </div>     
            </div>
        </div>
    </div>
    <jsp:include page="../footer_absolute.jsp"/>
</body>
</html>
