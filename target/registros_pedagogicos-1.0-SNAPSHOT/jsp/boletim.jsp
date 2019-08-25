<div class="col-md-12 table-responsive-lg">
    <h4>Boletim</h4>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th scope="col">Disciplinas</th>
                <th scope="col">1° etapa</th>
                <th scope="col">2° etapa</th>
                <th scope="col">3° etapa</th>
                <th scope="col">4° etapa</th>
                <th scope="col">Situação</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td scope="row"><a href="" data-toggle="modal" data-target=".portugues">Língua Portuguesa</a></td>
                <td>10</td>
                <td>10</td>
                <td>7</td>
                <td>10</td>
                <td>Aprovado</td>
            </tr>
            <tr>
                <td scope="row"><a href="" data-toggle="modal" data-target=".matematica">Matemática</a></td>
                <td>10</td>
                <td>10</td>
                <td>10</td>
                <td>10</td>
                <td>Aprovado</td>
            </tr>
            <tr>
                <td scope="row"><a href="" data-toggle="modal" data-target=".fisica">Física</a></td>
                <td>10</td>
                <td>10</td>
                <td>5</td>
                <td>10</td>
                <td>Aprovado</td>
            </tr>

            <tr>
                <td scope="row"><a href="" data-toggle="modal" data-target=".geografia">Geografia</a></td>
                <td>10</td>
                <td>10</td>
                <td>10</td>
                <td>10</td>
                <td>Aprovado</td>
            </tr>

            <tr>
                <td scope="row"><a href="" data-toggle="modal" data-target=".historia">História</a></td>
                <td>10</td>
                <td>8</td>
                <td>10</td>
                <td>10</td>
                <td>Aprovado</td>
            </tr>

            <tr>
                <td scope="row"><a href="" data-toggle="modal" data-target=".quimica">Química</a></td>
                <td>10</td>
                <td>10</td>
                <td>7</td>
                <td>10</td>
                <td>Aprovado</td>
            </tr>

            <tr>
                <td scope="row"><a href="" data-toggle="modal" data-target=".ingles">Inglês</a></td>
                <td>10</td>
                <td>10</td>
                <td>10</td>
                <td>10</td>
                <td>Aprovado</td>
            </tr>
        </tbody>
    </table>
</div>

<div class="modal fade portugues" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Língua Portuguesa</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h5>Desempenho durante o ano letivo</h5>
               <canvas id="line"></canvas>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade matematica" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Matemática</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h5>Desempenho durante o ano letivo</h5>
               <canvas id="linepinc"></canvas>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade fisica" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Física</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h5>Desempenho durante o ano letivo</h5>
               <canvas id="line2"></canvas>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade geografia" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Geografia</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h5>Desempenho durante o ano letivo</h5>
               <canvas id="linegreen"></canvas>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade historia" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">História</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h5>Desempenho durante o ano letivo</h5>
               <canvas id="linered"></canvas>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade quimica" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Química</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h5>Desempenho durante o ano letivo</h5>
               <canvas id="lineorange"></canvas>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade ingles" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Inglês</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h5>Desempenho durante o ano letivo</h5>
               <canvas id="linedarkblue"></canvas>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
            </div>
        </div>
    </div>
</div>