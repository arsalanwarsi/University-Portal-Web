var chart = document.getElementById('chart').getContext('2d'),
    gradient = chart.createLinearGradient(0, 0, 0, 450);

gradient.addColorStop(0, 'rgba(0, 0,150, 0.5)');
gradient.addColorStop(0.5, 'rgba(0, 0, 150, 0.25)');
gradient.addColorStop(1, 'rgba(0, 0, 153, 0)');


var data = {
    labels: ['SP19', 'FA19', 'SP20', 'FA20', 'SP21', 'FA12'],
    datasets: [{
        label: 'CGP',
        backgroundColor: gradient,
        pointBackgroundColor: 'white',
        borderWidth: 1,
        borderColor: '#911215',
        data: [3.3, 2.3, 3, 4, 3.8, 3.4]
    }]
};


var options = {
    responsive: true,
    maintainAspectRatio: true,
    animation: {
        easing: 'easeInOutQuad',
        duration: 2000
    },
    scales: {
        xAxes: [{
            gridLines: {
                color: '#555',
                lineWidth: 1
            }
        }],
        yAxes: [{
            gridLines: {
                color: '#555',
                lineWidth: 1
            }
        }]
    },
    elements: {
        line: {
            tension: 0.4
        }
    },
    legend: {
        display: false
    },
    point: {
        backgroundColor: 'white'
    },
    tooltips: {
        titleFontFamily: 'Open Sans',
        backgroundColor: 'rgba(0,0,0,0.3)',
        titleFontColor: 'red',
        caretSize: 5,
        cornerRadius: 2,
        xPadding: 10,
        yPadding: 10
    }
};


var chartInstance = new Chart(chart, {
    type: 'line',
    data: data,
    options: options
});