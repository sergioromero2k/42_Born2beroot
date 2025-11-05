# Durante la defensa, deberás crear un usuario y asignárselo a un grupo.

# Forma 1
sudo adduser testuser               # Crear usuario, te pedirá una contraseña y algunos datos.
sudo adduser testuser sudo user42   # Añadirlo a un grupo existente.

# Forma 2 — Usando useradd (forma “manual” o más clásica)
sudo useradd -m -s /bin/bash testuser
sudo passwd testuser                # Asignas la contraseña
sudo usermod -aG user42 testuser    # Agregas el usuario al grupo
# -m crea el directorio /home/testuser
# -s especifica la shell predeterminada (bash)
# -a  “append” (añadir sin borrar los grupos anteriores)
# -G  “Añadir el usuario a los grupos secundarios”

# Forma 3 — Editar manualmente el archivo /etc/group
sudo nano /etc/group
# user42:x:1002:testuser
