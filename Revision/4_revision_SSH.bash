# Verificar SSH

# Debian
sudo systemctl status ssh                       # Verifica que SSH está activo y habilitado al inicio
sudo cat /etc/ssh/sshd_config | grep -i port    # Salida: Port 4242
sudo ss -tunlp | grep ssh                       # Comprueba que SSH está escuchando en el puerto 4242
sudo grep -i "PermitRootLogin" /etc/ssh/sshd_config # Verificar que el root no puede conectarse por SSH Salida: PermitRootLogin no

ssh youruser@localhost -p 4242                  # Prueba de conexión
ssh root@localhost -p 4242                      # Prueba de conexión con root

# Rocky Linux
/etc/ssh/sshd_config                            # Depende de la versión es una o otra
/etc/ssh/sshd_config.d/50-redhat.conf
sudo ss -tunlp | grep sshd                      # Comprueba el puerto
ssh tuusuario@localhost -p 4242                 # Permission denied
ssh root@localhost -p 4242                      # Desde tu usuario normal
