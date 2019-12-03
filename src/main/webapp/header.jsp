<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav class="navbar navbar-expand-lg navbar-light bg-blue mb-5">
    <a class="navbar-brand text-white" > 
        <i class="fas fa-file-alt fa-lg"></i><b> Registros</b> Pedagógicos
    </a>

    <button class="navbar-toggler border-0" data-toggle="collapse" data-target="#col" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <a class="text-white"><i class="fas fa-bars fa-lg"></i></a>
    </button>

    <div class="collapse navbar-collapse" id="col">
        <ul class="navbar-nav mr-auto">
        </ul>
        <a class="nav-link text-white" href="#" data-toggle="modal" data-target="#exampleModa"><i class="fas fa-user-edit fa-lg"></i> Editar perfil</a>
        <a class="nav-link text-white" href="#" data-toggle="modal" data-target="#ModalSair"> <i class="fas fa-sign-out-alt fa-lg"></i> Encerrar sessão</a>
    </div>
</nav>

<div class="modal fade text-black" id="exampleModa" tabindex="-1" role="dialog" aria-labelledby="exampleModaLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header border-0 text-white" id="background-blue">
                <h5 class="modal-title"><i class="fas fa-user-edit"></i> Editar perfil</h5>
                <a href="" class="close text-white" data-dismiss="modal" aria-label="Cancelar">
                    <i class="fas fa-times-circle fa-lg"></i>
                </a> 
            </div>

            <br>
            <ul class="nav nav-tabs">
                <li class="nav-item active ml-3">
                    <a href="#geral" class="nav-link active" data-toggle="tab" role="tab">
                        <i class="fas fa-user"></i> Geral
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#avancado" class="nav-link" data-toggle="tab" role="tab">
                        <i class="fas fa-key"></i> Senha
                    </a>
                </li>
            </ul>

            <div class="modal-body tab-content">
                <div class="tab-pane fade in show active" id="geral" role="tabpanel">
                    <div class="alert alert-info" role="alert">
                        <h5 class="alert-heading"><i class="fas fa-exclamation-circle fa-lg"></i> Atenção</h5>
                        <p> Ao clicar em <b>ALTERAR</b> os dados serão salvos em sua conta.</p>
                    </div>
                    <form method="post" name="atualizar-dados" autocomplete="off" action="/registros_pedagogicos/AlterarPedagogaServlet">
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label for="nome">Nome</label>
                                <input class="form-control" type="text" placeholder="Nome completo" id="nome" name="nome" required value="<c:out value="${usuario.nome}"></c:out>"/>                                        
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="siape">SIAPE</label>
                                    <input class="form-control" type="text" placeholder="SIAPE" id="usuario" name="siape" maxlength="12" required value="<c:out value="${usuario.siape}"></c:out>"/>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="usuario">Usuário</label>
                                    <input class="form-control" type="text" placeholder="Nome de usuário" name="usuario" id="usuario" maxlength="40" readonly value="<c:out value="${usuario.usuario}"></c:out>"/>
                            </div>
                        </div>

                        <div class="modal-footer">
                            <button type="submit" name="acao" value="alterarUsuario" class="btn btn-primary"><i class="fas fa-save fa-lg"></i> Salvar alterações</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="fas fa-times-circle fa-lg"></i> Cancelar</button>
                        </div>

                    </form>
                </div>

                <div class="tab-pane fade in show" id="avancado" role="tabpanel">
                    <div class="alert alert-warning" role="alert">
                        <h5 class="alert-heading"><i class="fas fa-exclamation-triangle fa-lg"></i> Atenção</h5>
                        <p> Ao clicar em <b>ALTERAR</b> a sua nova senha será salva em sua conta.</p>
                    </div>

                    <form method="post" name="atualizar-dados" autocomplete="off" action="/registros_pedagogicos/AlterarPedagogaServlet">
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label for="senhaAtual">Senha atual</label>
                                <input class="form-control" type="password" placeholder="Digite seu senha atual" id="senhaAtual" name="senhaAtual" required>                                        
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="novaSenha">Nova senha</label>
                                <input class="form-control" type="password" placeholder="Nova senha" id="novaSenha" name="novaSenha" maxlength="12" required/>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="ConfirmNovaSenha">Confirmar nova senha</label>
                                <input class="form-control" type="password" placeholder="Confirmar nova senha" name="confirmNovaSenha" id="confirmNovaSenha" maxlength="40" />
                            </div>

                        </div>

                        <div class="modal-footer">
                            <button type="submit" name="acao" value="alterarSenha" class="btn btn-primary"><i class="fas fa-user-lock fa-lg"></i> Salvar senha</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="fas fa-times-circle fa-lg"></i> Cancelar</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" style="color: black"  id="ModalSair" tabindex="-1" role="dialog" aria-labelledby="TituloModalCentralizado" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header text-white bg-blue">
                <h5 class="modal-title" id="TituloModalCentralizado">Encerrar sessão</h5>
                <a href="" class="close text-white" data-dismiss="modal" aria-label="Cancelar">
                    <i class="fas fa-times-circle fa-lg"></i>
                </a> 
            </div>
            <div class="modal-body">
                <div class="alert alert-danger" role="alert">
                    <strong>Atenção!</strong> Deseja mesmo encerrar a sessão da sua conta?
                </div>
            </div>
            <div class="modal-footer">
                <form action="/registros_pedagogicos/LoginServlet" method="get">
                    <button type="submit" class="btn btn-danger"><i class="fas fa-sign-out-alt fa-lg"></i> Sim, encerrar sessão</button>
                </form>

                <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fas fa-times-circle fa-lg"></i> Cancelar</button>
            </div>
        </div>
    </div>
</div>
