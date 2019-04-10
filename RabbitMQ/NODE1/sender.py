#!/usr/bin/env python
import pika

connection = pika.BlockingConnection(
    pika.ConnectionParameters(host='vip'))
channel = connection.channel()

channel.queue_declare(queue='hello')

for i in range(50):
    val = "node1: " + str(i)
    channel.basic_publish(exchange='', routing_key='hello', body=val)
    print(val)

connection.close()
