#!/bin/bash

echo "Running health check..."

if curl --silent --head http://localhost:8080 | grep "200 OK" > /dev/null
then
  echo "✅ Web server is running fine."
  exit 0
else
  echo "❌ Web server is not running!"
  exit 1
fi
