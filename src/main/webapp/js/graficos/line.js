var ctx = document.getElementById('line');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: ['1° etapa', '2° etapa', '3° etapa', '4° etapa'],
        datasets: [{
            label: 'of Votes',
            data: [10, 7, 10, 8],
            backgroundColor: [
                'rgba(75, 192, 192, 0.2)'  
            ],
            borderColor: [
                'rgba(54, 162, 235, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});