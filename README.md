# n8n · Game File Automation Workflows

Automatización de gestión de archivos —principalmente juegos— construida sobre n8n: recepción, extracción, clasificación y transferencia, de extremo a extremo.
El proyecto toma como referencia una consola **PS3**, pero está diseñado para adaptarse a cualquier sistema, ruta o tipo de archivo con cambios mínimos.

## Workflows

| Workflow   | Trigger               | Notificaciones | Orientación           |
|------------|-----------------------|----------------|-----------------------|
| **Local**  | Webhook               | Telegram       | Self-hosted / homelab |
| **Google** | Google Sheets + Drive | —              | Automatización en nube |

## Funcionalidades

- Recepción o descarga de archivos.
- Extracción automática (`zip`, `rar`, `7z`).
- Clasificación por tipo según reglas configurables.
- Transferencia vía FTP con `lftp`.
- Limpieza automática de temporales.
- Notificaciones por Telegram *(solo workflow local)*.

## Lógica de clasificación

```javascript
if (ext === "pkg") {
  if (sizeGB > 5)               tipo = "juego";
  else if (sizeGB < 1 && esDLC) tipo = "dlc";
  else                          tipo = "update";
} 
```
## Requisitos
- n8n (recomendado vía Docker) .
- Node.js (node:bullseye).
- 7z y lftp instalados · Acceso FTP.
- Bot de Telegram (opcional).
- Workflow Google: credenciales de Google API, Sheets y Drive.

## Configuración
- Reemplaza los valores REDACTED con tus datos: IP del destino, credenciales FTP y tokens/API keys (Telegram, Google).
Revisa y adapta los nodos antes de usar en producción. No publiques credenciales.

## Instalación
 1. Levantar n8n (ejemplo con Docker)
``` docker run -it --rm \
  --name n8n \
  -p 5678:5678 \
  -v n8n_data:/home/node/.n8n \
  docker.n8n.io/n8nio/n8n
```
2. Importar los workflows desde la interfaz de n8n
   Workflows → Import from File

3. Configurar credenciales y variables (ver sección Configuración)


## Roadmap
- Soporte multi-consola (PS2, PSP, etc.).
- Integración con torrents.
- Validación de integridad (MD5 / SHA).
- Notificaciones avanzadas.
- Documentación oficial de n8n · Issues y PRs son bienvenidos.
