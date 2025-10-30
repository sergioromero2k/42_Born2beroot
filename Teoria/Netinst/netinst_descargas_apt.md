## ¿Cómo sabe apt de dónde descargar?
Cuando instalas Debian (ya sea con netinst o cualquier ISO), el instalador crea un archivo llamado:
```bash
/etc/apt/sources.list
```
* Este archivo contiene las fuentes de repositorios: direcciones web (o locales) donde apt va a buscar los paquetes.
* Por ejemplo, después de una instalación netinst típica con Internet, tu sources.list puede verse así:
```bash
deb http://deb.debian.org/debian bookworm main contrib non-free-firmware
deb http://security.debian.org/debian-security bookworm-security main contrib non-free-firmware
deb http://deb.debian.org/debian bookworm-updates main contrib non-free-firmware
```
* Cada línea es un “repositorio”
* `bookworm` es el nombre de la versión de Debian (por ejemplo Debian 12).
* `main`, `contrib` y `non-free-firmware` son secciones con diferentes tipos de software.

Entonces, cuando ejecutas:
```bash
sudo apt install vim
```
* `apt` lee esas direcciones y descarga vim y sus dependencias directamente desde los servidores oficiales de Debian (`deb.debian.org`).

#### ¿Qué pasa si no tienes Internet?
Si tu `sources.list` solo contiene repositorios web y no tienes conexión, verás errores como:
```bash
Err:1 http://deb.debian.org/debian bookworm/main amd64 vim amd64
  Temporary failure resolving 'deb.debian.org'
E: Unable to fetch some archives, maybe run apt-get update or check your network connection.
```
Eso significa que `apt` **intentó ir a los servidores de Debian** pero no pudo acceder.

#### ¿Puedo usar otras fuentes?

Debian te deja cambiar o añadir repositorios personalizados.
Por ejemplo, podrías usar:
* **Un DVD o ISO montado** localmente (sin Internet):
```bash
deb [trusted=yes] file:/media/cdrom/ bookworm main
```
* **Un espejo (mirror) nacional o más rápido:**
```bash
deb http://ftp.es.debian.org/debian bookworm main contrib non-free
```
* **Tu propio servidor local (repositorio interno):**
```bash
deb http://192.168.1.10/debian-mirror bookworm main
```
También puedes mezclar varias fuentes: una local y otra online.

#### Cómo editar o ver las fuentes actuales

Para ver las fuentes configuradas:
```bash
cat /etc/apt/sources.list
```
Para editarlas (con permisos de superusuario):
```bash
sudo nano /etc/apt/sources.list
```
Luego guardas y actualizas los índices con:
```bash
sudo apt update
```
