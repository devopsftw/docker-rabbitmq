#!/bin/sh
rabbitmqctl list_queues | tail -n +2 | awk '{ print "qsize_rmq,queue="$1 " messages="$2 }'
