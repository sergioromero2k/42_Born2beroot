# Verificación rápida 1

# 1. NOMBRE
hostnamectl                             # Verificar el hostname actual
sudo hostnamectl set-hostname           # Cambiar el hostname
sudo systemctl restart systemd-logind   # Luego reinicia o ejecuta-

# 2. POLÍTICA DE CONTRASEÑAS FUERTE

# Debian
sudo nano /etc/login.defs               # Archivo de configuración de contraseñas
sudo nano /etc/pam.d/common-password    # Para contraseñas seguras
# password requisite pam_pwquality.so retry=3 minlen=10 ucredit=-1 dcredit=-1 lcredit=-1 maxrepeat=3 usercheck=1 difok=7 reject_username enforce_for_root
# Esto fuerza contraseñas con al menos 10 caracteres, una mayúscula, un número, etC.

# Rocky Linux
sudo nano /etc/security/pwquality.conf  # configuración de contraseñas

# 3. VERIFICAR GRUPOS DEL USUARIO
groups juan                             # Salida: juan : juan sudo user42
sudo -v                                 # Verificar que tu usuario tiene acceso sudo

# 4. VERIFICAR SUDO
sudo visudo
Defaults    logfile="/var/log/sudo/sudo.log"    # Asegúrate de que existe una línea como: Defaults    logfile="/var/log/sudo/sudo.log"
sudo ls /root                                   # Verificar archivo log
sudo cat /var/log/sudo/sudo.log                 # Mostrar que se registró el comando.


