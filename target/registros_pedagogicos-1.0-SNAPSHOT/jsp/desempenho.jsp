<%-- 
    Document   : home
    Created on : 15/05/2019, 11:54:23
    Author     : Paulo Ribeiro
--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.js"></script>

<script src="../js/Chart.min.js"></script>

<body>
    <div class="container">
        <div class="row">
            <br>
            <div class="col-md-6">
                <canvas id="line"></canvas>
            </div>

            <div class="col-md-6">
                <canvas id="bar"></canvas>
            </div>
            <br><br>
            <div class="col-md-6">
                <canvas id="horizontal-bar"></canvas>
            </div>
            
            <div class="col-md-6">
                <canvas id="pie"></canvas>
            </div>
            
        </div>
    </div>
</body>


<script type="text/javascript" src="../js/graficos/line.js"></script>
<script type="text/javascript" src="../js/graficos/bar.js"></script>
<script type="text/javascript" src="../js/graficos/horizontal-bar.js"></script>
<script type="text/javascript" src="../js/graficos/pie.js"></script>

<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>