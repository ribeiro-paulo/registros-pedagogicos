<%-- 
    Document   : filtro
    Created on : 11 de ago de 2019, 15:25:52
    Author     : paulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

    <div class="col-3">
        <table class="table table-sm table-striped table-bordered table-hover" id="table-registro">

            <caption>Lista de vagas de emprego</caption>
            <!--<div class="alert alert-success alert-dismissible fade show"  role="alert">
            <%-- ${mensagem}--%>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"<span aria-hidden="true">&times;</span>
            </button>
        </div> -->

            <thead>
                <tr class="auto">
                    <th>Profissão</th>
                    <th>Salário</th>
                    <th>Quantidade de Vagas</th>
                    <th>Ação</th>
                </tr>
            </thead>
            <tbody>

                <tr>
                    <td>oii</td>               
                    <td>R$ 222</td>
                    <td>3</td>
                    <td>
                        <a type="button" class="btn btn-green" data-toggle="modal" data-target="#visualizarVaga${trabalho.id}">Ver mais</a>
                    </td>
                </tr>

                <tr>
                    <td>paulo</td>               
                    <td>R$ 222</td>
                    <td>3</td>
                    <td>
                        <a type="button" class="btn btn-green" data-toggle="modal" data-target="#visualizarVaga${trabalho.id}">Ver mais</a>
                    </td>
                </tr>

                <tr>
                    <td>vai se</td>               
                    <td>R$ 222</td>
                    <td>3</td>
                    <td>
                        <a type="button" class="btn btn-green" data-toggle="modal" data-target="#visualizarVaga${trabalho.id}">Ver mais</a>
                    </td>
                </tr>

            </tbody>
            <tfoot>

                <tr class="auto">
                    <th>Profissão</th>
                    <th>Salário</th>
                    <th>Quantidade de Vagas</th>
                    <th>Ação</th>
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
</html>
