### ¿Qué significa que una ISO “netinst” sea mínima?

Cuando decimos que una imagen **netinst es mínima**, queremos decir que:
* No incluye todos los programas ni entornos gráficos (interfaz visual) por defecto.
* Solo trae lo necesario para arrancar el instalador y descargar el resto desde Internet.

Específicamente, una **ISO “mínima”** incluye:

* El núcleo de Linux (kernel).
* El programa de instalación de Debian.
* Algunas herramientas básicas para particionar el disco, configurar red, etc.
* Paquetes esenciales para tener un sistema base (sin entorno gráfico).

Cuando termina la instalación, obtienes:
* Un sistema Debian básico con solo la línea de comandos (terminal).

No incluye, a menos que tú lo elijas:
* Entornos gráficos (GNOME, KDE, XFCE, etc.).
* Servicios de escritorio (Bluetooth, sonido, impresoras).
* Aplicaciones como navegador, oficina, etc.

### ¿Entonces para qué se usa normalmente?
| Uso                                        | Descripción                                                                             |
| ------------------------------------------ | --------------------------------------------------------------------------------------- |
| 🧑‍💻 **Servidores**                       | Ideal para servidores web, bases de datos, etc., donde no se necesita interfaz gráfica. |
| 🧱 **Instalaciones ligeras**               | Para computadoras viejas o sistemas minimalistas.                                       |
| 🛠️ **Instalación personalizada**          | Si quieres elegir exactamente qué entorno y programas instalar.                         |
| 🌐 **Instalación con Internet disponible** | Aprovecha los repositorios online para obtener versiones más actualizadas.              |
