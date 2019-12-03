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
            labels: ['Primeira etapa', 'Segunda etapa', 'terceira etapa', 'Quarta etapa'],
            datasets: [{
                    label: 'Pontos por etapa',
                    data: [n1, n2, n3, n4],
                    backgroundColor: [
                        'rgba(20, 143, 209, 0.3)'
                    ],
                    borderColor: [
                        'rgba(0, 64, 99, 1)'
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

