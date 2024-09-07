#!/bin/bash

# Define the URLs for the hello and world services
HELLO_SERVICE_URL="http://127.0.0.1:55105/hello"  # Replace with the actual URL if needed
WORLD_SERVICE_URL="http://127.0.0.1:55114/world"  # Replace with the actual URL if needed

# Fetch data from the hello service
HELLO_RESPONSE=$(curl -s "$HELLO_SERVICE_URL")

# Fetch data from the world service
WORLD_RESPONSE=$(curl -s "$WORLD_SERVICE_URL")

# Combine the responses and print the result
echo "$HELLO_RESPONSE $WORLD_RESPONSE"
