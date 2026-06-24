# 🎮 n8n Game File Automation Workflows

Automatización completa de gestión de archivos (principalmente juegos) usando n8n.

---

## 🚀 Overview

Este proyecto incluye dos workflows diseñados para automatizar el manejo de archivos desde su recepción hasta su transferencia final.

Está pensado tomando como referencia una consola **PS3**, pero puede adaptarse fácilmente a cualquier sistema, ruta o tipo de archivo.

---

## 🔄 Workflows incluidos

* **Local Workflow**

  * Trigger: Webhook
  * Incluye notificaciones por Telegram

* **Google Workflow**

  * Trigger: Google Sheets + Google Drive
  * Orientado a automatización desde la nube

---

## ⚙️ Funcionalidades

* 📥 Recepción o descarga de archivos
* 📦 Extracción automática (`zip`, `rar`, `7z`)
* 🧠 Clasificación inteligente por tipo de archivo
* 📤 Transferencia vía FTP (`lftp`)
* 🧹 Limpieza automática de archivos temporales
* 📲 Notificaciones por Telegram *(solo en flujo local)*

---

## 🧠 Lógica de Clasificación

Ejemplo:

```javascript
if (ext === "pkg") {
  if (sizegb > 5) tipo = "juego";
  else if (sizegb < 1 && esdlc) tipo = "dlc";
  else tipo = "update";
}
```

Permite automatizar decisiones sin intervención manual.

---

## 📦 Requisitos

* n8n (recomendado en Docker)
* Node.js (`node:bullseye`)
* `7z` instalado
* `lftp` instalado
* Acceso FTP
* Bot de Telegram (opcional)

### Para el workflow con Google

* Credenciales de Google API
* Google Sheets
* Google Drive

---

## ⚡ Casos de uso

* 🎮 Automatización de biblioteca de juegos
* 🏠 Homelab gamer
* 🤖 Integración con bots (Telegram / Sheets)
* 📡 Descargas automatizadas desde la nube

---

## 🧹 Ventajas

* ✔ 100% automatizado
* ✔ Escalable
* ✔ Modular
* ✔ Reduce errores manuales
* ✔ Limpieza automática de almacenamiento

---

## 🚧 Posibles mejoras

* Soporte multi-consola (PS2, PSP, etc.)
* Integración con torrents
* Validación de integridad (MD5 / SHA)
* Notificaciones más avanzadas

---

## ⚠️ Configuración

Los valores marcados como:

```
<REDACTED>
```

deben ser reemplazados con tus propios datos:

* IP de la consola
* Credenciales FTP
* Tokens / API keys

---

## 📌 Notas

* Revisa y adapta los workflows antes de usarlos en producción
* Puedes modificar fácilmente los nodos para otros tipos de archivos
* Compatible con entornos self-hosted (homelab)

---

## 🤖 Soporte

Si tienes dudas o errores, puedes apoyarte en:

* Documentación oficial de n8n https://docs.n8n.io/
* Herramientas de IA

---

## ⭐ Contribuciones

Las mejoras y sugerencias son bienvenidas.
