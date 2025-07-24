#!/bin/bash
set -e

if ! command -v docker &> /dev/null; then
  echo "Docker is not installed. Please install Docker first." >&2
  exit 1
fi

echo "Building Docker image..."
docker-compose build

echo "Starting Docker containers..."
docker-compose up -d

echo "Waiting for containers to initialize..."
sleep 5

if docker-compose ps | grep web | grep -q Up; then
    echo "Containers are up and running."
else
    echo "Something went wrong! Containers are not running properly." >&2
    exit 2
fi
