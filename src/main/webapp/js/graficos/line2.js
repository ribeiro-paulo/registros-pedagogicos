/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var ctx = document.getElementById('line1');
var n1 = document.getElementById('1').value();
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: ['1° etapa', '2° etapa', '3° etapa', '4° etapa'],
        datasets: [{
            label: 'of Votes',
            data: [n1, 10, 8, 10],
            backgroundColor: [
                'rgba(0, 81, 255, 0.4)'  
            ],
            borderColor: [
                'rgba(0, 81, 255, 1)'
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