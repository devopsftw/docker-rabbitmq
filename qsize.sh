#!/bin/sh
rabbitmqctl_list_queues | tail -n -1 | awk '{ print "qize_rmq,queue="$1 " messages="$2 }'
