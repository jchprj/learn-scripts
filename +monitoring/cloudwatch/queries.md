# AWS CloudWatch metrics

[Using metric math - Amazon CloudWatch](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html)

[CloudWatch search expression examples - Amazon CloudWatch](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/search-expression-examples.html)

```
AVG(SEARCH(' ("Custom-Namespace")  MetricName="abc" AND <Dimension Name With Spaces>', 'Average', 300))
```


[Displaying the CloudWatch Metric Data Query Expression - Grafana Plugin Development - Grafana Labs Community Forums](https://community.grafana.com/t/displaying-the-cloudwatch-metric-data-query-expression/31879)