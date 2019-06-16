<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="pt">
    <head>
        <!-- Required meta tags -->
        <title>DAIC - Relatos</title>
        <meta charset="utf-8">  
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
        <link href="../css/style.css" rel="stylesheet">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>

    <body class="body">
        <jsp:include page="../header.jsp"/>    
        <div class="container container-fundo">
            <div>
                <!--Nav Tabs-->
                <div class="row" id="background-blue">
                    <h1>Nova ocorrência</h1>
                </div>

                <div class="col-md-12">
                    <form method="post" name="dados_cadastro" action="../jsp/home.jsp" style=" margin-bottom: 5%">

                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label for="discente">Discente</label>
                                <input class="form-control" type="text" id="discente" name="discente" maxlength="12" placeholder="Nome do discente" >
                            </div>
                        </div>
                        <div class="form-row">

                            <div class="form-group col-md-6">
                                <label for="data">Data</label>
                                <input class="form-control" type="date" id="nome" name="nome">                                        
                            </div>

                            <div class="form-group col-md-6 ">
                                <label for="tipoDeOcorrencia">Tipo de ocorrencia</label>
                                <select class="form-group col-md-12">
                                    <option>Pais</option>
                                    <option>Professor</option>
                                    <option>Requerimento</option>
                                    <option>Servidores</option>
                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label for="nivel">Nível</label>
                                <select class="form-group col-md-12">
                                    <option>Integrando</option>
                                    <option>Subsequente</option>
                                    <option>Graduação</option>
                                    <option>Pós-granduação</option>
                                </select>
                            </div>
                        </div>  
                        <div class="form-row">
                            <div class="form-group col-sm-12 col-lg-6">
                                <label for="curso">Curso</label>
                                <select class="form-group col-md-12">
                                    <option>Informática</option>
                                    <option>Química</option>
                                    <option>Edificações</option>
                                </select>
                            </div>

                        </div>

                        <div class="form-row">
                            <div class="form-group col-sm-12 ">
                                <label for="descricao">Descrição</label>
                                <textarea class="form-control" rows="5" id="descricao" placeholder="Descrição sobre a ocorrência"></textarea>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-sm-12 col-lg-6 text-left">
                                <button class="btn btn-secondary" onclick="location.href = '../jsp/home.jsp'" type="button" value="Cadastrar" >
                                    <i class="fa fa-window-close mr-1"></i> Cancelar</button>
                            </div>
                            <div class="form-group col-sm-12 col-lg-6 text-right">
                                <button class="btn btn-primary" onclick="location.href = '../jsp/home.jsp'" type="button" value="Cadastrar" id="background-blue">
                                    <i class="fa fa-check mr-1"></i> Confirmar</button>
                            </div>
                        </div>
                </div>
            </div>
        </div>
        <jsp:include page="../footer_absolute.jsp"/>
    </body>
</html>
