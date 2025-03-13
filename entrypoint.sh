#!/bin/bash
# Ensure the API key is set
if [ -z "$OPENAI_API_KEY" ]; then
    echo "Error: OPENAI_API_KEY is not set"
    exit 1
fi

# Start hello-wordsmith with an interactive chat session
hello-wordsmith -f "/app/data/*" && hello-wordsmith