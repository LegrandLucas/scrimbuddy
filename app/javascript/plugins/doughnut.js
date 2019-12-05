import Chart from 'chart.js';

const ctx = document.getElementById('myChart');
const wins = document.getElementById('wins');
const losses = document.getElementById('losses');


const myChart = new Chart(ctx, {
    type: 'doughnut',
    data: {
        labels: ['wins', 'losses'],
        datasets: [{
            label: '# of games',
            data: [Number.parseInt(wins.innerText, 10), Number.parseInt(losses.innerText, 10)],
            backgroundColor: [
                'rgba(103, 194, 254, 1)',
                'rgba(231, 137, 131, 1)'
            ],
            borderColor: [
                'rgba(244, 244, 244, 1)',
                'rgba(244, 244, 244, 1)'
            ],
            borderWidth: 5,
        }],
    },
    options: {
        legend: {
            display: true,
            labels: {
                fontColor: 'rgb(0, 0, 0)',
                fontSize: 20,
            },
        },
        animation: {
          duration: 2000
        },
    }
});
