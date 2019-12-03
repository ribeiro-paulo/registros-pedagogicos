/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var qtdDisciplinas = document.getElementById('qtdDisciplinas').value

for (i = 1; i <= qtdDisciplinas; i++) {
    var ctx = document.getElementById('line' + i);
    var n1 = document.getElementById('1' + i).value
    var n2 = document.getElementById('2' + i).value
    var n3 = document.getElementById('3' + i).value
    var n4 = document.getElementById('4' + i).value

    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ['1° etapa', '2° etapa', '3° etapa', '4° etapa'],
            datasets: [{
                    label: 'of Votes',
                    data: [n1, n2, n3, n4],
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
}

