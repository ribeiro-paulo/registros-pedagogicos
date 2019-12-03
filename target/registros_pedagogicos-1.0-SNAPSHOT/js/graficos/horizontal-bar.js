var etapa1 = document.getElementById('etapa1').value
var etapa2 = document.getElementById('etapa2').value
var etapa3 = document.getElementById('etapa3').value
var etapa4 = document.getElementById('etapa4').value
var ctx = document.getElementById('pier')
var myChart = new Chart(ctx, {
    type: 'horizontalBar',
    data: {
        labels: ['Primeira etapa', 'Segunda etapa', 'Terceira etapa', 'Quarta etapa'],
        datasets: [{
            label: '# Pontos por etapa',
            data: [etapa1, etapa2, etapa3, etapa4],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            xAxes: [{
                ticks: {
                    min: 0 // Edit the value according to what you need
                }
            }],
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});