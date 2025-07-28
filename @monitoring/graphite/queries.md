# Graphite metrics

- Show total mtrics count
  ```
  sumSeries(isNonNull(keepLastValue(test.metrics, 1)))
  ```

- [dashboard - Grafana difference between two datapoints - Stack Overflow](https://stackoverflow.com/questions/53448307/grafana-difference-between-two-datapoints)
  ```
  derivative(keepLastValue(your_mteric))
  ```
  - derivative function
    This is the opposite of the integral function. This is useful for taking a running total metric and calculating the delta between subsequent data points.
  - keepLastValue function
    Continues the line with the last received value when gaps (‘None’ values) appear in your data, rather than breaking your line.
