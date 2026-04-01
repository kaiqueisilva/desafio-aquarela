# 🚀 Observabilidade + GitOps com Elastic Stack, APM e ArgoCD

## 📌 Visão Geral

Este projeto demonstra uma arquitetura moderna de **DevOps e Observabilidade** utilizando Kubernetes, Elastic Stack e GitOps.

A solução cobre:

- Coleta de logs (Fluent Bit → Elasticsearch)
- Visualização (Kibana)
- Monitoramento de aplicação (Elastic APM)
- Deploy automatizado (Argo CD)
- Containerização (Docker)

---

## 🏗️ Arquitetura

[ Node.js App ]
|
| (APM)
v
[ APM Server ]
|
v
[ Elasticsearch ] ---> [ Kibana ]
^
|
[ Fluent Bit ]
^
|
[ Kubernetes Pods Logs ]


---

## 🧱 Tecnologias Utilizadas

- Kubernetes (EKS)
- Docker
- Elasticsearch
- Kibana
- Fluent Bit
- Elastic APM
- Argo CD
- GitHub

---

## 📦 Estrutura do Projeto


---

## 🧱 Tecnologias Utilizadas

- Kubernetes (EKS)
- Docker
- Elasticsearch
- Kibana
- Fluent Bit
- Elastic APM
- Argo CD
- GitHub

---

## 📦 Estrutura do Projeto


├── app/
│ └── index.js
├── k8s/
│ ├── deployment.yaml
├── Dockerfile
└── README.md


---

## 🐳 Build da Aplicação

```bash
docker build -t seuuser/node-app:latest .
docker push seuuser/node-app:latest