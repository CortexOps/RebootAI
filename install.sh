#!/bin/bash

set -e

echo "🚀 Installing RebootAI..."

# Install Docker if missing
if ! command -v docker &> /dev/null
then
    echo "🐳 Docker not found. Installing..."
    curl -fsSL https://get.docker.com | sh
    systemctl enable --now docker
fi

# Install Docker Compose plugin if needed
if ! docker compose version &> /dev/null
then
    echo "📦 Installing Docker Compose plugin..."
    apt-get update -y
    apt-get install -y docker-compose-plugin
fi

# Clone repo (only if not already there)
if [ ! -d "RebootAI" ]; then
    git clone https://github.com/CortexOps/RebootAI.git
fi

cd RebootAI

# Start services
echo "📦 Starting containers..."
docker compose up -d

echo "⏳ Waiting for Ollama to be ready..."

# Wait until Ollama is ready (no TTY required)
until docker exec rebootai-ollama ollama list &>/dev/null
do
    sleep 2
done

echo "✅ Ollama is ready"

# Pull model (non-interactive)
echo "📥 Pulling model (phi3:mini)..."
docker exec rebootai-ollama ollama pull phi3:mini

echo ""
echo "🔥 RebootAI installed successfully!"
echo "👉 Open: http://localhost:3000"
