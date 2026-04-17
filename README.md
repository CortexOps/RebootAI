# RebootAI
![Docker](https://img.shields.io/badge/Docker-Ready-blue)
![Platform](https://img.shields.io/badge/Platform-Linux%20%7C%20Windows-green)
![License](https://img.shields.io/badge/License-MIT-yellow)
![AI](https://img.shields.io/badge/AI-Local%20LLM-purple)

Turn old hardware into a local AI assistant in minutes.

RebootAI is a lightweight, fully local AI stack designed for IT professionals, schools, and homelabs. It runs entirely offline using Docker and CPU-friendly models, making it perfect for repurposing older machines.

---

## ⚡ One-Line Install (Linux)

```bash
curl -fsSL https://raw.githubusercontent.com/CortexOps/RebootAI/main/install.sh | bash
```

---

## 🚀 Features

* 100% local AI (no cloud required)
* CPU-friendly (runs on older hardware)
* Simple Docker-based deployment
* No API keys or subscriptions needed
* Designed for IT, education, and secure environments

---

## 💻 Requirements

* Ubuntu / Debian-based Linux (for install script)
* Docker installed (auto-installed if missing)
* 8GB RAM recommended (works with less, slower)
* Internet required for initial setup only

---

## ⚡ Quick Start (Windows)

```bash
git git clone https://github.com/CortexOps/RebootAI.git
cd RebootAI
run.bat
```

---

## 🌐 Access the Web Interface

Once running, open your browser:

http://localhost:3000

---

## 🧠 Default Model

RebootAI uses:

* `phi3:mini` → fast, lightweight, optimized for CPU

You can swap models manually using:

```bash
docker exec -it rebootai-ollama ollama pull mistral:7b
```

---

## 🛠️ Use Cases

* IT troubleshooting assistant
* Security log analysis
* Report summarization
* Documentation generation
* AI experimentation on low-cost hardware

---

## 🔒 Why Local AI?

* No data leaves your network
* Safe for schools and sensitive environments
* No recurring API costs
* Full control over your AI stack

---

## 🧩 Tech Stack

* Docker
* Ollama (local LLM runtime)
* Open WebUI (web interface)

---

## ⚠️ Notes

* First run will take time to download the AI model
* Performance depends on your hardware
* CPU-only systems will be slower but still usable

---

## 📌 Roadmap

* Prebuilt AI modes (IT, Security, Education)
* Prompt templates
* Lightweight dashboard enhancements
* Optional voice alerts
* Security integrations

---

## 🤝 Contributing

Pull requests and ideas are welcome.
If you find this useful, consider starring the repo ⭐

---

## 📄 License

MIT License (or choose your preferred license)
