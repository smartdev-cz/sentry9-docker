#!/bin/bash
docker-compose up -d --no-start
docker-compose start sentry-worker
docker-compose exec sentry-worker sentry upgrade --noinput
docker-compose up -d
