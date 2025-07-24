#!/bin/bash
set -e

./install.sh

echo "Your FastAPI app should now be running in Docker on port 8000."
echo "To check logs: docker-compose logs web"
echo "To stop: docker-compose down"
