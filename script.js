// 初始化所有图表
document.addEventListener('DOMContentLoaded', function() {
    initializeInstagramGrowth();
});

function initializeInstagramGrowth() {
    const chart = echarts.init(document.getElementById('instagramGrowth'));
    
    const dates = ['Jan 5', 'Jan 9', 'Jan 13', 'Jan 17', 'Jan 20', 'Jan 23', 'Jan 25', 'Jan 24', 'Jan 29'];
    const gainedData = [15000, 25000, 18000, 38000, 58000, 68000, 62000, 18000, 12000];
    const lostData = [-6000, -8000, -5000, -25000, -15000, -12000, -10000, -5000, -8000];
    
    const option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'shadow'
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: {
            type: 'category',
            data: dates,
            axisLine: {
                lineStyle: {
                    color: '#dfe6e9'
                }
            }
        },
        yAxis: {
            type: 'value',
            splitLine: {
                lineStyle: {
                    type: 'dashed',
                    color: '#dfe6e9'
                }
            },
            axisLabel: {
                formatter: function(value) {
                    if (value >= 1000) {
                        return (value / 1000) + 'K';
                    }
                    return value;
                }
            }
        },
        series: [
            {
                name: 'Gained',
                type: 'bar',
                stack: 'total',
                itemStyle: {
                    color: '#4299e1'
                },
                data: gainedData
            },
            {
                name: 'Lost',
                type: 'bar',
                stack: 'total',
                itemStyle: {
                    color: '#48bb78'
                },
                data: lostData
            }
        ]
    };
    
    chart.setOption(option);
    
    // 响应式处理
    window.addEventListener('resize', function() {
        chart.resize();
    });
}


document.addEventListener('DOMContentLoaded', () => {
    // Initialize Echarts

    const lineChart = echarts.init(document.getElementById('line-chart'));
    const wordCloudChart = echarts.init(document.getElementById('word-cloud'));
    const ageDistributionChart = echarts.init(document.getElementById('age-distribution'));
    const conversionChart = echarts.init(document.getElementById('conversion-chart'));

    // Line Chart Data and Configuration
    lineChart.setOption({
        title: {
            text: 'Time Series Conversion Chart'
        },
        tooltip: {},
        xAxis: {
            type: 'category',
            data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
        },
        yAxis: {
            type: 'value'
        },
        series: [{
            data: [120, 132, 101, 134, 90, 230, 210],
            type: 'line'
        }]
    });

    // Word Cloud Chart Data and Configuration
    wordCloudChart.setOption({
        title: {
            text: 'Word Cloud'
        },
        series: [{
            type: 'wordCloud',
            sizeRange: [12, 60],
            rotationRange: [-90, 90],
            gridSize: 8,
            textStyle: {
                normal: {
                    color: function() {
                        return 'rgb(' + [
                            Math.round(Math.random() * 255),
                            Math.round(Math.random() * 255),
                            Math.round(Math.random() * 255)
                        ].join(',') + ')';
                    }
                }
            },
            data: [
                { name: 'Ad', value: 1000 },
                { name: 'Data', value: 800 },
                { name: 'Analysis', value: 700 },
                { name: 'ROI', value: 600 }
            ]
        }]
    });

    // Age Distribution Chart Data and Configuration
    ageDistributionChart.setOption({
        title: {
            text: 'Age Distribution Pie Chart'
        },
        series: [{
            type: 'pie',
            radius: '50%',
            data: [
                { value: 400, name: '20-30 years old' },
                { value: 335, name: '30-40 years old' },
                { value: 310, name: '40-50 years old' },
                { value: 234, name: 'Above 50 years old' }
            ]
        }]
    });

    // Conversion Chart Data and Configuration
    conversionChart.setOption({
        title: {
            text: '"Conversion Rate Bar Chart'
        },
        tooltip: {},
        xAxis: {
            type: 'category',
            data: ['Ad_A', 'Ad_B', 'Ad_C', 'Ad_D']
        },
        yAxis: {
            type: 'value'
        },
        series: [{
            data: [10, 20, 30, 40],
            type: 'bar',
            color: '#4e73df'
        }]
    });
});


document.addEventListener('DOMContentLoaded', () => {
    const contentCreationChart = echarts.init(document.getElementById('content-creation-chart'));
    contentCreationChart.setOption({
        title: { text: 'Content Creation Performance' },
        xAxis: {
            type: 'category',
            data: ['Content 1', 'Content 2', 'Content 3', 'Content 4']
        },
        yAxis: {
            type: 'value'
        },
        series: [{
            data: [500, 800, 1200, 700],
            type: 'bar'
        }]
    });
});
