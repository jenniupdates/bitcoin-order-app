#!/bin/bash

docker pull zaproxy/zap-stable
docker run -i owasp/zap2docker-stable zap-baseline.py -t "https://kenken64.github.io/bitcoin-order-app/" -l PASS > zap_baseline_report.html

echo $? > /dev/null
