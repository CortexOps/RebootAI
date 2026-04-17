@echo off
echo Starting RebootAI...

docker compose up -d

echo Waiting for Ollama to start...
timeout /t 5 >nul

echo Pulling model (first time only)...
docker exec -it rebootai-ollama ollama pull phi3:mini

echo.
echo RebootAI is ready!
echo Open your browser to:
echo http://localhost:3000
pause