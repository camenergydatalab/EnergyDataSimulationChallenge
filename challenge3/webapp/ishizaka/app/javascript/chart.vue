<template>
  <div class="graph-wrap">
    <BarChart/>
  </div>
</template>

<script defer>
import { Bar } from 'vue-chartjs'

var BarChart = {
  extends: Bar,
  mounted () {
    const elem = document.getElementById('datasets');
    const energyProduction = elem.dataset.energy.split(',');
    const tempreture = elem.dataset.temperature.split(',');
    const daylight = elem.dataset.daylight.split(',');
    const dates = elem.dataset.dates.split(',');
    this.renderChart({
      //ラベル
      labels: dates,
      //データ詳細
      datasets: [
      {
        type: 'line',
        fill: false,
        label:'Temperature',
        data: daylight,
        backgroundColor: 'rgba(34, 116, 165, 0.8)',
        borderColor: 'rgba(34, 116, 165, 0.5)'
      },
      {
        type: 'line',
        fill: false,
        label:'Daylight',
        data: tempreture,
        backgroundColor: 'rgba(234, 140, 85, 0.8)',
        borderColor: 'rgba(234, 140, 85, 0.5)',
        yAxisID: "y-axis-2"
      },
      {
        type: 'bar',
        label:'Energy Production',
        data: energyProduction,
        backgroundColor: 'rgba(231, 235, 144, 0.8)',
      }]
    },
    {
      scales: {
        yAxes: [{
            id: "y-axis-1",
            type: "linear",
            position: "left",
        },
        {
          id: "y-axis-2",
          type: "linear", 
          position: "right",
          ticks: {
              max: 100,
              min: 0,
              stepSize: 10
          },
        }],
      }
    });
  }
}

export default {
  name: 'Chart',
  components: {
    BarChart
  }
} 
</script>

<style scoped>
.graph-wrap {
  width: 85%;
  height: 40%;
  margin: 0 auto;
}

.graph-wrap > .title {
  font-size: 24px;
  text-align: center;
  color: red;
}
</style>
