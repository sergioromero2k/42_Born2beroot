# Creacion nuevo usuario

sudo adduser nuevo_usuario          # Crear un nuevo usuario
getent passwd nuevo_usuario         # Verificar que el usuario
                                    # Por defecto, cualquier usuario puede usar SSH, si no está bloqueado.

ssh nuevo_usuario@localhost -p 4242 # Probar la conexión
