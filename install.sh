#!/bin/bash

echo "Installing RebootAI..."

# Install Docker if missing
if ! command -v docker &> /dev/null
then
    echo "Docker not found. Installing..."
    curl -fsSL https://get.docker.com | sh
fi

# Install Docker Compose plugin if needed
if ! docker compose version &> /dev/null
then
    echo "Installing Docker Compose plugin..."
    sudo apt-get update
    sudo apt-get install -y docker-compose-plugin
fi

# Clone repo
git clone https://github.com/CortexOps/RebootAI.git
cd RebootAI

# Start services
docker compose up -d

echo "Waiting for Ollama..."
sleep 5

# Pull model
docker exec -it rebootai-ollama ollama pull phi3:mini

echo ""
echo "RebootAI installed!"
echo "Open: http://localhost:3000"