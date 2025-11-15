#!/bin/bash

echo "Waiting for Kong to be ready..."
until curl -s http://localhost:8001/status > /dev/null; do
  sleep 1
done

echo "Kong is ready! Applying configuration..."

# Применяем декларативную конфигурацию
curl -X POST http://localhost:8001/config \
  -H "Content-Type: application/json" \
  -d @kong.yml

echo "Kong configuration applied successfully!"