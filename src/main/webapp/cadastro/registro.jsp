<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<body>

    <form method="post" name="dados_cadastro" action="/registros_pedagogicos/RegistroServlet">
        <br>
        <h3>Novo registro</h3>
        <br>
        <h5 class="border-bottom border-dark"></h5>
        <br>
        <div class="form-row">
            <div class="form-group col-md-12">
                <label for="discente">Discente</label>
                <input class="form-control" type="text" id="discente" name="discente" maxlength="12" placeholder="Nome do discente" readonly>
            </div>
        </div>
        <div class="form-row">

            <div class="form-group col-md-4">
                <label for="nivel">Nivel</label>
                <input class="form-control" type="text" id="nivel" name="nivel" placeholder="nivel" readonly>
            </div>

            <div class="form-group col-md-4">
                <label for="turma">Turma</label>
                <input class="form-control" type="text" id="turma" name="turma" placeholder="Turma" readonly>
            </div>

            <div class="form-group col-md-4">
                <label for="matricula">Matrícula</label>
                <input class="form-control" type="text" id="matricula" name="matricula" placeholder="Matrícula do discente" readonly>
            </div>
        </div>

        <br>
        <h5 class="border-bottom border-dark"></h5>
        <br>

        <div class="form-row">  
            <div class="form-group col-md-6">
                <label for="data">Data</label>
                <input class="form-control" type="date"id="data" name="data">                                        
            </div>

            <div class="form-group col-md-6 ">
                <label for="tipoDeOcorrencia">Tipo de ocorrencia</label>
                <select class="form-control col-md-12" id="tipoDeOcorrencia" name="tipoDeOcorrencia">
                    <option>Pais</option>
                    <option>Professor</option>
                    <option>Requerimento</option>
                    <option>Servidores</option>
                </select>
            </div>

            <div class="form-group col-md-6">

                <div class="form-group">
                    <label for="exampleFormControlFile1">Selecionar anexo</label>
                    <input type="file" class="form-control-file" id="exampleFormControlFile1">
                </div>

            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-sm-12 ">
                <label for="descricao">Descrição</label>
                <textarea class="form-control" rows="5" id="descricao" name="descricao" placeholder="Descrição sobre a ocorrência"></textarea>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-sm-12 col-lg-6 text-left">
                <button class="btn btn-secondary" onclick="location.href = '../jsp/index.jsp'" type="button" value="cancelar" >
                    <i class="fa fa-window-close mr-1"></i> Cancelar</button>
            </div>
            <div class="form-group col-sm-12 col-lg-6 text-right">
                <button class="btn btn-primary" name="acao" type="submit" value="cadastrar" id="background-blue">
                    <i class="fa fa-check mr-1"></i>Confirmar</button>
            </div>
        </div>
    </form>
</body>