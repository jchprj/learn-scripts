echo github.com/atlassian/gostatsd
echo go install github.com/atlassian/gostatsd/cmd/gostatsd@latest

echo gostatsd --backends "" --log-raw-metric
echo For local test, sample:
echo time="2021-07-24T09:51:32" level=info msg="Starting server"
echo time="2021-07-24T09:51:32" level=info msg="No cloud provider specified"
echo time="2021-07-24T09:51:42" level=info msg="[{counter, foo, 1.000000, , }]"
echo time="2021-07-24T09:52:42" level=info msg="[{gauge, foo, 1.000000, , }]"
gostatsd --backends "" --log-raw-metric
