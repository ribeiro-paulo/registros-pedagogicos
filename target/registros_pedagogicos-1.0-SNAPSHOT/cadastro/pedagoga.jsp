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
        <script src="../js/fontAwesome-pro/fontAwesome.js"></script>

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
                <div class="title">Dados para cadastro</div>
                <div class="tab-content card mb-5">
                    <div class="mt-4 mx-4">
                        <form method="post" name="dados_cadastro" action="/registros_pedagogicos/CadastrarPedagogaServlet">
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
                                <button class="btn btn-primary btn-lg btn-block" name="acao" type="submit" value="Cadastrar" id="background-blue"><i class="far fa-user-check fa-lg"></i> Cadastrar-se</button>
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

