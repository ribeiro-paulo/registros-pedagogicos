/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var ctx = document.getElementById('linepinc');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: ['1° etapa', '2° etapa', '3° etapa', '4° etapa'],
        datasets: [{
            label: 'of Votes',
            data: [10, 7, 10, 8],
            backgroundColor: [
                'rgba(255, 0, 255, 0.2)'  
            ],
            borderColor: [
                'rgba(255, 0, 255, 1)'
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
