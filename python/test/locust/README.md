# pip3 install locust
# pip3 install back cilck  # may need with headless
# locust -f filename.py
# http://localhost:8089/


[Configuration — Locust 2.15.1 documentation](https://docs.locust.io/en/stable/configuration.html)

    -H HOST, --host HOST  Host to load test in the following format: http://10.21.32.33
    -u NUM_USERS, --users NUM_USERS Peak number of concurrent Locust users. Primarily used together with --headless or --autostart. 
    -f LOCUSTFILE, --locustfile LOCUSTFILE
    --headless  Disable the web interface, and start the test immediately.

# Headless

[Running without the web UI — Locust 2.15.1 documentation](https://docs.locust.io/en/stable/running-without-web-ui.html#running-without-web-ui)

    locust --headless -u 1
    locust --headless -u 100 --run-time 1h30m
    locust --headless -u 100 --run-time 60 # default unit is seconds


# Docker

[Running Locust with Docker — Locust 1.5.2 documentation](https://docs.locust.io/en/1.5.2/running-locust-docker.html)

    docker run -v $PWD:/home/locust locustio/locust
    docker run -p 8089:8089 -v $PWD:/mnt/locust locustio/locust -f /mnt/locust/locustfile.py