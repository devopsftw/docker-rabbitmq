# DISCLAIMER

This is RabbitMQ service with consul discovery

## Usage:
```
docker run -d \
  -e CONSUL_JOIN="172.0.0.1 172.0.1.2" \
  -e CONSUL_DC="mydc" \
  -e CONSUL_SERVICE_NAME="rabbitmq" \
  devopsftw/rabbitmq
```

## Env vars:
* CONSUL_JOIN: list of consul servers to join separated by space
* CONSUL_DC: consul datacenter name
* CONSUL_SERVICE_NAME: service name to register in consul
