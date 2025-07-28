# Grafana Play Ground

https://play.grafana.org/d/000000012/grafana-play-home?orgId=1

Same as: https://play.grafana.org/

# Grafana Cloud

Grafana Cloud provids free monitoring tools, easy to use it without setup the whole stacks manually, so great for learning and practice the related scripts.

## Graphite

[Graphite metrics | Grafana Labs](https://grafana.com/docs/grafana-cloud/metrics-graphite/)

[How to stream Graphite metrics to Grafana Cloud using carbon-relay-ng | Grafana Labs](https://grafana.com/blog/2020/08/03/how-to-stream-graphite-metrics-to-grafana-cloud-using-carbon-relay-ng/)

- First got Grafana Cloud account
- Configure carbon-relay-ng by following Grafana Cloud -> Metrics -> Details 
    - /etc/carbon-relay-ng.ini
    - /etc/carbon-relay-ng/storage-schemas.conf
    - /etc/carbon-relay-ng/storage-aggregation.conf
- Then run carbon-relay-ng, stats now connected to localhost:2003
- Query metrics like `carbon-relay-ng.stats.*.stats.graphite.connected.gauge1`


[Feeding In Your Data — Graphite 1.2.0 documentation](https://graphite.readthedocs.io/en/latest/feeding-carbon.html)

Send custom metrics to the relay in carbon/Graphite format
```
echo "test.metrics 123" | nc  -w1 localhost 2003
```

## Prometheus

[Prometheus metrics | Grafana Labs](https://grafana.com/docs/grafana-cloud/metrics-prometheus/)

[How to push Prometheus metrics in Grafana Cloud? - Grafana Cloud - Grafana Labs Community Forums](https://community.grafana.com/t/how-to-push-prometheus-metrics-in-grafana-cloud/47297/2)