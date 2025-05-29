# Weatherapp
A containerized infrastructure setup for the Weatherapp project. This solution wraps a frontend (React) and backend (Koa) into Docker containers connected via Docker Compose, allowing quick and reproducible local development and future cloud deployment. Focused on infrastructure automation, not frontend logic.

# Weatherapp – Infrastructure Solution

This repository contains a containerized infrastructure setup for the Weatherapp project. The purpose was to take the existing frontend and backend code and wrap it with reliable, developer-friendly infrastructure that makes it easy to run and deploy anywhere.

---

## ✅ What I Focused On

- 🐳 Containerized both frontend and backend with Docker
- 🔀 Connected the services with Docker Compose
- 🔄 Enabled hot reload for frontend via `webpack-dev-server`
- 🔐 Passed OpenWeatherMap API key via environment variables
- ✅ Ensured backend connects and returns real weather data
- 🧪 Setup tested on Linux Docker host

---

## 📂 Project Structure

recruitment-2025/
├── backend/ # Node.js API with Koa
│ └── Dockerfile
├── frontend/ # React frontend app
│ └── Dockerfile
├── docker-compose.yml # Runs both services together
├── id_rsa_internship.pub # SSH public key for cloud access
├── README.md
└── TODO.md # Follow-up development tasks


---

## 🚀 How to Run This App

### 1. Get an API Key

Get a free API key from [https://openweathermap.org/api](https://openweathermap.org/api) and either:

- Set it in your shell:

```bash
export APPID=your_api_key_here


environment:
  - APPID=your_api_key_here


docker-compose build
docker-compose up

Frontend: http://localhost:3000

Backend API: http://localhost:9000/api/weather

🌩️ Known Limitations
Frontend currently displays a blank screen. Backend works correctly and responds with live weather JSON data from OpenWeatherMap.

The focus of this task was infrastructure, so frontend display logic wasn't the priority.

🧰 Cloud Setup (planned / optional)
 Launch EC2 instance (AWS) or GCP VM

 Deploy app with Docker and expose via Nginx reverse proxy

 Add SSH access with id_rsa_internship.pub

 Use Terraform + Ansible for provisioning

🔧 Future Improvements
Fix frontend to parse backend data correctly

Add health checks for containers

Add HTTPS with Let's Encrypt

Add CI/CD pipeline (e.g. GitHub Actions)

📌 Notes
This solution demonstrates:

Strong Docker fundamentals

Working container network and service isolation

Developer convenience via Docker Compose

Environment configuration using variables

🧑 Author
This solution was prepared by Julian Modrzejewski
📫 Contact: julian_modrzejewski@protonmail.com
🌐 GitHub: https://github.com/Julson69

yaml
Kopiuj
Edytuj

---

## 📝 Gotowy plik `TODO.md`

Wklej ten plik jako `TODO.md` do repozytorium:

```markdown
# TODO – Weatherapp Infrastructure

This file contains further improvements and ideas that could be added to the project if more time was available.

---

## ✅ Infrastructure

- [ ] Add Nginx as a reverse proxy for frontend/backend
- [ ] Configure HTTPS with Let's Encrypt certificates
- [ ] Add Docker health checks to services
- [ ] Improve hot reload experience (e.g. `nodemon` for backend)

---

## ☁️ Cloud Deployment

- [ ] Provision AWS EC2 instance using Terraform
- [ ] Use Ansible to install Docker and deploy containers
- [ ] Enable SSH access using `id_rsa_internship.pub`
- [ ] Add firewall and open only required ports (80, 443, 22)

---

## 🧪 CI/CD

- [ ] Add GitHub Actions pipeline to:
  - Build Docker images
  - Run linter checks
  - Optionally deploy to staging server

---

## 🖥️ Frontend

- [ ] Fix parsing of `/api/weather` response
- [ ] Display current weather icon and data (description, temperature)
- [ ] Add loading state and error handling in React component

---

## 📄 Documentation

- [ ] Add `.env.example` file for easy setup
- [ ] Add Makefile or shell script to simplify setup (`make dev`)
- [ ] Write a setup guide for cloud deployment

---

✅ Pull requests welcome!

