
var ctx = document.getElementById('linedarkblue');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: ['1° etapa', '2° etapa', '3° etapa', '4° etapa'],
        datasets: [{
            label: 'of Votes',
            data: [10, 7, 10, 8],
            backgroundColor: [
                'rgba(0, 0, 0, 0.3)'  
            ],
            borderColor: [
                'rgba(0, 0, 0, 1)'
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
