# [GitHub - tsenart/vegeta: HTTP load testing tool and library. It's over 9000!](https://github.com/tsenart/vegeta/)

![Vegeta](http://fc09.deviantart.net/fs49/i/2009/198/c/c/ssj2_vegeta_by_trunks24.jpg)

From CLI:

examples:
```
echo "GET http://localhost/" | vegeta attack -duration=5s| tee results.bin | vegeta report
vegeta report -type=json results.bin > metrics.json
cat results.bin | vegeta plot > plot.html
cat results.bin | vegeta report -type="hist[0,100ms,200ms,300ms]"
```

From GitHub readme:

If you are a happy user of iTerm, you can integrate vegeta with [GitHub - rs/jplot: iTerm2 expvar/JSON monitoring tool](https://github.com/rs/jplot) using [GitHub - rs/jaggr: JSON Aggregation CLI](https://github.com/rs/jaggr) to plot a vegeta report in real-time in the comfort of your terminal.


From [RPS calculation in Artillery · Issue #870 · artilleryio/artillery · GitHub](https://github.com/artilleryio/artillery/issues/870):

can send a constant number of requests per second (e.g. Vegeta)