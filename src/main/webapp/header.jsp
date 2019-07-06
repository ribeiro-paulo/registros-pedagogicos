<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav class="navbar navbar-expand-lg ligh" id="background-blue">
    <div class="container-fluid" id="background-blue">
        <div class="navbar-header">
            <a class="navbar-left" href="../jsp/home.jsp"><img src="../imagens/logo.png" width="440" height="60"></a>
        </div> 
        <ul class="nav justify-content-end text-light">
            <li class="nav-item">

                <%-- Modal do Perfil --%>
                <a class="nav-link" data-toggle="modal" data-target="#exampleModa" style="color: white" href="#"><i class="fas fa-user-edit fa-lg"></i> Editar Perfil</a>
                <div class="modal fade" style="color: black" id="exampleModa" tabindex="-1" role="dialog" aria-labelledby="exampleModaLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3 class="modal-title text-center" >Meu Perfil</h3>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                                    <span aria-hidden="true">&times;</span>
                                </button>   
                            </div>

                            <ul class="nav nav-tabs nav-justified col-md-6 border-bottom-0" role="tablist">
                                <li class="nav-item active">
                                    <a href="#geral" class="nav-link active" data-toggle="tab" role="tab">
                                        Geral
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#avancado" class="nav-link" data-toggle="tab" role="tab">
                                        Avançado
                                    </a>
                                </li>
                            </ul>

                            <div class="modal-body tab-content">
                                <div class="tab-pane fade in show active" id="geral" role="tabpanel">
                                    <div class="alert alert-warning" role="alert">
                                        <strong>Atenção!</strong> Ao clicar em ALTERAR os dados serão salvos em sua conta.
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
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                                                <button type="submit" class="btn btn-primary">Alterar</button>
                                            </div>

                                        </form>
                                    </div>

                                    <div class="tab-pane fade in show" id="avancado" role="tabpanel">
                                        <div class="alert alert-danger" role="alert">
                                            <strong>Atenção!</strong> Ao clicar em ALTERAR a sua nova senha será salva em sua conta.
                                        </div>
                                        <form method="post" name="atualizar-dados" autocomplete="off" action="#">
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
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                                                <button type="submit" class="btn btn-primary">Alterar</button>
                                            </div>

                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>


                <li class="nav-item">
                <%-- Modal de sair da conta --%>
                <a class="nav-link" style="color: white" href="#" data-toggle="modal" data-target="#ModalSair"><i class="fas fa-sign-out-alt fa-lg"></i> Encerrar sessão</a>
                <!-- Modal -->
                <div class="modal fade" style="color: black"  id="ModalSair" tabindex="-1" role="dialog" aria-labelledby="TituloModalCentralizado" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="TituloModalCentralizado">Encerrar sessão</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="alert alert-danger" role="alert">
                                    <strong>Atenção!</strong> Deseja mesmo encerrar a sessão da sua conta?
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-success" data-dismiss="modal">Não</button>

                                <form action="/registros_pedagogicos/LoginServlet" method="get">
                                    <button type="submit" class="btn btn-danger">Sim</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</nav>
