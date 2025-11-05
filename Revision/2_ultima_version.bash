# Última Versión

# Debian
cat /etc/os-release                 # Verifica la versión del sistema operativo, si pone “bookworm” -> estás usando Debian stable 
                                    # Si en cambio ves “testing” o “sid” -> No es válido.
cat /etc/debian_version             # Verifica el nombre en el archivo debian_version, debe mostrar un numero fijo EJM: 12.6
                                    # Mo algo como “testing” o “sid”.
sudo cat /etc/apt/sources.list      # Verifica los repositorios en sources.list, las líneas deben apuntar a “bookworm” o “stable”, no a “testing” ni “unstable”.

# Rocky Linux
cat /etc/redhat-release             # Si ves algo como “beta”, “development”, o “testing”  no sirve.
dnf repolist                        # Verifica los repositorios, Debe mostrar repos oficiales, no debe haber nada como testing o unstable.

# Defenderlo en el examen
# Confirmarle que usas una versión estable.
cat /etc/os-release
cat /etc/apt/sources.list

cat /etc/redhat-release
dnf repolist
