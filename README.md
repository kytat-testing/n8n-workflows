## 🚀 Overview

Este proyecto contiene dos workflows de n8n diseñados para automatizar completamente la gestión de archivos (principalmente juegos):
De referencia se toma un ps3 , pero el nodo puede ser modificado y orientado a la extension y ruta deseada

Workflow 1 Local (Webhook Trigger)
Workflow 2 Google (Sheets + Drive Trigger)

### Ambos flujos permiten:

📥 Recepción o descarga de archivos
📦 Extracción automática (zip, rar, 7z)
🧠 Clasificación inteligente por tipo de archivo
📤 Transferencia a consola vía FTP (lftp)
🧹 Limpieza automática de archivos temporales
📲 Notificación por Telegram (solo en el flujo local)


### 🧠 Lógica de Clasificación (Clave del sistema)
Ejemplo:
if (ext === "pkg") {
  if (sizeGB > 5) tipo = "juego";
  else if (sizeGB < 1 && esDLC) tipo = "dlc";
  else tipo = "update";
}

Esto permite automatizar decisiones sin intervención manual.

### 📦 Requisitos
n8n (Docker recomendado)
Node.js (base image: node:bullseye)
7z instalado en el contenedor
lftp instalado
Acceso FTP a PS3
Bot de Telegram (opcional)

para flujo alterno requiere 
Google API credentials:
Google Sheets
Google Drive

### ⚡ Casos de uso
🎮 Automatización de biblioteca de juegos PS3
🏠 Homelab gamer
🤖 Integración con bots (Telegram / Sheets)
📡 Descargas automáticas desde la nube
🧹 Ventajas
100% automatizado
Escalable
Modular (puedes conectar más triggers)
Reduce errores manuales
Limpieza automática de storage

### 🚧 Posibles mejoras
Soporte multi-consola (PS2, PSP, etc.)
Integración con torrents
Validación hash (MD5/SHA)
Notificaciones avanzadas



