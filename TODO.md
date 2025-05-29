# TODO – Weatherapp Infrastructure

This file contains planned improvements and next steps for the Weatherapp project. These are things that were not fully implemented but are worth considering to bring the infrastructure and application to production-level quality.

---

## ✅ Infrastructure Tasks

- [ ] Add Nginx reverse proxy to serve frontend and backend under the same domain
- [ ] Enable HTTPS with Let's Encrypt (using certbot)
- [ ] Add Docker health checks for both services
- [ ] Use Docker volumes for live code reloading in development

---

## ☁️ Cloud Deployment

- [ ] Provision EC2 or GCP VM using Terraform
- [ ] Configure firewall rules and expose only necessary ports (80, 443, 22)
- [ ] Add SSH access for maintainers (id_rsa_internship.pub)
- [ ] Use Ansible to install Docker and deploy the app automatically

---

## 🔄 CI/CD

- [ ] Add GitHub Actions workflow for:
  - Linting and formatting check
  - Docker build test
  - Auto-deploy on push to main branch

---

## 🌤️ Frontend UX

- [ ] Fix frontend logic to handle API response from `/api/weather`
- [ ] Show proper error if backend or API fails
- [ ] Add loading spinner during fetch
- [ ] Display temperature, city name and weather icon nicely

---

## 📚 Documentation

- [ ] Add `.env.example` file with placeholders
- [ ] Add `Makefile` or shell script for simple dev setup
- [ ] Add instructions to deploy in the cloud (AWS/GCP)

---

## 🧪 Extra Ideas

- [ ] Add unit tests for backend fetch logic
- [ ] Add eslint + prettier config to enforce code style
- [ ] Use docker secrets for API key in production

---

✅ Pull requests and suggestions are always welcome!
