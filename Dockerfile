FROM rabbitmq:3.6.5
MAINTAINER Alex Salt <holy.cheater@gmail.com>

ENV CONSUL_VERSION 0.7.0

# install consul
RUN apt-get update -qq && apt-get install -y --no-install-recommends ca-certificates wget unzip && \
    wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip -O /tmp/consul.zip && \
    unzip -d /usr/local/bin /tmp/consul.zip && \
    rm -f /tmp/consul.zip && \
    wget https://github.com/kreuzwerker/envplate/releases/download/v0.0.8/ep-linux -O /usr/local/bin/ep && \
    chmod +x /usr/local/bin/ep && \
    apt-get purge -y wget unzip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN rabbitmq-plugins enable --offline rabbitmq_management

ADD entry-consul.sh /usr/local/bin
ADD consul.tpl.json /etc

ENTRYPOINT [ "entry-consul.sh" ]
CMD [ "rabbitmq-server" ]
