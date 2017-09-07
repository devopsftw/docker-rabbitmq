# DISCLAIMER

This is RabbitMQ service with consul discovery

## Usage:
```
docker run -d \
  -e CONSUL_JOIN="172.0.0.1 172.0.1.2" \
  -e CONSUL_DC="mydc" \
  -e CONSUL_SERVICE_NAME="rabbitmq" \
  -e INFLUX_HOST=influx.service.consul \
  -e INFLUX_DB=somedb \
  devopsftw/rabbitmq
```

## Env vars:
* CONSUL_JOIN: list of consul servers to join separated by space
* CONSUL_DC: consul datacenter name
* CONSUL_SERVICE_NAME: service name to register in consul
* INFLUX_HOST influxdb host to report metrics to
* INFLUX_DB influxdb to report metrics to
* RABBITMQ_VM_MEMORY_HIGH_WATERMARK (rabbitmq memory limit)
* RABBITMQ_HIPE_COMPILE (true/false, enable HiPE, should speed things up)
