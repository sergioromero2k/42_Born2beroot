## Preguntas para hacer en revisión del proyecto
---

- **¿Qué es aptitude y apt?**- apt es simple y directo; aptitude gestiona dependencias de forma más avanzada.
- **Comando para actualizar paquetes con apt** - sudo apt update && sudo apt upgrade
- Diferencia entre aptitude y apt.
- **¿Qué son SELinux?** - Sistema de seguridad que usa políticas estrictas y etiquetas para controlar accesos de procesos y archivos.
- **¿Qué es AppArmor?** - Sistema de seguridad que usa perfiles por aplicación para limitar accesos, más fácil de configurar.
- **Distribuciones donde se usa SELinux por defecto** - RedHat, CentOS, Fedora
- **Distribuciones donde se usa AppArmor por defecto** - Ubuntu, Debian, SUSE

- **¿Qué puerto usa SSH en tu máquina?** - 4242
- **¿Cuál es la diferencia entre ssh_config y sshd_config?** ``ssh_config`` controla el cliente SSH (cuando tú te conectas), y ``sshd_config`` el servidor (cuando se conectan a ti).
- **¿Por qué cambiaste el puerto a 4242?** - Para aumentar la seguridad, ya que los bots escanean el puerto 22 por defecto.
- **¿Por qué deshabilitaste el login de root?** - Para evitar accesos directos al usuario más privilegiado. Es una práctica estándar de seguridad.
- **¿Qué pasa si olvidas reiniciar el servicio SSH?** - Los cambios no se aplican hasta que reinicias o recargas el servicio.

- **¿Qué hace UFW?** - UFW es una herramienta que facilita la gestión del firewall iptables en Linux. Controla el tráfico entrante y saliente.
- **¿Por qué habilitaste el puerto 4242?** - Porque el servicio SSH escucha en ese puerto. Sin abrirlo, nadie podría conectarse remotamente.
- **¿Qué pasa si olvidas permitir 4242 antes de activar UFW?** - Me bloquearía el acceso SSH al servidor y tendría que acceder localmente para arreglarlo.
- **¿Qué es iptables?** - Es una herramienta que permite configurar el firewall de Linux a nivel de kernel (Netfilter).
- **¿Qué relación hay entre UFW e iptables?** - UFW es una interfaz simplificada que crea y gestiona reglas de iptables automáticamente.
- **¿Qué es Netfilter?** el motor de filtrado dentro del kernel, El módulo del kernel que implementa el filtrado de paquetes.
- **¿Qué es iptables?:** el programa que habla con Netfilter, Herramienta del kernel que filtra y controla el tráfico de red.

- **¿Qué es sudo?** - Permite ejecutar comandos como superusuario de forma temporal y segura.
- **¿Dónde se configuran las reglas de sudo?** - En el archivo ``/etc/sudoers`` o dentro de ``/etc/sudoers.d/``
- **¿Dónde se configuran los parámetros de caducidad de contraseñas?** - En ``/etc/login.defs``.
- **¿Qué hace libpam-pwquality?** - Aplica reglas de complejidad a las contraseñas (mayúsculas, minúsculas, etc.).

- **¿Qué diferencia hay entre useradd y adduser?** - adduser es más amigable e interactivo.
- **¿Dónde se guardan los usuarios y grupos?** - En ``/etc/passwd`` y ``/etc/group.``

- **¿Qué es cron?** - Un servicio que ejecuta tareas automáticamente en intervalos de tiempo. Cada minuto → cron lee los crontabs → ejecuta lo que toca.
- **¿Por qué el cron se configura para root?** - Porque el script necesita permisos administrativos.

- **¿Qué significa LLMP?**  - Linux + Lighttpd + MariaDB + PHP
- **¿Qué es FastCGI?** - Protocolo que permite a PHP comunicarse con el servidor web para procesar scripts.
- **¿Qué es WordPress?** - CMS gratuito para crear y administrar sitios web dinámicos.
- **¿WordPress es gratuito?** - Sí, WordPress.org es gratis; WordPress.com tiene planes gratuitos y de pago.
- **¿Por qué usar WordPress en Born2beroot?** - Para demostrar que el servidor LLMP funciona correctamente con una aplicación real.
- **¿Qué significa `/var/www/html`?**  - Carpeta raíz donde el servidor web guarda los archivos públicos.
- **¿Qué es `www-data`?** - Usuario que ejecuta el servidor web por seguridad.
