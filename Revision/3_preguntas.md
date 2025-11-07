- ¿Qué es aptitude y apt?
- Diferencia entre aptitude y apt.
- ¿Qué son SELinux y AppArmor?.


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
- **Netfilter:** el motor de filtrado dentro del kernel
- **iptables:** el programa que habla con Netfilter

