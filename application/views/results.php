<div class="container-fluid">
  <h1 class="my-4 fw-bold text-center"><?=$heading?></h1>
  <div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-4">
      <h3 class=""><?=json_decode($cTitle1)?></h3>
      <ul>
        <?php
        foreach ($records1 as $row) {
          ?>
          <li><a class="links" target="_blank" href="<?=$row['website_URL']?>"><?=$row['website_name'] . " [Score: " . $row['securitySum'] . "]"?></a></li>
          <?php
        }
        ?>
      </ul>
    </div>
    <div class="col-md-4">
      <h3 class=""><?=json_decode($cTitle2)?></h3>
      <ul>
        <?php
        foreach ($records2 as $row) {
          ?>
          <li><a class="links" target="_blank" href="<?=$row['website_URL']?>"><?=$row['website_name'] . " [Score: " . $row['securitySum'] . "]"?></a></li>
          <?php
        }
        ?>
      </ul>
    </div>
    <div class="col-md-2"></div>
  </div>

  <div class="chart-container">
    <div class="bar-chart-container">
      <canvas id="bar-chart1"></canvas>
    </div>
  </div>
  <div class="clearfix"></div>
  <div class="chart-container">
    <div class="bar-chart-container">
      <canvas id="bar-chart2"></canvas>
    </div>
  </div>


</div>
</body>
</html>

<script>
  $(function(){
      //get the bar chart canvas
      var cTitle1 = JSON.parse(`<?php echo $cTitle1; ?>`);
      var cData1 = JSON.parse(`<?php echo $chart_data1; ?>`);

      var ctx1 = document.getElementById("bar-chart1").getContext("2d");

      //bar chart data
      var data1 = {
        labels: cData1.label,
        datasets: [
        {
          barThickness: 30,
          label: cData1.label,
          data: cData1.data,
          backgroundColor: [
          'rgba(255, 99, 132, 0.6)',
          'rgba(255, 159, 64, 0.6)',
          'rgba(255, 205, 86, 0.6)',
          'rgba(75, 192, 192, 0.6)',
          'rgba(54, 162, 235, 0.6)',
          'rgba(153, 102, 255, 0.6)',
          'rgba(201, 203, 207, 0.6)'
          ],
          borderColor: [
          'rgb(255, 99, 132)',
          'rgb(255, 159, 64)',
          'rgb(255, 205, 86)',
          'rgb(75, 192, 192)',
          'rgb(54, 162, 235)',
          'rgb(153, 102, 255)',
          'rgb(201, 203, 207)'
          ],
          borderWidth: 2
        }
        ]
      };


      //create bar Chart class object
      var chart1 = new Chart(ctx1, {
        type: "bar",
        data: data1,
        options: {
          plugins: {
            title: {
              display: true,
              text: cTitle1
            },
            legend: {
              display: false,
            },
            tooltip: {
              mode: 'nearest',
              intersect: false
            }
          },
          scales: {
            y: {
              beginAtZero: true
            }
          }
        },
      });


      //get the bar chart canvas
      var cTitle2 = JSON.parse(`<?php echo $cTitle2; ?>`);
      var cData2 = JSON.parse(`<?php echo $chart_data2; ?>`);

      var ctx2 = document.getElementById("bar-chart2").getContext("2d");

      //bar chart data
      var data2 = {
        labels: cData2.label,
        datasets: [
        {
          barThickness: 30,
          label: cData2.label,
          data: cData2.data,
          backgroundColor: [
          'rgba(255, 99, 132, 0.6)',
          'rgba(255, 159, 64, 0.6)',
          'rgba(255, 205, 86, 0.6)',
          'rgba(75, 192, 192, 0.6)',
          'rgba(54, 162, 235, 0.6)',
          'rgba(153, 102, 255, 0.6)',
          'rgba(201, 203, 207, 0.6)'
          ],
          borderColor: [
          'rgb(255, 99, 132)',
          'rgb(255, 159, 64)',
          'rgb(255, 205, 86)',
          'rgb(75, 192, 192)',
          'rgb(54, 162, 235)',
          'rgb(153, 102, 255)',
          'rgb(201, 203, 207)'
          ],
          borderWidth: 2
        }
        ]
      };


      //create bar Chart class object
      var chart2 = new Chart(ctx2, {
        type: "bar",
        data: data2,
        options: {
          plugins: {
            title: {
              display: true,
              text: cTitle2
            },
            legend: {
              display: false,
            },
            tooltip: {
              mode: 'nearest',
              intersect: false
            }
          },
          scales: {
            y: {
              beginAtZero: true
            }
          }
        },
      });
    });
  </script>