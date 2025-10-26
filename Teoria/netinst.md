# ¿Qué significa “netinst”?
---

**“netinst”** viene de **“network installation”** → instalación por red.

* Es una **imagen ISO** pequeña (normalmente unos 300–400 MB) que contiene lo mínimo necesario para iniciar la instalación del sistema operativo.
* Durante la instalación, el instalador usa Internet para descargar los paquetes del sistema (el resto de Debian, los entornos gráficos, etc.) directamente desde los servidores oficiales.

En otras palabras:

* El **archivo ISO netinst** contiene solo el instalador básico y unas pocas herramientas esenciales.
* Cuando arrancas desde ella, el instalador te pedirá conexión a Internet (por cable o Wi-Fi).
* Luego descargará automáticamente el resto de los componentes del sistema desde los repositorios de Debian.

### Ventajas de usar netinst

* Descargas menos al principio (solo el instalador).
* Instalas la versión más actualizada de los paquetes, porque los baja directamente desde los servidores.
* Tienes más control sobre qué componentes instalar (por ejemplo, un entorno minimalista, un servidor, o escritorio completo).

### Desventajas

* Necesitas conexión a Internet durante la instalación.
* La instalación puede ser más lenta si tu conexión es lenta.

#### Alternativa
Si **no tienes Internet disponible** durante la instalación, puedes usar una imagen **“DVD”** o **“live”**, que incluye todos los paquetes en el mismo ISO (pero pesa varios GB).

| Distribución         | Nombre de la ISO mínima / netinst         | Tamaño aprox. | Descripción breve |
|----------------------|-------------------------------------------|----------------|-------------------|
| **Debian**           | `netinst`                                | ~350 MB        | Instalador clásico de red. Instala el sistema base y descarga los paquetes desde Internet. |
| **Ubuntu**           | `netboot / Minimal ISO / Live Server` (Subiquity)   | ~800 MB – 1 GB | Instalador por red moderno. Permite instalación mínima o completa desde Internet. |
| **Devuan** (sin systemd) | `Netinstall ISO`                      | ~350 MB        | Igual que Debian, pero sin systemd. Ideal para sistemas minimalistas. |
| **Kali Linux**       | `NetInstaller` o `Light ISO`              | ~400–600 MB    | Basada en Debian, permite instalar Kali básico y descargar herramientas desde Internet. |
| **Linux Mint**       | *(no tiene netinst oficial)*              | —              | Se descarga completa; la instalación mínima se logra desmarcando componentes. |
| **Ubuntu Server (anteriores a 18.04)** | `Netboot / Mini ISO`  | ~60 MB         | Antigua imagen mínima que descargaba todo por red (ya retirada oficialmente). |
| **Rocky Linux**      | `Minimal ISO`                             | ~1 GB          | Basada en Red Hat; instalación mínima sin entorno gráfico. |
| **AlmaLinux**        | `Minimal ISO`                             | ~1 GB          | Equivalente a la netinst de RHEL; solo paquetes esenciales. |
| **CentOS Stream**    | `Minimal ISO`                             | ~1 GB          | Imagen ligera para instalaciones básicas o por red. |
| **Arch Linux**       | `Bootstrap ISO` / `Base ISO`              | ~800 MB        | Solo entorno base; todo se instala manualmente desde Internet. |
| **openSUSE**         | `Network Installer`                       | ~200–300 MB    | Descarga paquetes durante la instalación (igual que netinst). |
| **Fedora**           | `Netinstall / Network Boot ISO`           | ~600 MB        | Instalador que descarga desde repositorios Fedora oficiales. |
