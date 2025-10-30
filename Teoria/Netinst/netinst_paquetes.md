## ¿Cuántos paquetes aproximados solo tiene netinst?
---
En resumen rápido
##### ISO netinst (≈ 300–400 MB)
* Contiene solo entre 150 y 250 paquetes aprox.
* Todos ellos son esenciales para instalar y arrancar el sistema base de Debian.
##### ISO DVD completa (≈ 3–4 GB)
* Trae más de 10 000 paquetes (de los ~60 000 que hay en total en Debian).

### ¿Qué paquetes incluye netinst exactamente?
La netinst trae los paquetes mínimos necesarios para
| Función                   | Ejemplos de paquetes                                                 |
| ------------------------- | -------------------------------------------------------------------- |
| Núcleo de Linux           | `linux-image-amd64`, `initramfs-tools`                               |
| Instalador y sistema base | `debian-installer`, `base-files`, `bash`, `coreutils`, `apt`, `dpkg` |
| Red básica                | `ifupdown`, `iproute2`, `net-tools`, `isc-dhcp-client`               |
| Shell y utilidades        | `nano`, `less`, `grep`, `sed`, `tar`, `gzip`, `systemd`, `login`     |
| Gestor de arranque        | `grub-pc`, `os-prober`                                               |

Con eso puedes iniciar el sistema, entrar por consola y configurar la red, pero nada más.
No trae:

* Entornos gráficos (GNOME, KDE, XFCE, etc.).
* Aplicaciones de usuario (Firefox, LibreOffice, etc.).
* Servicios avanzados (Apache, SSH, etc.)

### Tamaño del sistema después de instalar solo el base

* Una instalación mínima desde netinst ocupa: Aproximadamente 1 GB a 1.5 GB en disco.
* Mientras que una instalación con entorno gráfico (GNOME, por ejemplo) puede ocupar 8–10 GB o más.

### ¿Por qué tan pocos paquetes?
Porque el propósito de la netinst es que el resto se descargue desde los repositorios online oficiales.
De esa forma:
* La imagen ISO se mantiene pequeña.
* Siempre instalas las versiones más recientes de los paquetes.
* Puedes personalizar el sistema desde cero.

| ISO              | Tamaño  | Nº de paquetes incluidos | Qué puedes hacer sin Internet                |
| ---------------- | ------- | ------------------------ | -------------------------------------------- |
| **Netinst**      | ~350 MB | 150–250                  | Instalar el sistema base (sin escritorio)    |
| **DVD completo** | ~3.6 GB | 10 000+                  | Instalar escritorio y apps completas sin red |
