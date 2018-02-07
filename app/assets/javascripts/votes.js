var options = {
  url: '/api/votes',
  method: 'get', //default
  data: {
    id: location.pathname.split('/')[2]
  }
};

var allVotes;
var chartData = [];

var option = {
  responsive: false,
  scales: {
    yAxes: [{
      ticks: {
        beginAtZero: true,
        max: 100
      },
      stacked: true,
      gridLines: {
        display: true,
        color: "rgba(255,99,132,0.2)"
      }
    }],
    xAxes: [{
      gridLines: {
        display: false
      }
    }]
  }
};


$.ajax(options).done(function(allVotes){
  allVotes.forEach(function(vote){
    chartData.push(vote['vote_value']);
  });

  var data = {
    labels: [1,2,3,4,5,6,7,8,9,10,11,12],
    datasets: [{
      label: "Dataset #1",
      backgroundColor: "rgba(255,99,132,0.2)",
      borderColor: "rgba(255,99,132,1)",
      borderWidth: 2,
      hoverBackgroundColor: "rgba(255,99,132,0.4)",
      hoverBorderColor: "rgba(255,99,132,1)",
      data: chartData,
    }]
  };

  $(document).ready(function() {
    var ctx = document.getElementById('chart_test');

    var myChart = new Chart(ctx, {
      type: 'line',
      options: option,
      data: data
    })
  })

});


// [12,20,30,80,90,70,50,60,30,30,40,10]



// Chart.Line('chart_test', {
//   options: option,
//   data: data
// });


