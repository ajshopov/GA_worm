var options = {
  url: '/api/votes',
  method: 'get', //default
  data: {
    id: location.pathname.split('/')[2]
  }
};

var allVotes;
var last30sVotesRuby = [];
var timeline = [];
var myChart;
var data;


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



$(document).ready(function() {
    var ctx = document.getElementById('chart_test');

    data = {
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
    myChart = new Chart(ctx, {
      type: 'line',
      options: option,
      data: data
    })

})




setInterval(function(){

  $.ajax(options).done(function(allVotes){
    last30sVotesRuby = [];
    allVotes. forEach(function(vote){
      last30sVotesRuby.push(vote['vote_value']);
      console.log('last30sVotesRuby' + last30sVotesRuby);
    });
      // wrap reduce in if statement for no new votes
      var sum = last30sVotesRuby.reduce(function getSum(total, num){
        return total + num;
      })

      var meanVote = sum/last30sVotesRuby.length
      console.log("meanVote" + meanVote)

      if (timeline.length >= 12) {
        timeline.shift();
      }
      timeline.push(meanVote);
      console.log("timeline " + timeline)
  myChart.update();
  });

}, 10000);

    // event.preventDefault();
  // })
  // })



// [12,20,30,80,90,70,50,60,30,30,40,10]
