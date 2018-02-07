var options = {
  url: '/api/votes',
  method: 'get', //default
  data: {
    id: location.pathname.split('/')[2]
  }
};

var allVotes;
var chartData = [];
var timeline = [];
var myChart;

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

// event prevent default - stops page reloading
// inside event listener run ajax to update ruby
// use myChart.update() to include pushed data

  $.ajax(options).done(function(allVotes){
    allVotes. forEach(function(vote){
      chartData.push(vote['vote_value']);
      console.log(chartData);

      var chartSum = chartData.reduce(function getSum(total, num){
        return total + num;
      })

      var average = chartSum/chartData.length
      console.log(average)

      timeline.push(average);
      console.log("timeline " + timeline)
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
        data: timeline,
      }]
    };

    $(document).ready(function() {
      var ctx = document.getElementById('chart_test');

      myChart = new Chart(ctx, {
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


