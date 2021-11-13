# Artillery Core
Free & open source

https://artillery.io/


# Install
```
npm -i install artillery
```
# Run

```
artillery run my-script.yaml
```

# Quick

https://artillery.io/docs/guides/guides/command-line.html#quick

```
artillery quick -c 1 -n 1 https://httpbin.org/get
```

# Debugging

https://artillery.io/docs/guides/guides/http-reference.html#Debugging  

Use the DEBUG environment variable  

```
DEBUG=http artillery run my-script.yaml
DEBUG=http:request artillery run my-script.yaml
DEBUG=http:response artillery run my-script.yaml
DEBUG=http:request,http:response artillery run my-script.yaml
DEBUG=http* artillery run my-script.yaml
```

# Report

https://artillery.io/docs/guides/guides/command-line.html#report

```
artillery report --output report.html report.json
```

## Report viewer

- https://github.com/artilleryio/report-viewer  
  When you run the artillery cli, you can simply add the following to your command to output a json file for use with this tool:   
  `-o some_report.json`
- https://reportviewer.artillery.io/
- https://github.com/cfryerdev/report-viewer-beta
- https://www.buymeacoffee.com/cfryerdev/artillery-io-report-viewer-v2

# Advanced

- [Running multiple targets in parallel · Issue #642 · artilleryio/artillery · GitHub](https://github.com/artilleryio/artillery/issues/642)


- Memory issue  
  [node.js - Artillery JavaScript heap out of memory - Stack Overflow](https://stackoverflow.com/questions/55087652/artillery-javascript-heap-out-of-memory)  
  [node.js - how to increase nodejs default memory? - Stack Overflow](https://stackoverflow.com/questions/34356012/how-to-increase-nodejs-default-memory)  
  Use environment variable: `NODE_OPTIONS=--max-old-space-size=4096`

# References

Found Artillery from [Top 6 Tools for API & Load Testing | by Dickson Mwendia | Medium](https://medium.com/@Dickson_Mwendia/top-6-tools-for-api-load-testing-7ff51d1ac1e8)