# SUDO

# VERIFICACIÓN FINAL (defensa Born2beroot)
sudo cat /etc/sudoers | grep Defaults
sudo cat /var/log/sudo/sudo.log
sudo ls /var/log/sudo/
sudo env | grep PATH

sudo visudo                       # Esto abre el archivo /etc/sudoers de forma segura.
# Defaults        passwd_tries=3  Límite de 3 intentos de autenticación
# Defaults        badpass_message="Contraseña incorrecta, inténtalo de nuevo 😎"

# Registrar input y output de todos los comandos sudo
# Defaults        logfile="/var/log/sudo/sudo.log"
# Defaults        log_input,log_output
# Defaults        iolog_dir="/var/log/sudo"

# Activar el modo TTY
# Defaults        requiretty -> Esto significa que sudo solo puede ejecutarse desde una terminal real, no desde scripts o sesiones automatizadas.

# Restringir los directorios del PATH de sudo
# Defaults        secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin"
sudo env | grep PATH        # Verificar

