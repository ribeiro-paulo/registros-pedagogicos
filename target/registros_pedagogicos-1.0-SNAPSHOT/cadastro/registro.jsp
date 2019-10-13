<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="model.bean.Aluno"%>
<%@page import="java.util.List"%>
<%@page import="model.dao.AlunoDAO"%>
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
        <script src="../js/fontAwesome-pro/fontAwesome.js"></script>




        <link href="../bootstrap-wysiwyg/external/google-code-prettify/prettify.css" rel="stylesheet">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
        <script src="../bootstrap-wysiwyg/external/jquery.hotkeys.js"></script>
        <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
        <script src="../bootstrap-wysiwyg/external/google-code-prettify/prettify.js"></script>
        <link href="../bootstrap-wysiwyg/index.css" rel="stylesheet">
        <script src="../bootstrap-wysiwyg/bootstrap-wysiwyg.js"></script>

        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>

    </head>

    <body class="body">

        <jsp:include page="../header.jsp"/>

        <div class="container">

            <%
                Aluno aluno = new Aluno();
                AlunoDAO alunoDAO = new AlunoDAO();

                aluno = alunoDAO.findByMatricula(request.getParameter("matricula"));
            %>

            <nav class="navbar navbar-expand-lg navbar-light" id="background-blue">
                <a class="navbar-brand text-white" href="../jsp/index.jsp"> <i class="fa fa-arrow-alt-circle-left fa-lg"></i> <b> <%= aluno.getNome()%> </b></a>
            </nav>
            <div class="card mb-5 border-0 col-12">
                <br>
                <form method="post" name="dados_cadastro" action="/registros_pedagogicos/RegistroServlet">
                    <div class="form-row">
                        <div class="col-sm-2 text-center">
                            <img src="../imagens/usuario.png" class="img-thumbnail" readonly>
                        </div>

                        <div class="form-row col-md-10">
                            <div class="form-group col-md-12">
                                <label for="discente">Discente</label>
                                <input class="form-control" type="text" value="<%= aluno.getNome()%>" id="discente" name="discente" maxlength="12" placeholder="Nome do discente" readonly>
                            </div>

                            <div class="form-group col-md-4">
                                <label for="nivel">Nivel</label>
                                <input class="form-control" type="text" value="<%= aluno.getNivel()%>" id="nivel" name="nivel" placeholder="nivel" readonly>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="turma">Turma</label>
                                <input class="form-control" type="text" value="<%= aluno.getTurma()%>" id="turma" name="turma" placeholder="Turma" readonly>
                            </div>

                            <div class="form-group col-md-4">
                                <label for="matricula">Matrícula</label>
                                <input class="form-control" type="text" value="<%= aluno.getMatricula()%>" id="matricula" name="matricula" placeholder="Matrícula do discente" readonly>
                            </div>
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

                    <!--                        <div class="form-group col-sm-12 ">
                                                <label for="descricao">Descrição</label>
                                                <textarea class="form-control" rows="5" id="descricao" name="descricao" placeholder="Descrição sobre a ocorrência"></textarea>
                                            </div>-->
                    <ul class="nav nav-pills nav-fill bg-light rounded border" data-role="editor-toolbar" data-target="#editor">
                        <li class="nav-item">
                            <div class="btn-group">
                                <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="far fa-font fa-lg"></i></i><b class="caret"></b></a>
                                <div class=" dropdown-menu ">
                                </div>
                            </div>
                        </li>
                        <li class="nav-item">
                            <div class="btn-group">
                                <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="far fa-text-size fa-lg"></i>&nbsp;<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a data-edit="fontSize 5"><font size="5">Grande</font></a></li>
                                    <li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
                                    <li><a data-edit="fontSize 1"><font size="1">Pequeno</font></a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="far fa-bold fa-lg"></i></i></a>
                        </li>
                        <li class="nav-item">
                            <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="far fa-italic fa-lg"></i></a>
                        </li>

                        <li class="nav-item">
                            <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="far fa-strikethrough fa-lg"></i></a>
                        </li>

                        <li class="nav-item">
                            <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="far fa-underline fa-lg"></i></a>  
                        </li>

                        <li class="nav-item">
                            <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fas fa-list-ul fa-lg"></i></a>
                        </li>

                        <li class="nav-item">
                            <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fas fa-list-ol fa-lg"></i></a>
                        </li>

                        <li class="nav-item">
                            <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fas fa-indent fa-lg"></i></a>
                        </li>

                        <li class="nav-item">
                            <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fas fa-indent fa-lg"></i></a>

                        </li>

                        <li class="nav-item">
                            <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fas fa-outdent fa-lg"></i></a>

                        </li>

                        <li class="nav-item">
                            <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fas fa-align-left fa-lg"></i></a>

                        </li>

                        <li class="nav-item">
                            <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fas fa-align-center fa-lg"></i></a>

                        </li>

                        <li class="nav-item">
                            <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fas fa-align-right fa-lg"></i></a>

                        </li>

                        <li class="nav-item">
                            <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fas fa-align-justify fa-lg"></i></a>

                        </li>

                        <li class="nav-item">
                            <div class="btn-group">
                                <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fas fa-link fa-lg"></i></a>
                                <div class="dropdown-menu input-append">
                                    <input class="span2" placeholder="URL" type="text" data-edit="createLink"/>
                                    <button class="btn" type="button">Add</button>
                                </div>
                                <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fas fa-cut fa-lg"></i></a>

                            </div>

                        </li>
                        <li class="nav-item">
                            <div class="btn-group">
                                <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="far fa-images fa-lg"></i></a>
                                <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
                            </div>

                        </li>
                        <li class="nav-item">

                            <div class="btn-group">
                                <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fas fa-undo fa-lg"></i></a>
                                <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fas fa-redo fa-lg"></i></a>
                            </div>
                            <input type="text" data-edit="inserttext" id="voiceBtn" x-webkit-speech="">

                        </li>
                    </ul>
                    
                    <div  id="editor">
                        Digite aqui&hellip;
                    </div>

                    <br>

                    <div class="form-row">
                        <div class="form-group col-sm-12 text-right">
                            <button class="btn btn-primary" name="acao" type="submit" value="cadastrar" id="background-blue">
                                <i class="far fa-clone fa-lg"></i> Salvar
                            </button>
                        </div>
                    </div>
                </form>
            </div> 
        </div>
        <jsp:include page="../footer.jsp"/>
    </body>

    <script>
        $(function () {
            function initToolbarBootstrapBindings() {
                var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier',
                    'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
                    'Times New Roman', 'Verdana'],
                        fontTarget = $('[title=Font]').siblings('.dropdown-menu');
                $.each(fonts, function (idx, fontName) {
                    fontTarget.append($('<li><a data-edit="fontName ' + fontName + '" style="font-family:\'' + fontName + '\'">' + fontName + '</a></li>'));
                });
                $('a[title]').tooltip({container: 'body'});
                $('.dropdown-menu input').click(function () {
                    return false;
                })
                        .change(function () {
                            $(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');
                        })
                        .keydown('esc', function () {
                            this.value = '';
                            $(this).change();
                        });

                $('[data-role=magic-overlay]').each(function () {
                    var overlay = $(this), target = $(overlay.data('target'));
                    overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
                });
                if ("onwebkitspeechchange"  in document.createElement("input")) {
                    var editorOffset = $('#editor').offset();
                    $('#voiceBtn').css('position', 'absolute').offset({top: editorOffset.top, left: editorOffset.left + $('#editor').innerWidth() - 35});
                } else {
                    $('#voiceBtn').hide();
                }
            }
            ;
            function showErrorAlert(reason, detail) {
                var msg = '';
                if (reason === 'unsupported-file-type') {
                    msg = "Unsupported format " + detail;
                } else {
                    console.log("error uploading file", reason, detail);
                }
                $('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>' +
                        '<strong>File upload error</strong> ' + msg + ' </div>').prependTo('#alerts');
            }
            ;
            initToolbarBootstrapBindings();
            $('#editor').wysiwyg({fileUploadError: showErrorAlert});
            window.prettyPrint && prettyPrint();
        });
    </script>
    <div id="fb-root"></div>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-37452180-6', 'github.io');
        ga('send', 'pageview');
    </script>
    <script>(function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id))
                return;
            js = d.createElement(s);
            js.id = id;
            js.src = "http://connect.facebook.net/en_GB/all.js#xfbml=1";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>

    <script>!function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (!d.getElementById(id)) {
                js = d.createElement(s);
                js.id = id;
                js.src = "http://platform.twitter.com/widgets.js";
                fjs.parentNode.insertBefore(js, fjs);
            }
        }(document, "script", "twitter-wjs");</script>

</html>
