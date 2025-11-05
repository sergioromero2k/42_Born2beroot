# Firewall

# Debian
sudo ufw status         # Verificar si UFW está instalado, Si dice Status: active OK.
sudo ufw status verbose # Verificar las reglas actuales
                        # Si ves cosas como 22/tcp o 80/tcp → significa que otros puertos están abiertos → no permitido.

# Rocky Linux
sudo systemctl status firewalld # Verificar si el servicio está activo, Active: active (running) OK
sudo firewall-cmd --list-all    # Verificar reglas activas
