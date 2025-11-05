# Entorno gráfico

dpkg -l | grep -E "xorg|xserver|lightdm|gdm|sddm|kdm|wayland"   # Comprueba si X.org o servidores gráficos están instalados.
dpkg -l | grep -E "gnome|kde|plasma|xfce|lxde|mate"             # Comprueba si hay paquetes gráficos o entornos de escritorio.
ps aux | grep -E "X|wayland|gdm|lightdm|sddm"                   # Comprueba si tienes algún servidor gráfico activo.
systemctl get-default                                           # Tu sistema debe arrancar en modo multiusuario, no en modo gráfico. Salida: multi-user.target
                                                                # Si dice graphical.target, entonces está en modo gráfico.

# Para defenderte
# Durante la defensa del proyecto, el evaluador puede pedirte demostrar esto.
systemctl get-default
dpkg -l | grep xorg
